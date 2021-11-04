.class Lcom/android/server/ConnectivityListener;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "McpsService.java"


# static fields
.field public static final MCPS_MOBILE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MCPS-ConnListener"

.field private static volatile onMobile:Z


# instance fields
.field private mCm:Landroid/net/ConnectivityManager;

.field private mTransportType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 853
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ConnectivityListener;->onMobile:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "type"    # I

    .line 859
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 861
    iput p2, p0, Lcom/android/server/ConnectivityListener;->mTransportType:I

    .line 862
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/ConnectivityListener;->mCm:Landroid/net/ConnectivityManager;

    .line 863
    return-void
.end method

.method public static free()V
    .registers 1

    .line 965
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/android/server/ConnectivityListener;->updateStatus(IZ)V

    .line 967
    invoke-static {}, Lcom/android/server/ConnectivityListener;->sendToService()V

    .line 968
    return-void
.end method

.method private static sendToService()V
    .registers 3

    .line 954
    const-class v0, Lcom/android/server/McpsServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/McpsServiceInternal;

    .line 955
    .local v0, "service":Lcom/android/server/McpsServiceInternal;
    if-nez v0, :cond_13

    .line 956
    const-string v1, "MCPS-ConnListener"

    const-string/jumbo v2, "updateStatus : McpsServiceInternal NULL"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    return-void

    .line 961
    :cond_13
    sget-boolean v1, Lcom/android/server/ConnectivityListener;->onMobile:Z

    invoke-interface {v0, v1}, Lcom/android/server/McpsServiceInternal;->updateMCPSConnectivityPolicy(Z)V

    .line 962
    return-void
.end method

.method public static updateStatus()V
    .registers 0

    .line 950
    invoke-static {}, Lcom/android/server/ConnectivityListener;->sendToService()V

    .line 951
    return-void
.end method

.method private static updateStatus(IZ)V
    .registers 4
    .param p0, "type"    # I
    .param p1, "value"    # Z

    .line 934
    if-eqz p0, :cond_3

    goto :goto_6

    .line 936
    :cond_3
    sput-boolean p1, Lcom/android/server/ConnectivityListener;->onMobile:Z

    .line 937
    nop

    .line 946
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateStatus : MOBILE["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/ConnectivityListener;->onMobile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MCPS-ConnListener"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAvailable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ConnectivityListener;->mTransportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MCPS-ConnListener"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget v0, p0, Lcom/android/server/ConnectivityListener;->mTransportType:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityListener;->updateStatus(IZ)V

    .line 870
    invoke-static {}, Lcom/android/server/ConnectivityListener;->sendToService()V

    .line 871
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 6
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .line 889
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 891
    const-class v0, Lcom/android/server/McpsServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/McpsServiceInternal;

    .line 892
    .local v0, "service":Lcom/android/server/McpsServiceInternal;
    if-nez v0, :cond_16

    .line 893
    const-string v1, "MCPS-ConnListener"

    const-string/jumbo v2, "updateStatus : McpsServiceInternal NULL"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    return-void

    .line 897
    :cond_16
    invoke-interface {v0}, Lcom/android/server/McpsServiceInternal;->updateMCPSConnectivityAddresses()V

    .line 899
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLost : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ConnectivityListener;->mTransportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MCPS-ConnListener"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget v0, p0, Lcom/android/server/ConnectivityListener;->mTransportType:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityListener;->updateStatus(IZ)V

    .line 884
    invoke-static {}, Lcom/android/server/ConnectivityListener;->sendToService()V

    .line 885
    return-void
.end method

.method public onUnavailable()V
    .registers 3

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUnavailable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ConnectivityListener;->mTransportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MCPS-ConnListener"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return-void
.end method

.method public register()V
    .registers 5

    .line 902
    const-string v0, "MCPS-ConnListener"

    const-string/jumbo v1, "register : called"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 905
    .local v1, "builder":Landroid/net/NetworkRequest$Builder;
    iget v2, p0, Lcom/android/server/ConnectivityListener;->mTransportType:I

    if-eqz v2, :cond_2d

    .line 914
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to register : caused by type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/ConnectivityListener;->mTransportType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    return-void

    .line 907
    :cond_2d
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 908
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 909
    nop

    .line 917
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 918
    .local v0, "req":Landroid/net/NetworkRequest;
    iget-object v2, p0, Lcom/android/server/ConnectivityListener;->mCm:Landroid/net/ConnectivityManager;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v2, v0, p0, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 919
    return-void
.end method

.method public unregister()V
    .registers 4

    .line 922
    const-string v0, "MCPS-ConnListener"

    const-string/jumbo v1, "unregister : called"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget v1, p0, Lcom/android/server/ConnectivityListener;->mTransportType:I

    if-eqz v1, :cond_28

    .line 927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to unregister : caused by type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ConnectivityListener;->mTransportType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    return-void

    .line 924
    :cond_28
    nop

    .line 930
    iget-object v0, p0, Lcom/android/server/ConnectivityListener;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 931
    return-void
.end method
