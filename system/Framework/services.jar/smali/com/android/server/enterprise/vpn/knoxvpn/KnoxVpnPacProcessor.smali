.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
.super Ljava/lang/Object;
.source "KnoxVpnPacProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;
    }
.end annotation


# static fields
.field protected static final COMMAND_HANDLE_GETPORT:I = 0x2

.field protected static final COMMAND_HANDLE_RESTART_SERVER:I = 0x5

.field protected static final COMMAND_HANDLE_SCREENLOCK:I = 0x1

.field protected static final COMMAND_HANDLE_START_SERVER:I = 0x3

.field protected static final COMMAND_HANDLE_STOP_SERVER:I = 0x4

.field private static final DBG:Z

.field private static final DOWNLOAD_STATUS_FAILURE:I = 0x1

.field private static final DOWNLOAD_STATUS_RETRY:I = 0x2

.field private static final DOWNLOAD_STATUS_SUCCESS:I = 0x0

.field private static final FINAL_RETRY_ATTEMPT:I = 0xa

.field private static final INITIAL_RETRY_ATTEMPT:I = 0x0

.field private static final INVALID_FD:I = -0x1

.field private static final INVALID_PORT:I = -0x1

.field private static final PAC_IDENTIFIER:Ljava/lang/String; = "function"

.field private static final PAC_PACKAGE:Ljava/lang/String; = "com.knox.vpn.proxyhandler"

.field private static final PAC_SERVICE:Ljava/lang/String; = "com.knox.vpn.proxyhandler.PacService"

.field private static final TAG:Ljava/lang/String; = "KnoxVpnPacProcessor"

.field private static mContext:Landroid/content/Context;

.field private static mDownloadStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mDownloadUrlThread:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;",
            ">;"
        }
    .end annotation
.end field

.field private static mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

.field private static mProxyServiceList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static mRetryAttempt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mproxyConnectionList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

