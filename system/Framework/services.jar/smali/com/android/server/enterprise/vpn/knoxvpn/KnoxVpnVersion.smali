.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnVersion;
.super Ljava/lang/Object;
.source "KnoxVpnVersion.java"


# static fields
.field private static final KNOX_VPN_NUMBER:Ljava/lang/String; = "6"

.field private static final KNOX_VPN_VERSION:Ljava/lang/String; = "2.3.0"

.field private static final PROP_KNOX_VPN_VERSION:Ljava/lang/String; = "net.knoxvpn.version"

.field private static final TAG:Ljava/lang/String; = "KnoxVpnVersion"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNumber()Ljava/lang/String;
    .registers 1

    .line 45
    const-string v0, "6"

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    .line 40
    const-string v0, "2.3.0"

    return-object v0
.end method

.method private static getVersionByKnox()Ljava/lang/String;
    .registers 4

    .line 55
    const-string v0, ""

    .line 56
    .local v0, "vpnVersion":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v1

    .line 57
    .local v1, "knoxVersion":Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnVersion$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2c

    .line 89
    const-string v0, "2.2.0"

    goto :goto_2a

    .line 86
    :pswitch_18
    const-string v0, "2.4.0"

    .line 87
    goto :goto_2a

    .line 83
    :pswitch_1b
    const-string v0, "2.3.0"

    .line 84
    goto :goto_2a

    .line 79
    :pswitch_1e
    const-string v0, "2.2.4"

    .line 80
    goto :goto_2a

    .line 76
    :pswitch_21
    const-string v0, "2.2.3"

    .line 77
    goto :goto_2a

    .line 73
    :pswitch_24
    const-string v0, "2.2.2"

    .line 74
    goto :goto_2a

    .line 70
    :pswitch_27
    const-string v0, "2.2.0"

    .line 71
    nop

    .line 92
    :goto_2a
    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_1b
        :pswitch_18
    .end packed-switch
.end method

.method public static writeVersionInProperties()V
    .registers 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "writeVersionInProperties : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnVersion;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxVpnVersion"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnVersion;->getVersionByKnox()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "net.knoxvpn.version"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method
