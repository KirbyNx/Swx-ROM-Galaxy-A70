.class public final Landroid/net/shared/IpConfigurationParcelableUtil;
.super Ljava/lang/Object;
.source "IpConfigurationParcelableUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parcelAddress(Ljava/net/InetAddress;)Ljava/lang/String;
    .registers 2
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 36
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_4
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unparcelAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 2
    .param p0, "addr"    # Ljava/lang/String;

    .line 45
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_4
    invoke-static {p0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