.field private mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field private mKnoxVpnProxyClientStatus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    .line 82
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mRetryAttempt:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadUrlThread:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyServiceList:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mproxyConnectionList:Ljava/util/HashMap;

    .line 90
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnProxyClientStatus:Ljava/util/List;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 92
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 93
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnProxyClientStatus:Ljava/util/List;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 92
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 93
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 106
    sput-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 69
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnProxyClientStatus:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .registers 1

    .line 69
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->startProxyServerForKnoxProfile(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;

    .line 69
    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->downloadPacUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .registers 1

    .line 69
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .registers 1

    .line 69
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 69
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 69
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->sendPacServiceStatus(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .param p1, "x1"    # I

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->removePacInterface(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .param p1, "x1"    # I

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->hasProxyService(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;ILjava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->setProxyService(ILjava/lang/Object;)V

    return-void
.end method

.method private checkIfRetryNeeded(Ljava/lang/String;)V
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;

    .line 843
    const-string v0, "KnoxVpnPacProcessor"

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 844
    .local v1, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v1, :cond_ce

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageCount()I

    move-result v2

    if-lez v2, :cond_ce

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_ce

    .line 845
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 846
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0xa

    if-ge v2, v4, :cond_82

    .line 847
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloading the pac url failed, going to retry for the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "attempt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_73} :catch_f5

    .line 850
    :try_start_73
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7b
    .catch Ljava/lang/InterruptedException; {:try_start_73 .. :try_end_7b} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_7b} :catch_f5

    goto :goto_7d

    .line 851
    :catch_7c
    move-exception v2

    :goto_7d
    nop

    .line 852
    :try_start_7e
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->startRetryAttempt(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)V

    goto :goto_f4

    .line 853
    :cond_82
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_f4

    .line 854
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloading the pac url failed even after the final retry attempt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->removeDownloadThreadDetails(Ljava/lang/String;)V

    goto :goto_f4

    .line 858
    :cond_aa
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloading the pac url failed for the first time, start the retry process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->startRetryAttempt(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)V

    goto :goto_f4

    .line 863
    :cond_ce
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vpn profile is in unknown state, resetting the retry-Status to default value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 865
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_f4} :catch_f5

    .line 870
    .end local v1    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_f4
    :goto_f4
    goto :goto_10a

    .line 868
    :catch_f5
    move-exception v1

    .line 869
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured while retry attempt to download pac file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_10a
    return-void
.end method

.method private closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    .registers 7
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "in"    # Ljava/io/BufferedReader;
    .param p3, "out"    # Ljava/io/PrintStream;

    .line 827
    if-eqz p1, :cond_8

    .line 828
    :try_start_2
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    goto :goto_8

    .line 836
    :catch_6
    move-exception v0

    goto :goto_13

    .line 830
    :cond_8
    :goto_8
    if-eqz p3, :cond_d

    .line 831
    invoke-virtual {p3}, Ljava/io/PrintStream;->close()V

    .line 833
    :cond_d
    if-eqz p2, :cond_1b

    .line 834
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_6

    goto :goto_1b

    .line 837
    .local v0, "e":Ljava/io/IOException;
    :goto_13
    const-string v1, "KnoxVpnPacProcessor"

    const-string v2, "IOException occured while trying to close the socket"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 838
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1b
    :goto_1b
    nop

    .line 839
    :goto_1c
    return-void
.end method

.method private downloadPacUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 29
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "interfaceName"    # Ljava/lang/String;

    .line 704
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    monitor-enter p1

    .line 705
    :try_start_9
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPacUrlDownloadStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_2cb

    return-void

    .line 706
    :cond_11
    const/4 v11, 0x0

    .line 707
    .local v11, "out":Ljava/io/PrintStream;
    const/4 v12, 0x0

    .line 708
    .local v12, "in":Ljava/io/BufferedReader;
    const/4 v13, 0x0

    .line 709
    .local v13, "socket":Ljava/net/Socket;
    const/4 v14, 0x0

    .line 712
    .local v14, "pacBuilder":Ljava/lang/StringBuilder;
    const/16 v16, 0x2

    :try_start_17
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1
    :try_end_1f
    .catch Ljava/net/ConnectException; {:try_start_17 .. :try_end_1f} :catch_2a5
    .catch Ljava/net/SocketException; {:try_start_17 .. :try_end_1f} :catch_286
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_17 .. :try_end_1f} :catch_26d
    .catch Ljava/net/UnknownHostException; {:try_start_17 .. :try_end_1f} :catch_22d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1f} :catch_20f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_1f} :catch_1f6
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1f} :catch_1dd
    .catchall {:try_start_17 .. :try_end_1f} :catchall_1d9

    move-object/from16 v17, v1

    .line 713
    .local v17, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v17, :cond_28

    .line 820
    :try_start_23
    invoke-direct {v7, v13, v12, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_2cb

    .line 713
    return-void

    .line 714
    :cond_28
    :try_start_28
    invoke-direct {v7, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getMarkForInterface(Ljava/lang/String;)I

    move-result v1

    move v6, v1

    .line 715
    .local v6, "isKnoxNetId":I
    if-eqz v10, :cond_1d2

    const/4 v1, -0x1

    if-eq v6, v1, :cond_1d2

    .line 716
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->DBG:Z

    if-eqz v1, :cond_4c

    const-string v1, "KnoxVpnPacProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The host name to resolve is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_4c
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVpnType()I

    move-result v2

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v18, v6

    .end local v6    # "isKnoxNetId":I
    .local v18, "isKnoxNetId":I
    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getValidEndPointAddress(ILjava/lang/String;ILjava/lang/String;I)Ljava/net/Socket;

    move-result-object v1

    move-object v13, v1

    .line 718
    if-eqz v13, :cond_1cc

    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v1

    .line 720
    invoke-virtual {v13}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 721
    .local v1, "readFromServer":Ljava/io/InputStream;
    invoke-virtual {v13}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 722
    .local v2, "writeToServer":Ljava/io/OutputStream;
    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    move-object v11, v3

    .line 723
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v12, v3

    .line 725
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " HTTP/1.1\r"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 726
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Host: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 727
    const-string v3, "Connection: close\r"

    invoke-virtual {v11, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 728
    const-string v3, "\r"

    invoke-virtual {v11, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v11}, Ljava/io/PrintStream;->flush()V

    .line 730
    const/4 v3, 0x0

    .line 731
    .local v3, "startReading":Z
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 732
    .local v5, "line":Ljava/lang/String;
    :goto_c6
    if-eqz v5, :cond_10d

    .line 733
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d5

    .line 734
    const/4 v3, 0x1

    .line 735
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 736
    goto :goto_c6

    .line 738
    :cond_d5
    if-eqz v3, :cond_103

    .line 739
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->DBG:Z

    if-eqz v6, :cond_f4

    const-string v6, "KnoxVpnPacProcessor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v1

    .end local v1    # "readFromServer":Ljava/io/InputStream;
    .local v19, "readFromServer":Ljava/io/InputStream;
    const-string v1, "The pac line printed is "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f6

    .end local v19    # "readFromServer":Ljava/io/InputStream;
    .restart local v1    # "readFromServer":Ljava/io/InputStream;
    :cond_f4
    move-object/from16 v19, v1

    .line 740
    .end local v1    # "readFromServer":Ljava/io/InputStream;
    .restart local v19    # "readFromServer":Ljava/io/InputStream;
    :goto_f6
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    const-string v1, "\n"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_105

    .line 738
    .end local v19    # "readFromServer":Ljava/io/InputStream;
    .restart local v1    # "readFromServer":Ljava/io/InputStream;
    :cond_103
    move-object/from16 v19, v1

    .line 743
    .end local v1    # "readFromServer":Ljava/io/InputStream;
    .restart local v19    # "readFromServer":Ljava/io/InputStream;
    :goto_105
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    move-object/from16 v1, v19

    goto :goto_c6

    .line 746
    .end local v19    # "readFromServer":Ljava/io/InputStream;
    .restart local v1    # "readFromServer":Ljava/io/InputStream;
    :cond_10d
    move-object/from16 v19, v1

    .end local v1    # "readFromServer":Ljava/io/InputStream;
    .restart local v19    # "readFromServer":Ljava/io/InputStream;
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 747
    .local v1, "pacContent":Ljava/lang/String;
    if-eqz v1, :cond_1b9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1b9

    .line 748
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_11f
    .catch Ljava/net/ConnectException; {:try_start_28 .. :try_end_11f} :catch_2a5
    .catch Ljava/net/SocketException; {:try_start_28 .. :try_end_11f} :catch_286
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_28 .. :try_end_11f} :catch_26d
    .catch Ljava/net/UnknownHostException; {:try_start_28 .. :try_end_11f} :catch_22d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_11f} :catch_20f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_11f} :catch_1f6
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_11f} :catch_1dd
    .catchall {:try_start_28 .. :try_end_11f} :catchall_1d9

    .line 749
    .local v6, "pacContentLength":I
    const/4 v15, 0x0

    .line 751
    .local v15, "savePacScript":Z
    move-object/from16 v20, v2

    .end local v2    # "writeToServer":Ljava/io/OutputStream;
    .local v20, "writeToServer":Ljava/io/OutputStream;
    :try_start_122
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v7, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object v2

    invoke-interface {v2, v8, v1}, Lcom/android/net/IProxyService;->setPacFileForKnoxProfile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_12e
    .catch Ljava/lang/NullPointerException; {:try_start_122 .. :try_end_12e} :catch_132
    .catch Ljava/net/ConnectException; {:try_start_122 .. :try_end_12e} :catch_2a5
    .catch Ljava/net/SocketException; {:try_start_122 .. :try_end_12e} :catch_286
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_122 .. :try_end_12e} :catch_26d
    .catch Ljava/net/UnknownHostException; {:try_start_122 .. :try_end_12e} :catch_22d
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_12e} :catch_20f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_122 .. :try_end_12e} :catch_1f6
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_12e} :catch_1dd
    .catchall {:try_start_122 .. :try_end_12e} :catchall_1d9

    move v15, v2

    .line 757
    move-object/from16 v21, v1

    goto :goto_150

    .line 752
    :catch_132
    move-exception v0

    move-object v2, v0

    .line 753
    .local v2, "e":Ljava/lang/NullPointerException;
    move-object/from16 v21, v1

    .end local v1    # "pacContent":Ljava/lang/String;
    .local v21, "pacContent":Ljava/lang/String;
    :try_start_136
    const-string v1, "KnoxVpnPacProcessor"

    move-object/from16 v22, v2

    .end local v2    # "e":Ljava/lang/NullPointerException;
    .local v22, "e":Ljava/lang/NullPointerException;
    const-string v2, "Exception occured due to the pac service not intialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-direct {v7, v13, v12, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 755
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V

    .line 758
    .end local v22    # "e":Ljava/lang/NullPointerException;
    :goto_150
    if-eqz v15, :cond_1a5

    .line 759
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_176

    .line 761
    const-string v1, "KnoxVpnPacProcessor"

    const-string v2, "The pac file has been downloaded successfully,cancelling further retry attempts"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    :cond_176
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->removeDownloadThreadDetails(Ljava/lang/String;)V

    .line 765
    if-eqz v17, :cond_19e

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19e

    .line 766
    invoke-virtual {v7, v8, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->setMiscValueForPacProfile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 767
    .local v1, "saveMiscValue":Z
    const-string v2, "KnoxVpnPacProcessor"

    move/from16 v22, v3

    .end local v3    # "startReading":Z
    .local v22, "startReading":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The Misc value for the pac file has been set successfully "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a0

    .line 765
    .end local v1    # "saveMiscValue":Z
    .end local v22    # "startReading":Z
    .restart local v3    # "startReading":Z
    :cond_19e
    move/from16 v22, v3

    .line 769
    .end local v3    # "startReading":Z
    .restart local v22    # "startReading":Z
    :goto_1a0
    const/4 v1, 0x1

    invoke-direct {v7, v1, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->sendPacServiceStatus(ILjava/lang/String;)V

    goto :goto_1b8

    .line 771
    .end local v22    # "startReading":Z
    .restart local v3    # "startReading":Z
    :cond_1a5
    move/from16 v22, v3

    .end local v3    # "startReading":Z
    .restart local v22    # "startReading":Z
    invoke-direct {v7, v13, v12, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 772
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V

    .line 775
    .end local v6    # "pacContentLength":I
    .end local v15    # "savePacScript":Z
    :goto_1b8
    goto :goto_1d4

    .line 747
    .end local v20    # "writeToServer":Ljava/io/OutputStream;
    .end local v21    # "pacContent":Ljava/lang/String;
    .end local v22    # "startReading":Z
    .local v1, "pacContent":Ljava/lang/String;
    .local v2, "writeToServer":Ljava/io/OutputStream;
    .restart local v3    # "startReading":Z
    :cond_1b9
    move-object/from16 v21, v1

    move-object/from16 v20, v2

    move/from16 v22, v3

    .line 776
    .end local v1    # "pacContent":Ljava/lang/String;
    .end local v2    # "writeToServer":Ljava/io/OutputStream;
    .end local v3    # "startReading":Z
    .restart local v20    # "writeToServer":Ljava/io/OutputStream;
    .restart local v21    # "pacContent":Ljava/lang/String;
    .restart local v22    # "startReading":Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d4

    .line 718
    .end local v5    # "line":Ljava/lang/String;
    .end local v19    # "readFromServer":Ljava/io/InputStream;
    .end local v20    # "writeToServer":Ljava/io/OutputStream;
    .end local v21    # "pacContent":Ljava/lang/String;
    .end local v22    # "startReading":Z
    :cond_1cc
    new-instance v1, Ljava/net/ConnectException;

    invoke-direct {v1}, Ljava/net/ConnectException;-><init>()V

    .end local v11    # "out":Ljava/io/PrintStream;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .end local v13    # "socket":Ljava/net/Socket;
    .end local v14    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local p0    # "this":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .end local p1    # "profileName":Ljava/lang/String;
    .end local p2    # "hostname":Ljava/lang/String;
    .end local p3    # "path":Ljava/lang/String;
    .end local p4    # "port":I
    .end local p5    # "interfaceName":Ljava/lang/String;
    throw v1
    :try_end_1d2
    .catch Ljava/net/ConnectException; {:try_start_136 .. :try_end_1d2} :catch_2a5
    .catch Ljava/net/SocketException; {:try_start_136 .. :try_end_1d2} :catch_286
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_136 .. :try_end_1d2} :catch_26d
    .catch Ljava/net/UnknownHostException; {:try_start_136 .. :try_end_1d2} :catch_22d
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_1d2} :catch_20f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_136 .. :try_end_1d2} :catch_1f6
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_1d2} :catch_1dd
    .catchall {:try_start_136 .. :try_end_1d2} :catchall_1d9

    .line 715
    .end local v18    # "isKnoxNetId":I
    .local v6, "isKnoxNetId":I
    .restart local v11    # "out":Ljava/io/PrintStream;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "socket":Ljava/net/Socket;
    .restart local v14    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local p0    # "this":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .restart local p1    # "profileName":Ljava/lang/String;
    .restart local p2    # "hostname":Ljava/lang/String;
    .restart local p3    # "path":Ljava/lang/String;
    .restart local p4    # "port":I
    .restart local p5    # "interfaceName":Ljava/lang/String;
    :cond_1d2
    move/from16 v18, v6

    .line 820
    .end local v6    # "isKnoxNetId":I
    .end local v17    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :goto_1d4
    :try_start_1d4
    invoke-direct {v7, v13, v12, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_1d7
    .catchall {:try_start_1d4 .. :try_end_1d7} :catchall_2cb

    .line 821
    :goto_1d7
    goto/16 :goto_2c4

    .line 820
    :catchall_1d9
    move-exception v0

    move-object v1, v0

    goto/16 :goto_2c6

    .line 815
    :catch_1dd
    move-exception v0

    move-object v1, v0

    .line 816
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1df
    const-string v2, "KnoxVpnPacProcessor"

    const-string v3, "Exception occured while trying to pac url "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-direct {v7, v13, v12, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 818
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d4

    .line 811
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1f6
    move-exception v0

    move-object v1, v0

    .line 812
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "KnoxVpnPacProcessor"

    const-string v3, "cannot find the dns server to resolve the pac url"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-direct {v7, v13, v12, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 814
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d4

    .line 806
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_20f
    move-exception v0

    move-object v1, v0

    .line 807
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "KnoxVpnPacProcessor"

    const-string v3, "IOException occured while trying to download the pac url "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-direct {v7, v13, v12, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 809
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V
    :try_end_229
    .catchall {:try_start_1df .. :try_end_229} :catchall_1d9

    .line 820
    .end local v1    # "e":Ljava/io/IOException;
    :try_start_229
    invoke-direct {v7, v13, v12, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_22c
    .catchall {:try_start_229 .. :try_end_22c} :catchall_2cb

    goto :goto_1d7

    .line 793
    :catch_22d
    move-exception v0

    move-object v1, v0

    .line 794
    .local v1, "e":Ljava/net/UnknownHostException;
    :try_start_22f
    const-string v2, "KnoxVpnPacProcessor"

    const-string v3, "UnknownHostException occured while trying to download the pac url "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_236
    .catchall {:try_start_22f .. :try_end_236} :catchall_1d9

    .line 796
    const-wide/16 v2, 0x1388

    :try_start_238
    invoke-virtual {v8, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_23b
    .catch Ljava/lang/InterruptedException; {:try_start_238 .. :try_end_23b} :catch_251
    .catchall {:try_start_238 .. :try_end_23b} :catchall_1d9

    .line 802
    nop

    .line 803
    :try_start_23c
    invoke-direct {v7, v13, v12, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 804
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V
    :try_end_24d
    .catchall {:try_start_23c .. :try_end_24d} :catchall_1d9

    .line 820
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :try_start_24d
    invoke-direct {v7, v13, v12, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_250
    .catchall {:try_start_24d .. :try_end_250} :catchall_2cb

    goto :goto_1d7

    .line 797
    .restart local v1    # "e":Ljava/net/UnknownHostException;
    :catch_251
    move-exception v0

    move-object v2, v0

    .line 798
    .local v2, "e1":Ljava/lang/InterruptedException;
    :try_start_253
    const-string v3, "KnoxVpnPacProcessor"

    const-string v4, "Got Interruption while trying to resolve the domain name "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-direct {v7, v13, v12, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 800
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_268
    .catchall {:try_start_253 .. :try_end_268} :catchall_1d9

    .line 820
    :try_start_268
    invoke-direct {v7, v13, v12, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    monitor-exit p1
    :try_end_26c
    .catchall {:try_start_268 .. :try_end_26c} :catchall_2cb

    .line 801
    return-void

    .line 789
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .end local v2    # "e1":Ljava/lang/InterruptedException;
    :catch_26d
    move-exception v0

    move-object v1, v0

    .line 790
    .local v1, "e":Ljava/nio/channels/ClosedByInterruptException;
    :try_start_26f
    const-string v2, "KnoxVpnPacProcessor"

    const-string v3, "Downloading the pac url failed due to Interruption, close the existing connections"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-direct {v7, v13, v12, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 792
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1d4

    .line 784
    .end local v1    # "e":Ljava/nio/channels/ClosedByInterruptException;
    :catch_286
    move-exception v0

    move-object v1, v0

    .line 785
    .local v1, "e":Ljava/net/SocketException;
    const-string v2, "KnoxVpnPacProcessor"

    const-string v3, "SocketException occured while trying to download the pac url"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-direct {v7, v13, v12, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 787
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V
    :try_end_2a0
    .catchall {:try_start_26f .. :try_end_2a0} :catchall_1d9

    .line 820
    .end local v1    # "e":Ljava/net/SocketException;
    :try_start_2a0
    invoke-direct {v7, v13, v12, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_2a3
    .catchall {:try_start_2a0 .. :try_end_2a3} :catchall_2cb

    goto/16 :goto_1d7

    .line 779
    :catch_2a5
    move-exception v0

    move-object v1, v0

    .line 780
    .local v1, "e":Ljava/net/ConnectException;
    :try_start_2a7
    const-string v2, "KnoxVpnPacProcessor"

    const-string v3, "ConnectException occured while trying to download the pac url"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    invoke-direct {v7, v13, v12, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 782
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V
    :try_end_2bf
    .catchall {:try_start_2a7 .. :try_end_2bf} :catchall_1d9

    .line 820
    .end local v1    # "e":Ljava/net/ConnectException;
    :try_start_2bf
    invoke-direct {v7, v13, v12, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    goto/16 :goto_1d7

    .line 822
    .end local v11    # "out":Ljava/io/PrintStream;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .end local v13    # "socket":Ljava/net/Socket;
    .end local v14    # "pacBuilder":Ljava/lang/StringBuilder;
    :goto_2c4
    monitor-exit p1

    .line 823
    return-void

    .line 820
    .restart local v11    # "out":Ljava/io/PrintStream;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "socket":Ljava/net/Socket;
    .restart local v14    # "pacBuilder":Ljava/lang/StringBuilder;
    :goto_2c6
    invoke-direct {v7, v13, v12, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 821
    nop

    .end local p0    # "this":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .end local p1    # "profileName":Ljava/lang/String;
    .end local p2    # "hostname":Ljava/lang/String;
    .end local p3    # "path":Ljava/lang/String;
    .end local p4    # "port":I
    .end local p5    # "interfaceName":Ljava/lang/String;
    throw v1

    .line 822
    .end local v11    # "out":Ljava/io/PrintStream;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .end local v13    # "socket":Ljava/net/Socket;
    .end local v14    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local p0    # "this":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .restart local p1    # "profileName":Ljava/lang/String;
    .restart local p2    # "hostname":Ljava/lang/String;
    .restart local p3    # "path":Ljava/lang/String;
    .restart local p4    # "port":I
    .restart local p5    # "interfaceName":Ljava/lang/String;
    :catchall_2cb
    move-exception v0

    move-object v1, v0

    monitor-exit p1
    :try_end_2ce
    .catchall {:try_start_2bf .. :try_end_2ce} :catchall_2cb

    throw v1
.end method

.method private extractUrlParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "pacUrl"    # Ljava/lang/String;

    .line 577
    move-object/from16 v8, p1

    const-string v9, "KnoxVpnPacProcessor"

    const/4 v1, 0x0

    .line 578
    .local v1, "protocol":Ljava/lang/String;
    const/4 v2, -0x1

    .line 581
    .local v2, "port":I
    const/4 v10, 0x1

    :try_start_7
    new-instance v0, Ljava/net/URL;
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_9} :catch_129
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_9} :catch_113
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_9} :catch_fd
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_9} :catch_e5

    move-object/from16 v11, p3

    :try_start_b
    invoke-direct {v0, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 582
    .local v0, "urlToDownload":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 583
    .local v4, "hostname":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 584
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3
    :try_end_1a
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_1a} :catch_e1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_1a} :catch_dd
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_1a} :catch_d9
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1a} :catch_d5

    move-object v12, v3

    .line 585
    .end local v1    # "protocol":Ljava/lang/String;
    .local v12, "protocol":Ljava/lang/String;
    :try_start_1b
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v1
    :try_end_1f
    .catch Ljava/net/MalformedURLException; {:try_start_1b .. :try_end_1f} :catch_d0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1f} :catch_cb
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_1f} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1f} :catch_c1

    move v2, v1

    .line 586
    const/4 v1, -0x1

    if-ne v2, v1, :cond_37

    .line 587
    move-object/from16 v13, p0

    :try_start_25
    invoke-direct {v13, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPortFromProtocol(Ljava/lang/String;)I

    move-result v1
    :try_end_29
    .catch Ljava/net/MalformedURLException; {:try_start_25 .. :try_end_29} :catch_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_29} :catch_31
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_29} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_29} :catch_2b

    move v14, v1

    .end local v2    # "port":I
    .local v1, "port":I
    goto :goto_3a

    .line 610
    .end local v0    # "urlToDownload":Ljava/net/URL;
    .end local v1    # "port":I
    .end local v4    # "hostname":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    .restart local v2    # "port":I
    :catch_2b
    move-exception v0

    goto/16 :goto_c4

    .line 607
    :catch_2e
    move-exception v0

    goto/16 :goto_c9

    .line 604
    :catch_31
    move-exception v0

    goto/16 :goto_ce

    .line 601
    :catch_34
    move-exception v0

    goto/16 :goto_d3

    .line 586
    .restart local v0    # "urlToDownload":Ljava/net/URL;
    .restart local v4    # "hostname":Ljava/lang/String;
    .restart local v5    # "path":Ljava/lang/String;
    :cond_37
    move-object/from16 v13, p0

    move v14, v2

    .line 590
    .end local v2    # "port":I
    .local v14, "port":I
    :goto_3a
    :try_start_3a
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_93

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The current status of the download thread of the profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 593
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->interrupt()V

    .line 595
    :cond_8c
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    :cond_93
    new-instance v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v6, v14

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object v1, v15

    .line 598
    .local v1, "downloadUrlThread":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->start()V

    .line 599
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ab
    .catch Ljava/net/MalformedURLException; {:try_start_3a .. :try_end_ab} :catch_bc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_ab} :catch_b7
    .catch Ljava/lang/NullPointerException; {:try_start_3a .. :try_end_ab} :catch_b2
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_ab} :catch_ae

    .line 613
    nop

    .end local v0    # "urlToDownload":Ljava/net/URL;
    .end local v1    # "downloadUrlThread":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;
    goto/16 :goto_140

    .line 610
    .end local v4    # "hostname":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    :catch_ae
    move-exception v0

    move-object v1, v12

    move v2, v14

    goto :goto_ea

    .line 607
    :catch_b2
    move-exception v0

    move-object v1, v12

    move v2, v14

    goto/16 :goto_102

    .line 604
    :catch_b7
    move-exception v0

    move-object v1, v12

    move v2, v14

    goto/16 :goto_118

    .line 601
    :catch_bc
    move-exception v0

    move-object v1, v12

    move v2, v14

    goto/16 :goto_12e

    .line 610
    .end local v14    # "port":I
    .restart local v2    # "port":I
    :catch_c1
    move-exception v0

    move-object/from16 v13, p0

    :goto_c4
    move-object v1, v12

    goto :goto_ea

    .line 607
    :catch_c6
    move-exception v0

    move-object/from16 v13, p0

    :goto_c9
    move-object v1, v12

    goto :goto_102

    .line 604
    :catch_cb
    move-exception v0

    move-object/from16 v13, p0

    :goto_ce
    move-object v1, v12

    goto :goto_118

    .line 601
    :catch_d0
    move-exception v0

    move-object/from16 v13, p0

    :goto_d3
    move-object v1, v12

    goto :goto_12e

    .line 610
    .end local v12    # "protocol":Ljava/lang/String;
    .local v1, "protocol":Ljava/lang/String;
    :catch_d5
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_ea

    .line 607
    :catch_d9
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_102

    .line 604
    :catch_dd
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_118

    .line 601
    :catch_e1
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_12e

    .line 610
    :catch_e5
    move-exception v0

    move-object/from16 v13, p0

    move-object/from16 v11, p3

    .line 611
    .local v0, "e":Ljava/lang/Exception;
    :goto_ea
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string v3, "error occured while trying to download the pac file after the vpn connection is established"

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v12, v1

    move v14, v2

    goto :goto_140

    .line 607
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_fd
    move-exception v0

    move-object/from16 v13, p0

    move-object/from16 v11, p3

    .line 608
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_102
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const-string v3, "error occured while trying to download the pac file due to some values being not intialized successfully"

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_13e

    .line 604
    :catch_113
    move-exception v0

    move-object/from16 v13, p0

    move-object/from16 v11, p3

    .line 605
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_118
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-string v3, "error occured while trying to download the pac file due to unknown port number"

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_13e

    .line 601
    :catch_129
    move-exception v0

    move-object/from16 v13, p0

    move-object/from16 v11, p3

    .line 602
    .local v0, "e":Ljava/net/MalformedURLException;
    :goto_12e
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-string v3, "error occured while trying to download the pac file due to unknow url format, remove and create the profile again"

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :goto_13e
    move-object v12, v1

    move v14, v2

    .line 614
    .end local v1    # "protocol":Ljava/lang/String;
    .end local v2    # "port":I
    .restart local v12    # "protocol":Ljava/lang/String;
    .restart local v14    # "port":I
    :goto_140
    return-void
.end method

.method private getConfiguredUser(Ljava/lang/String;)I
    .registers 4
    .param p1, "profileName"    # Ljava/lang/String;

    .line 936
    const/4 v0, 0x0

    .line 937
    .local v0, "currentUserId":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 938
    .local v1, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v1, :cond_f

    .line 939
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v0

    .line 941
    :cond_f
    return v0
.end method

.method private static declared-synchronized getCurrentRetryStatus()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    monitor-enter v0

    .line 278
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mRetryAttempt:Ljava/util/HashMap;

    if-nez v1, :cond_e

    .line 279
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mRetryAttempt:Ljava/util/HashMap;

    .line 281
    :cond_e
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mRetryAttempt:Ljava/util/HashMap;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 277
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized getDownloadStatus()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    monitor-enter v0

    .line 271
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    if-nez v1, :cond_e

    .line 272
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    .line 274
    :cond_e
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 270
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized getDownloadThread()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    monitor-enter v0

    .line 285
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadUrlThread:Ljava/util/HashMap;

    if-nez v1, :cond_e

    .line 286
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadUrlThread:Ljava/util/HashMap;

    .line 288
    :cond_e
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadUrlThread:Ljava/util/HashMap;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 284
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    monitor-enter v0

    .line 264
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    if-nez v1, :cond_e

    .line 265
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 267
    :cond_e
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 263
    .end local p0    # "context":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    .registers 2

    .line 299
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    if-nez v0, :cond_a

    .line 300
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 302
    :cond_a
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    return-object v0
.end method

.method private getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    .registers 2

    .line 306
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-nez v0, :cond_c

    .line 307
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 309
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    return-object v0
.end method

.method private getMarkForInterface(Ljava/lang/String;)I
    .registers 4
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 923
    const/4 v0, -0x1

    .line 924
    .local v0, "knoxNetworkMark":I
    if-nez p1, :cond_4

    .line 925
    return v0

    .line 927
    :cond_4
    const-string/jumbo v1, "ipsec"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 928
    const/16 v0, 0x64

    goto :goto_24

    .line 929
    :cond_10
    const-string/jumbo v1, "tun"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 930
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x65

    .line 932
    :cond_24
    :goto_24
    return v0
.end method

.method private getPacUrlDownloadStatus(Ljava/lang/String;)Z
    .registers 6
    .param p1, "profileName"    # Ljava/lang/String;

    .line 556
    const-string v0, "KnoxVpnPacProcessor"

    const/4 v1, 0x0

    .line 558
    .local v1, "isScriptDownloaded":Z
    :try_start_3
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    .line 559
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 560
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_1a} :catch_26
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a} :catch_1f

    if-eqz v2, :cond_1d

    goto :goto_1e

    .line 562
    :cond_1d
    const/4 v1, 0x1

    .line 571
    :cond_1e
    :goto_1e
    goto :goto_2d

    .line 569
    :catch_1f
    move-exception v2

    .line 570
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, " error occured while trying to get download status pac file"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 567
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_26
    move-exception v2

    .line 568
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v3, "error occured while trying to get download status pac file due to some values being not intialized successfully"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/NullPointerException;
    goto :goto_1e

    .line 572
    :goto_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check to see if the pac url has been downloaded successfully "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return v1
