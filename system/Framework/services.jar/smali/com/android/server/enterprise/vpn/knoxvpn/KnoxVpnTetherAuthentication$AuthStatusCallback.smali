.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$AuthStatusCallback;
.super Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IAuthenticationStatus$Stub;
.source "KnoxVpnTetherAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthStatusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$AuthStatusCallback;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IAuthenticationStatus$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus(I)V
    .registers 6
    .param p1, "state"    # I

    .line 162
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$AuthStatusCallback;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->isCallbackReceived:Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->access$1002(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;Z)Z

    .line 164
    if-nez p1, :cond_2e

    .line 165
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$AuthStatusCallback;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->syncObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->access$400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 166
    :try_start_f
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$AuthStatusCallback;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    # setter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->isTetherAuthSuccessful:Z
    invoke-static {v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->access$702(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;Z)Z
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_2b

    .line 168
    :try_start_14
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$AuthStatusCallback;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->stopTetheringAuthProcess(Z)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_1b
    .catchall {:try_start_14 .. :try_end_1a} :catchall_2b

    .line 171
    goto :goto_24

    .line 169
    :catch_1b
    move-exception v1

    .line 170
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1c
    const-string v2, "KnoxVpnTetherAuthentication"

    const-string/jumbo v3, "unknown error occured when tried to stop the tether auth process"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_24
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$AuthStatusCallback;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->applyTetheringRulesForVpn()V
    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->access$1100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)V

    .line 173
    monitor-exit v0

    goto :goto_2f

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_2b

    throw v1

    .line 176
    :cond_2e
    nop

    .line 179
    :goto_2f
    return-void
.end method
