.class public abstract Lcom/samsung/accessory/manager/authentication/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# instance fields
.field protected mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

.field protected mContext:Landroid/content/Context;

.field protected mType:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private setConnection(Lcom/samsung/accessory/manager/connectivity/Connectivity;)V
    .registers 2
    .param p1, "conn"    # Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 21
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 22
    return-void
.end method


# virtual methods
.method close()V
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-eqz v0, :cond_7

    .line 98
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->close()V

    .line 99
    :cond_7
    return-void
.end method

.method connect()V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-eqz v0, :cond_8

    .line 88
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->connect(Ljava/lang/String;)Z

    .line 89
    :cond_8
    return-void
.end method

.method disconnect()V
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-eqz v0, :cond_7

    .line 93
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->disconnect()Z

    .line 94
    :cond_7
    return-void
.end method

.method public getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    return-object v0
.end method

.method public getConnectivityType()I
    .registers 2

    .line 60
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mType:I

    return v0
.end method

.method abstract onAuthenticationChallenge(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
.end method

.method abstract onInterrupted()V
.end method

.method public openNode(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .registers 3
    .param p1, "result"    # Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->openNode(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v0

    return v0
.end method

.method public sendEndCommand()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-eqz v0, :cond_7

    .line 83
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->sendStopUsbAuth()V

    .line 84
    :cond_7
    return-void
.end method

.method public sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .registers 3
    .param p1, "result"    # Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setApiState(I)V

    .line 65
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v0

    return-object v0
.end method

.method public sendStopAuth()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->sendStopAuth()Z

    move-result v0

    return v0
.end method

.method public sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .registers 5
    .param p1, "payload"    # [B
    .param p2, "result"    # Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-virtual {p2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getApiState()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_c

    .line 77
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setApiState(I)V

    .line 78
    :cond_c
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v0

    return-object v0
.end method

.method setConnection()V
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-eqz v0, :cond_5

    return-void

    .line 39
    :cond_5
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_35

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_14

    goto :goto_40

    .line 50
    :cond_14
    new-instance v0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setConnection(Lcom/samsung/accessory/manager/connectivity/Connectivity;)V

    goto :goto_40

    .line 47
    :cond_1f
    new-instance v0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setConnection(Lcom/samsung/accessory/manager/connectivity/Connectivity;)V

    .line 48
    goto :goto_40

    .line 44
    :cond_2a
    new-instance v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setConnection(Lcom/samsung/accessory/manager/connectivity/Connectivity;)V

    .line 45
    goto :goto_40

    .line 41
    :cond_35
    new-instance v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setConnection(Lcom/samsung/accessory/manager/connectivity/Connectivity;)V

    .line 42
    nop

    .line 53
    :goto_40
    return-void
.end method

.method abstract setInterrupt(Z)V
.end method

.method setSessionState(I)V
    .registers 3
    .param p1, "type"    # I

    .line 33
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-eqz v0, :cond_7

    .line 34
    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->setSessionState(I)V

    .line 35
    :cond_7
    return-void
.end method

.method setStateChangedCallback(Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    .line 25
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->setStateChangedCallback(Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;)V

    .line 26
    return-void
.end method