.end method

.method private getPortFromProtocol(Ljava/lang/String;)I
    .registers 7
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, "port":I
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x18d62

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2d

    const v2, 0x310888    # 4.503E-39f

    if-eq v1, v2, :cond_22

    const v2, 0x5f008eb

    if-eq v1, v2, :cond_17

    :cond_16
    goto :goto_38

    :cond_17
    const-string/jumbo v1, "https"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v3

    goto :goto_39

    :cond_22
    const-string/jumbo v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x0

    goto :goto_39

    :cond_2d
    const-string/jumbo v1, "ftp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v4

    goto :goto_39

    :goto_38
    const/4 v1, -0x1

    :goto_39
    if-eqz v1, :cond_4b

    if-eq v1, v4, :cond_48

    if-ne v1, v3, :cond_42

    .line 626
    const/16 v0, 0x1bb

    .line 627
    goto :goto_4e

    .line 629
    :cond_42
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 623
    :cond_48
    const/16 v0, 0x15

    .line 624
    goto :goto_4e

    .line 620
    :cond_4b
    const/16 v0, 0x50

    .line 621
    nop

    .line 631
    :goto_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The pac file is going to be downloaded from the remote port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KnoxVpnPacProcessor"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    return v0
.end method

.method private getProxyService(I)Lcom/android/net/IProxyService;
    .registers 5
    .param p1, "userId"    # I

    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "proxyService":Lcom/android/net/IProxyService;
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyServiceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 332
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyServiceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/net/IProxyService;

    .line 334
    :cond_1b
    return-object v0
