.class Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;
.super Landroid/net/ip/IIpClientCallbacks$Stub;
.source "IpClientUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpClientUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IpClientCallbacksProxy"
.end annotation


# instance fields
.field protected final mCb:Landroid/net/ip/IpClientCallbacks;


# direct methods
.method public constructor <init>(Landroid/net/ip/IpClientCallbacks;)V
    .registers 2
    .param p1, "cb"    # Landroid/net/ip/IpClientCallbacks;

    .line 92
    invoke-direct {p0}, Landroid/net/ip/IIpClientCallbacks$Stub;-><init>()V

    .line 93
    iput-object p1, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    .line 94
    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 192
    const-string v0, "02cd6fd07d5c04eca0c35a350f7b0be576242883"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 187
    const/4 v0, 0x7

    return v0
.end method

.method public installPacketFilter([B)V
    .registers 3
    .param p1, "filter"    # [B

    .line 153
    iget-object v0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpClientCallbacks;->installPacketFilter([B)V

    .line 154
    return-void
.end method

.method public onIpClientCreated(Landroid/net/ip/IIpClient;)V
    .registers 3
    .param p1, "ipClient"    # Landroid/net/ip/IIpClient;

    .line 98
    iget-object v0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpClientCallbacks;->onIpClientCreated(Landroid/net/ip/IIpClient;)V

    .line 99
    return-void
.end method

.method public onLinkPropertiesChange(Landroid/net/LinkProperties;)V
    .registers 3
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 134
    iget-object v0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpClientCallbacks;->onLinkPropertiesChange(Landroid/net/LinkProperties;)V

    .line 135
    return-void
.end method

.method public onNewDhcpResults(Landroid/net/DhcpResultsParcelable;)V
    .registers 3
    .param p1, "dhcpResults"    # Landroid/net/DhcpResultsParcelable;

    .line 119
    iget-object v0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpClientCallbacks;->onNewDhcpResults(Landroid/net/DhcpResultsParcelable;)V

    .line 120
    return-void
.end method

.method public onPostDhcpAction()V
    .registers 2

    .line 108
    iget-object v0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {v0}, Landroid/net/ip/IpClientCallbacks;->onPostDhcpAction()V

    .line 109
    return-void
.end method

.method public onPreDhcpAction()V
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {v0}, Landroid/net/ip/IpClientCallbacks;->onPreDhcpAction()V

    .line 104
    return-void
.end method

.method public onPreconnectionStart(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Layer2PacketParcelable;",
            ">;)V"
        }
    .end annotation

    .line 182
    .local p1, "packets":Ljava/util/List;, "Ljava/util/List<Landroid/net/Layer2PacketParcelable;>;"
    iget-object v0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpClientCallbacks;->onPreconnectionStart(Ljava/util/List;)V

    .line 183
    return-void
.end method

.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .registers 3
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 128
    iget-object v0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpClientCallbacks;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    .line 129
    return-void
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .registers 3
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 124
    iget-object v0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpClientCallbacks;->onProvisioningSuccess(Landroid/net/LinkProperties;)V

    .line 125
    return-void
.end method

.method public onQuit()V
    .registers 2

    .line 147
    iget-object v0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {v0}, Landroid/net/ip/IpClientCallbacks;->onQuit()V

    .line 148
    return-void
.end method

.method public onReachabilityLost(Ljava/lang/String;)V
    .registers 3
    .param p1, "logMsg"    # Ljava/lang/String;

    .line 141
    iget-object v0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpClientCallbacks;->onReachabilityLost(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public setFallbackMulticastFilter(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 169
    iget-object v0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpClientCallbacks;->setFallbackMulticastFilter(Z)V

    .line 170
    return-void
.end method

.method public setNeighborDiscoveryOffload(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 176
    iget-object v0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpClientCallbacks;->setNeighborDiscoveryOffload(Z)V

    .line 177
    return-void
.end method

.method public startReadPacketFilter()V
    .registers 2

    .line 162
    iget-object v0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {v0}, Landroid/net/ip/IpClientCallbacks;->startReadPacketFilter()V

    .line 163
    return-void
.end method