.end method

.method private getValidEndPointAddress(ILjava/lang/String;ILjava/lang/String;I)Ljava/net/Socket;
    .registers 23
    .param p1, "vpnType"    # I
    .param p2, "hostName"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "interfaceName"    # Ljava/lang/String;
    .param p5, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 637
    move/from16 v1, p5

    const-string v2, "KnoxVpnPacProcessor"

    const/4 v3, 0x0

    .line 638
    .local v3, "socket":Ljava/net/Socket;
    const/4 v4, 0x0

    .line 640
    .local v4, "resolvedHostAddress":Ljava/lang/String;
    const/4 v5, 0x0

    .line 641
    .local v5, "socketAddresses":[Ljava/net/InetAddress;
    const/4 v6, 0x0

    .line 644
    .local v6, "isNumericAddress":Ljava/net/InetAddress;
    :try_start_8
    invoke-static/range {p2 .. p2}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_c} :catch_e

    move-object v6, v0

    .line 647
    goto :goto_16

    .line 645
    :catch_e
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 646
    .local v0, "e1":Ljava/lang/IllegalArgumentException;
    const-string v7, "The pac url being entered is not of numeric form and need to do a dns look up"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    .end local v0    # "e1":Ljava/lang/IllegalArgumentException;
    :goto_16
    const/4 v7, 0x0

    if-nez v6, :cond_2f

    .line 651
    move-object/from16 v8, p2

    :try_start_1b
    invoke-static {v8, v1}, Ljava/net/InetAddress;->getAllByNameOnNet(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1f} :catch_21

    .line 655
    .end local v5    # "socketAddresses":[Ljava/net/InetAddress;
    .local v0, "socketAddresses":[Ljava/net/InetAddress;
    move-object v5, v0

    goto :goto_37

    .line 652
    .end local v0    # "socketAddresses":[Ljava/net/InetAddress;
    .restart local v5    # "socketAddresses":[Ljava/net/InetAddress;
    :catch_21
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 653
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "UnknownHostException occured while trying to query the ip address for the pac url domain name"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    throw v2

    .line 657
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2f
    move-object/from16 v8, p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/InetAddress;

    .line 658
    .end local v5    # "socketAddresses":[Ljava/net/InetAddress;
    .local v0, "socketAddresses":[Ljava/net/InetAddress;
    aput-object v6, v0, v7

    move-object v5, v0

    .line 660
    .end local v0    # "socketAddresses":[Ljava/net/InetAddress;
    .restart local v5    # "socketAddresses":[Ljava/net/InetAddress;
    :goto_37
    if-eqz v5, :cond_12f

    .line 661
    array-length v9, v5

    move v10, v7

    :goto_3b
    if-ge v10, v9, :cond_126

    aget-object v11, v5, v10

    .line 663
    .local v11, "add":Ljava/net/InetAddress;
    :try_start_3f
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    move-object v3, v0

    .line 664
    instance-of v0, v11, Ljava/net/Inet4Address;

    if-eqz v0, :cond_76

    .line 665
    const-string v0, "The pac file is going to be downloaded from an interface having ipv4 address"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 667
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->DBG:Z

    if-eqz v0, :cond_6b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The resolved host address is a ipv4 address "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_6b
    new-instance v0, Ljava/net/InetSocketAddress;

    sget-object v12, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v0, v12, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v3, v0}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    goto :goto_a6

    .line 669
    :cond_76
    instance-of v0, v11, Ljava/net/Inet6Address;

    if-eqz v0, :cond_a6

    .line 670
    const-string v0, "The pac file is going to be downloaded from an interface having ipv6 address"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 672
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->DBG:Z

    if-eqz v0, :cond_9c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The resolved host address is a ipv6 address "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_9c
    new-instance v0, Ljava/net/InetSocketAddress;

    sget-object v12, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v0, v12, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v3, v0}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 675
    :cond_a6
    :goto_a6
    invoke-virtual {v3}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 676
    .local v0, "socketFd":Ljava/io/FileDescriptor;
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v12
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_ae} :catch_ee

    const/4 v13, -0x1

    if-eq v12, v13, :cond_c7

    .line 677
    :try_start_b1
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v12
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b5} :catch_bf

    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p4

    :try_start_bb
    invoke-virtual {v13, v14, v1, v12, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->bindSocketToInterfaceWrapper(IIILjava/lang/String;)V

    goto :goto_cd

    .line 685
    .end local v0    # "socketFd":Ljava/io/FileDescriptor;
    :catch_bf
    move-exception v0

    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p4

    goto :goto_eb

    .line 676
    .restart local v0    # "socketFd":Ljava/io/FileDescriptor;
    :cond_c7
    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p4

    .line 680
    :goto_cd
    const/16 v12, 0x2710

    invoke-virtual {v3, v12}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 682
    if-eqz v4, :cond_e5

    .line 683
    new-instance v7, Ljava/net/InetSocketAddress;
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_d6} :catch_ea

    move/from16 v12, p3

    :try_start_d8
    invoke-direct {v7, v4, v12}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object/from16 v16, v0

    const/16 v0, 0x2710

    .end local v0    # "socketFd":Ljava/io/FileDescriptor;
    .local v16, "socketFd":Ljava/io/FileDescriptor;
    invoke-virtual {v3, v7, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_e2} :catch_e3

    goto :goto_e9

    .line 685
    .end local v16    # "socketFd":Ljava/io/FileDescriptor;
    :catch_e3
    move-exception v0

    goto :goto_f7

    .line 682
    .restart local v0    # "socketFd":Ljava/io/FileDescriptor;
    :cond_e5
    move/from16 v12, p3

    move-object/from16 v16, v0

    .line 694
    .end local v0    # "socketFd":Ljava/io/FileDescriptor;
    :goto_e9
    goto :goto_116

    .line 685
    :catch_ea
    move-exception v0

    :goto_eb
    move/from16 v12, p3

    goto :goto_f7

    :catch_ee
    move-exception v0

    move-object/from16 v13, p0

    move/from16 v14, p1

    move/from16 v12, p3

    move-object/from16 v15, p4

    :goto_f7
    move-object v7, v0

    .line 686
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IO Exception occured while trying to connect to the pac url remote address "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    if-eqz v3, :cond_116

    .line 689
    :try_start_10e
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_111} :catch_113

    .line 690
    const/4 v3, 0x0

    .line 691
    :goto_112
    goto :goto_115

    :catch_113
    move-exception v0

    goto :goto_112

    .line 692
    :goto_115
    goto :goto_11f

    .line 695
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_116
    :goto_116
    if-eqz v3, :cond_11f

    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 696
    goto :goto_137

    .line 661
    .end local v11    # "add":Ljava/net/InetAddress;
    :cond_11f
    :goto_11f
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p5

    const/4 v7, 0x0

    goto/16 :goto_3b

    :cond_126
    move-object/from16 v13, p0

    move/from16 v14, p1

    move/from16 v12, p3

    move-object/from16 v15, p4

    goto :goto_137

    .line 660
    :cond_12f
    move-object/from16 v13, p0

    move/from16 v14, p1

    move/from16 v12, p3

    move-object/from16 v15, p4

    .line 700
    :goto_137
    return-object v3
.end method

.method private declared-synchronized getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    .registers 2

    monitor-enter p0

    .line 292
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    if-nez v0, :cond_b

    .line 293
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 295
    .end local p0    # "this":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    :cond_b
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 291
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hasProxyService(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hasProxyService is being called for the userId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxVpnPacProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyServiceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 345
    const/4 v0, 0x1

    return v0

    .line 347
    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method private removeDownloadThreadDetails(Ljava/lang/String;)V
    .registers 3
    .param p1, "profileName"    # Ljava/lang/String;

    .line 874
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 875
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    :cond_11
    return-void
.end method

.method private removePacInterface(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removePacInterface is being called for the userId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxVpnPacProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyServiceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    .line 354
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyServiceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_2d
    return-void
.end method

.method private sendPacServiceStatus(ILjava/lang/String;)V
    .registers 8
    .param p1, "status"    # I
    .param p2, "profileName"    # Ljava/lang/String;

    .line 313
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 315
    .local v0, "token":J
    :try_start_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 316
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.knox.intent.action.INTERFACE_STATUS_INTERNAL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string v3, "com.samsung.android.knox.intent.extra.ACTION_INTERNAL"

    const-string/jumbo v4, "pac_info"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v3, "com.samsung.android.knox.intent.extra.STATE_INTERNAL"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    const-string v3, "com.samsung.android.knox.intent.extra.PROFILE_NAME_INTERNAL"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.android.knox.permission.KNOX_VPN_INTERNAL"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_27} :catch_2d
    .catchall {:try_start_4 .. :try_end_27} :catchall_28

    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_2e

    .line 325
    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    throw v2

    .line 321
    :catch_2d
    move-exception v2

    .line 325
    :goto_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    nop

    .line 327
    return-void
.end method

.method private setProxyService(ILjava/lang/Object;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "proxyService"    # Ljava/lang/Object;

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setProxyService is being called for the userId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxVpnPacProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyServiceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    return-void
.end method

.method private startProxyServerForKnoxProfile(Ljava/lang/String;)I
    .registers 12
    .param p1, "profileName"    # Ljava/lang/String;

    .line 448
    const/4 v0, -0x1

    .line 449
    .local v0, "status":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 450
    .local v1, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_c

    return v0

    .line 452
    :cond_c
    :try_start_c
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProxyUsername()Ljava/lang/String;

    move-result-object v5

    .line 453
    .local v5, "username":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProxyPassword()Ljava/lang/String;

    move-result-object v6

    .line 454
    .local v6, "password":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->isProxyAuthRequired()I

    move-result v4

    .line 455
    .local v4, "authType":I
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->isproxyCredentialsPreDefined()Z

    move-result v7

    .line 456
    .local v7, "predefined":Z
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProxyServer()Ljava/lang/String;

    move-result-object v8

    .line 457
    .local v8, "staticProxyServer":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProxyPort()I

    move-result v9

    .line 458
    .local v9, "staticProxyPort":I
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object v2

    .line 459
    move-object v3, p1

    invoke-interface/range {v2 .. v9}, Lcom/android/net/IProxyService;->startProxyServerForKnoxProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)I

    move-result v2
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_31} :catch_33

    move v0, v2

    .line 462
    .end local v4    # "authType":I
    .end local v5    # "username":Ljava/lang/String;
    .end local v6    # "password":Ljava/lang/String;
    .end local v7    # "predefined":Z
    .end local v8    # "staticProxyServer":Ljava/lang/String;
    .end local v9    # "staticProxyPort":I
    goto :goto_51

    .line 460
    :catch_33
    move-exception v2

    .line 461
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occured while trying to start the proxy server for the profile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KnoxVpnPacProcessor"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_51
    return v0
.end method

.method private startRetryAttempt(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)V
    .registers 16
    .param p1, "vpnEntry"    # Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 880
    const-string v0, "KnoxVpnPacProcessor"

    const/4 v1, 0x0

    .line 882
    .local v1, "profileName":Ljava/lang/String;
    const/4 v2, 0x1

    :try_start_4
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 883
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 884
    .local v3, "interfaceName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPacurl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    .line 885
    .local v10, "pacUrl":Ljava/lang/String;
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v11, v4

    .line 886
    .local v11, "urlToDownload":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 887
    .local v6, "hostname":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 888
    .local v7, "path":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    .line 889
    .local v12, "protocol":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/net/URL;->getPort()I

    move-result v4

    .line 890
    .local v4, "port":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_37

    .line 891
    invoke-direct {p0, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPortFromProtocol(Ljava/lang/String;)I

    move-result v5

    move v4, v5

    move v13, v4

    goto :goto_38

    .line 890
    :cond_37
    move v13, v4

    .line 893
    .end local v4    # "port":I
    .local v13, "port":I
    :goto_38
    if-eqz v1, :cond_a2

    if-eqz v3, :cond_a2

    if-eqz v10, :cond_a2

    .line 894
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a2

    .line 895
    move-object v4, p0

    move-object v5, v1

    move v8, v13

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->downloadPacUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_56} :catch_90
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_56} :catch_7d
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_56} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_56} :catch_57

    goto :goto_a2

    .line 907
    .end local v3    # "interfaceName":Ljava/lang/String;
    .end local v6    # "hostname":Ljava/lang/String;
    .end local v7    # "path":Ljava/lang/String;
    .end local v10    # "pacUrl":Ljava/lang/String;
    .end local v11    # "urlToDownload":Ljava/net/URL;
    .end local v12    # "protocol":Ljava/lang/String;
    .end local v13    # "port":I
    :catch_57
    move-exception v3

    .line 908
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    const-string/jumbo v2, "retry attempt: error occured while trying to download the pac file"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    .line 904
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_6a
    move-exception v3

    .line 905
    .local v3, "e":Ljava/net/MalformedURLException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    const-string/jumbo v2, "retry attempt: error occured while trying to download the pac file due to unknow url format"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/net/MalformedURLException;
    goto :goto_a2

    .line 901
    :catch_7d
    move-exception v3

    .line 902
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    const-string/jumbo v2, "retry attempt: Invalid port value is defined when trying to download the pac url"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_a2

    .line 898
    :catch_90
    move-exception v3

    .line 899
    .local v3, "e":Ljava/lang/NullPointerException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    const-string/jumbo v2, "retry attempt: Some profile values are not intialized when trying to download the pac url"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :cond_a2
    :goto_a2
    nop

    .line 911
    :goto_a3
    return-void
.end method


# virtual methods
.method protected bindProxyService(Ljava/lang/String;I)V
    .registers 8
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "proxyServiceId"    # I

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binding to the proxy service for the user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxVpnPacProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mproxyConnectionList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbinding previous service before binding again for the user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :try_start_37
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mproxyConnectionList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_48} :catch_49

    .line 238
    goto :goto_50

    .line 236
    :catch_49
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "unbinding failed since the service is already unbinded or not existing"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_50
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mproxyConnectionList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_59
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;ILjava/lang/String;)V

    .line 243
    .local v0, "pacConnect":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 244
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.knox.vpn.proxyhandler"

    const-string v3, "com.knox.vpn.proxyhandler.PacService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    const v3, 0x40000005    # 2.0000012f

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 248
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mproxyConnectionList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    return-void
.end method

.method protected declared-synchronized bindProxyService(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 10
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "pacUrl"    # Landroid/net/Uri;

    monitor-enter p0

    .line 197
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    if-nez v0, :cond_e

    .line 198
    const-string v0, "KnoxVpnPacProcessor"

    const-string v1, "No context for binding"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_84

    .line 199
    monitor-exit p0

    return-void

    .line 201
    .end local p0    # "this":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    :cond_e
    :try_start_e
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v0

    .line 202
    .local v0, "proxyServiceId":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object v1

    if-eqz v1, :cond_7f

    .line 203
    const-string v1, "KnoxVpnPacProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already binded to proxy service for the user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_e .. :try_end_2e} :catchall_84

    .line 205
    :try_start_2e
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const/4 v2, 0x1

    if-eq p3, v1, :cond_72

    .line 206
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/net/IProxyService;->startPacSystemForKnoxProfile(Ljava/lang/String;)Z

    move-result v1

    .line 207
    .local v1, "startPacSupport":Z
    const-string v3, "KnoxVpnPacProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pac support for the profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is started since the service is connected and the result is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    if-eqz v1, :cond_68

    .line 210
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->setCurrentProxyScript(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 212
    :cond_68
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->startProxyServerForKnoxProfile(Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->setMiscValueForPacProfile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 214
    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->sendPacServiceStatus(ILjava/lang/String;)V

    .line 215
    .end local v1    # "startPacSupport":Z
    goto :goto_7b

    .line 216
    :cond_72
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->startProxyServerForKnoxProfile(Ljava/lang/String;)I

    .line 217
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->setMiscValueForPacProfile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 218
    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->sendPacServiceStatus(ILjava/lang/String;)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_7b} :catch_7c
    .catchall {:try_start_2e .. :try_end_7b} :catchall_84

    .line 223
    :goto_7b
    goto :goto_7d

    .line 221
    :catch_7c
    move-exception v1

    .line 224
    :goto_7d
    monitor-exit p0

    return-void

    .line 226
    :cond_7f
    :try_start_7f
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->bindProxyService(Ljava/lang/String;I)V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_84

    .line 227
    monitor-exit p0

    return-void

    .line 196
    .end local v0    # "proxyServiceId":I
    .end local p1    # "profileName":Ljava/lang/String;
    .end local p2    # "interfaceName":Ljava/lang/String;
    .end local p3    # "pacUrl":Landroid/net/Uri;
    :catchall_84
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected bindSocketToInterfaceWrapper(IIILjava/lang/String;)V
    .registers 9
    .param p1, "vpnType"    # I
    .param p2, "mark"    # I
    .param p3, "fd"    # I
    .param p4, "interfaceName"    # Ljava/lang/String;

    .line 915
    const-string v0, "KnoxVpnPacProcessor"

    :try_start_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->jnibindSocketToInterface(IIILjava/lang/String;)I

    move-result v1

    .line 916
    .local v1, "bindResult":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_1c

    .line 919
    nop

    .end local v1    # "bindResult":I
    goto :goto_22

    .line 917
    :catch_1c
    move-exception v1

    .line 918
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Exception occured while trying to bind the socket to the interface "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_22
    return-void
.end method

.method protected getKnoxVpnProxyClientStatus()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnProxyClientStatus:Ljava/util/List;

    return-object v0
.end method

.method protected getProxyPortForProfile(Ljava/lang/String;)I
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;

    .line 396
    const-string v0, "KnoxVpnPacProcessor"

    const/4 v1, -0x1

    .line 398
    .local v1, "portNumber":I
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/net/IProxyService;->getProxyPortForProfile(Ljava/lang/String;)I

    move-result v0
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_f} :catch_28
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_11

    move v1, v0

    .line 403
    :goto_10
    goto :goto_3e

    .line 401
    :catch_11
    move-exception v2

    .line 402
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown error occured for profile while querying for port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 399
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_28
    move-exception v2

    .line 400
    .local v2, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The knox vpn proxy service has not yet started for profile while querying for port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/NullPointerException;
    goto :goto_10

    .line 404
    :goto_3e
    return v1
.end method

.method protected getProxythreadStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;

    .line 420
    const-string v0, "KnoxVpnPacProcessor"

    const-string v1, "IntialValue"

    .line 422
    .local v1, "currentThreadStatus":Ljava/lang/String;
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/net/IProxyService;->getProxythreadStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_10} :catch_29
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_12

    move-object v1, v0

    .line 427
    :goto_11
    goto :goto_3f

    .line 425
    :catch_12
    move-exception v2

    .line 426
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown error occured for profile while querying for proxy thread Status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 423
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_29
    move-exception v2

    .line 424
    .local v2, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The knox vpn proxy service has not yet started for profile while querying for proxy thread Status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/NullPointerException;
    goto :goto_11

    .line 428
    :goto_3f
    return-object v1
.end method

.method protected handleScreenunlock()V
    .registers 6

    .line 386
    const-string v0, "KnoxVpnPacProcessor"

    :try_start_2
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyServiceList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 387
    .local v2, "userId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trying to see if authentication dialog is needed after screenlock in user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/net/IProxyService;->handleScreenunlock()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_3a

    .line 389
    .end local v2    # "userId":I
    goto :goto_c

    .line 392
    :cond_39
    goto :goto_40

    .line 390
    :catch_3a
    move-exception v1

    .line 391
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Failed to show the proxy auth screen on screen unlock; might be the proxy server has not started yet"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_40
    return-void
.end method

.method protected isProxyThreadAlive(Ljava/lang/String;)Z
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;

    .line 432
    const-string v0, "KnoxVpnPacProcessor"

    const/4 v1, 0x0

    .line 434
    .local v1, "isProxyThreadAlive":Z
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/net/IProxyService;->isProxyThreadAlive(Ljava/lang/String;)Z

    move-result v0
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_f} :catch_28
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_11

    move v1, v0

    .line 439
    :goto_10
    goto :goto_3e

    .line 437
    :catch_11
    move-exception v2

    .line 438
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown error occured for profile while querying for proxy thread alive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 435
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_28
    move-exception v2

    .line 436
    .local v2, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The knox vpn proxy service has not yet started for profile while querying for proxy thread alive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/NullPointerException;
    goto :goto_10

    .line 440
    :goto_3e
    return v1
.end method

.method protected isProxyThreadRunning(Ljava/lang/String;)Z
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;

    .line 408
    const-string v0, "KnoxVpnPacProcessor"

    const/4 v1, 0x0

    .line 410
    .local v1, "isThreadRunning":Z
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/net/IProxyService;->isProxyThreadRunning(Ljava/lang/String;)Z

    move-result v0
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_f} :catch_28
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_11

    move v1, v0

    .line 415
    :goto_10
    goto :goto_3e

    .line 413
    :catch_11
    move-exception v2

    .line 414
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown error occured for profile while querying for proxy thread running or not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 411
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_28
    move-exception v2

    .line 412
    .local v2, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The knox vpn proxy service has not yet started for profile while querying for proxy thread running or not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/NullPointerException;
    goto :goto_10

    .line 416
    :goto_3e
    return v1
.end method

.method public native jnibindSocketToInterface(IIILjava/lang/String;)I
.end method

.method protected resetInterfaceName(Ljava/lang/String;)V
    .registers 5
    .param p1, "profileName"    # Ljava/lang/String;

    .line 511
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/net/IProxyService;->resetInterface(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 514
    goto :goto_14

    .line 512
    :catch_c
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KnoxVpnPacProcessor"

    const-string v2, "error occured while trying to reset interface name"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    return-void
.end method

.method protected setCurrentProxyScript(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "pacurl"    # Landroid/net/Uri;

    .line 519
    const-string v0, "KnoxVpnPacProcessor"

    :try_start_2
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne p3, v1, :cond_c

    .line 520
    const-string v1, "The proxy script is not being set since the pac url is empty or a static proxy has been configured"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return-void

    .line 523
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object v1

    if-nez v1, :cond_23

    .line 524
    const-string v1, "The proxy service has not been intialized while trying to set the proxy script, trying to bind again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->bindProxyService(Ljava/lang/String;I)V

    .line 526
    return-void

    .line 528
    :cond_23
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    .line 529
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 530
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3e

    .line 543
    goto :goto_80

    .line 536
    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to download the pac url for the profile after the interface is up for the profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 538
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    :cond_63
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->extractUrlParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    goto :goto_80

    .line 546
    :cond_6b
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->extractUrlParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_72} :catch_7a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_72} :catch_73

    goto :goto_80

    .line 550
    :catch_73
    move-exception v1

    .line 551
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, " error occured while trying to get current status pac file"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    .line 548
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_7a
    move-exception v1

    .line 549
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "error occured while trying to get current status pac file due to some values being not intialized successfully"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_80
    nop

    .line 553
    :goto_81
    return-void
.end method

.method protected setMiscValueForPacProfile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "interfacename"    # Ljava/lang/String;

    .line 496
    const-string v0, "KnoxVpnPacProcessor"

    const/4 v1, 0x0

    .line 497
    .local v1, "isMiscValueSet":Z
    const/4 v2, 0x0

    .line 499
    .local v2, "showScreen":I
    :try_start_4
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getMarkForInterface(Ljava/lang/String;)I

    move-result v3

    .line 500
    .local v3, "netId":I
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 501
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object v4

    invoke-interface {v4, v3, p1, p2, v2}, Lcom/android/net/IProxyService;->setMiscValueForPacProfile(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    move v1, v4

    .line 502
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checking if the Misc value has been set for the knox pac profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2e} :catch_30

    .line 505
    nop

    .end local v3    # "netId":I
    goto :goto_36

    .line 503
    :catch_30
    move-exception v3

    .line 504
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Exception occurred while trying to set the misc value for the pac profile "

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_36
    return v1
.end method

.method protected stopPacSupport(Ljava/lang/String;)V
    .registers 6
    .param p1, "profileName"    # Ljava/lang/String;

    .line 468
    const-string v0, "KnoxVpnPacProcessor"

    :try_start_2
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    .line 469
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 470
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    :cond_12
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    .line 474
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 475
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :cond_26
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    .line 479
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 480
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :cond_3a
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/net/IProxyService;->stopPacSystemForKnoxProfile(Ljava/lang/String;)Z

    move-result v1

    .line 483
    .local v1, "removePacSupport":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check to see if the pac support is removed for the profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    if-eqz v1, :cond_84

    .line 485
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getConfiguredUser(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/net/IProxyService;->stopProxyServerForKnoxProfile(Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_67} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_67} :catch_68

    goto :goto_84

    .line 490
    .end local v1    # "removePacSupport":Z
    :catch_68
    move-exception v1

    .line 491
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " error occured while trying to remove the pac script for the profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 488
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_7e
    move-exception v1

    .line 489
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "error occured while trying to remove the pac support due to some values being not intialized successfully"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_84
    :goto_84
    nop

    .line 493
    :goto_85
    return-void
.end method

.method protected declared-synchronized unBindPacService(I)V
    .registers 5
    .param p1, "userId"    # I

    monitor-enter p0

    .line 252
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mproxyConnectionList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 253
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mproxyConnectionList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 254
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mproxyConnectionList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .end local p0    # "this":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    :cond_27
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    move-result-object v0

    .line 258
    .local v0, "proxyServiceForProfile":Lcom/android/net/IProxyService;
    if-eqz v0, :cond_30

    .line 259
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->removePacInterface(I)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 261
    :cond_30
    monitor-exit p0

    return-void

    .line 251
    .end local v0    # "proxyServiceForProfile":Lcom/android/net/IProxyService;
    .end local p1    # "userId":I
    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected updatePermissionForAppsToaccessLocalHost(Ljava/lang/String;IILjava/util/HashMap;)V
    .registers 11
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 361
    .local p4, "uidList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    .line 362
    .local v0, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v0, :cond_47

    .line 363
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 364
    .local v1, "listOfVpnUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 366
    .local v2, "listOfDownloadManager":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_31

    const/4 v3, 0x1

    if-eq p2, v3, :cond_1a

    goto :goto_47

    .line 372
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeRulesToDenyAccessToLocalHost(I)V

    .line 373
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceType()I

    move-result v5

    invoke-virtual {v3, v4, p3, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeRulesToAllowAccessToLocalHostWithValidMark(Ljava/lang/String;II)V

    .line 374
    goto :goto_47

    .line 368
    :cond_31
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addRulesToDenyAccessToLocalHost(I)V

    .line 369
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getKnoxVpnFirewallInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceType()I

    move-result v5

    invoke-virtual {v3, v4, p3, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addRulesToAllowAccessToLocalHostWithValidMark(Ljava/lang/String;II)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_48

    .line 381
    .end local v0    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v1    # "listOfVpnUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "listOfDownloadManager":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_47
    :goto_47
    goto :goto_5f

    .line 379
    :catch_48
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred while trying to apply rules to access local host for the vpn profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KnoxVpnPacProcessor"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5f
    return-void
.end method
