.class public Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageConstants;
.super Ljava/lang/Object;
.source "VpnStorageConstants.java"


# static fields
.field public static final ADMIN_ID:Ljava/lang/String; = "adminID"

.field public static final ADMIN_TABLE:Ljava/lang/String; = "ADMIN"

.field public static final ADMIN_UID:Ljava/lang/String; = "adminUid"

.field public static final CONTAINER_ID:Ljava/lang/String; = "containerID"

.field public static final DEFAULT_DATABASE_FILE:Ljava/lang/String; = "/data/system/knoxvpn/databases/knoxvpn.db"

.field public static final DEFAULT_DATABASE_NAME:Ljava/lang/String; = "knoxvpn.db"

.field public static final DEFAULT_DATABASE_PATH:Ljava/lang/String; = "/data/system/knoxvpn/databases/"

.field public static final DEFAULT_DATABASE_VERSION:I = 0x2

.field public static final DEFAULT_TYPE:I = 0x1

.field public static final DEVICE_CONTAINER_ID:I = 0x0

.field public static final ENTERPRISE_VPN_ACTIVATE_STATE:Ljava/lang/String; = "activateState"

.field public static final ENTERPRISE_VPN_ANALYTICS_TABLE:Ljava/lang/String; = "VpnAnalyticsTable"

.field public static final ENTERPRISE_VPN_APPLICATION_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final ENTERPRISE_VPN_CHAINING_ENABLED:Ljava/lang/String; = "chainingEnabled"

.field public static final ENTERPRISE_VPN_CID_APPLICATION:Ljava/lang/String; = "packageCid"

.field public static final ENTERPRISE_VPN_CONNECTION_TYPE:Ljava/lang/String; = "vpnConnectionType"

.field public static final ENTERPRISE_VPN_EXEMPT_PACKAGE:Ljava/lang/String; = "packageName"

.field public static final ENTERPRISE_VPN_EXEMPT_TABLE:Ljava/lang/String; = "vpnExemptInfo"

.field public static final ENTERPRISE_VPN_EXEMPT_UID:Ljava/lang/String; = "packageUid"

.field public static final ENTERPRISE_VPN_IPV6:Ljava/lang/String; = "ipv6"

.field public static final ENTERPRISE_VPN_IP_CHAIN_NAME:Ljava/lang/String; = "vpnIpChainName"

.field public static final ENTERPRISE_VPN_PACKAGE_TABLE:Ljava/lang/String; = "VpnPackageInfo"

.field public static final ENTERPRISE_VPN_PAC_URL:Ljava/lang/String; = "pacurl"

.field public static final ENTERPRISE_VPN_PERMISSION_CHECK_PACKAGE:Ljava/lang/String; = "packageName"

.field public static final ENTERPRISE_VPN_PERMISSION_CHECK_TABLE:Ljava/lang/String; = "vpnNoInternetPermission"

.field public static final ENTERPRISE_VPN_PERMISSION_CHECK_UID:Ljava/lang/String; = "packageUid"

.field public static final ENTERPRISE_VPN_PROFILE:Ljava/lang/String; = "profileName"

.field public static final ENTERPRISE_VPN_PROFILE_COUNT:Ljava/lang/String; = "profileCount"

.field public static final ENTERPRISE_VPN_PROFILE_ID:Ljava/lang/String; = "profileId"

.field public static final ENTERPRISE_VPN_PROFILE_TABLE:Ljava/lang/String; = "VpnProfileInfo"

.field public static final ENTERPRISE_VPN_PROTOCOL_TYPE:Ljava/lang/String; = "protocolType"

.field public static final ENTERPRISE_VPN_PROXY_AUTH:Ljava/lang/String; = "proxyAuth"

.field public static final ENTERPRISE_VPN_PROXY_PORT:Ljava/lang/String; = "proxyPort"

.field public static final ENTERPRISE_VPN_PROXY_SERVER:Ljava/lang/String; = "proxyServer"

.field public static final ENTERPRISE_VPN_ROUTE_TYPE:Ljava/lang/String; = "defaultRoute"

.field public static final ENTERPRISE_VPN_SERVICE_TYPE:Ljava/lang/String; = "vpnServiceType"

.field public static final ENTERPRISE_VPN_TETHER_CAPTIVE_ALIAS:Ljava/lang/String; = "tetherCaptivePortalAlias"

.field public static final ENTERPRISE_VPN_TETHER_CAPTIVE_CERT:Ljava/lang/String; = "tetherCaptivePortalCert"

.field public static final ENTERPRISE_VPN_TETHER_CA_ALIAS:Ljava/lang/String; = "tetherCAlias"

.field public static final ENTERPRISE_VPN_TETHER_CA_CERT:Ljava/lang/String; = "tetherCACert"

.field public static final ENTERPRISE_VPN_TETHER_CLIENT_CERT_ISSUED_CN:Ljava/lang/String; = "tetherClientCertIssuedCN"

.field public static final ENTERPRISE_VPN_TETHER_CLIENT_CERT_ISSUER_CN:Ljava/lang/String; = "tetherClientCertIssuerCN"

.field public static final ENTERPRISE_VPN_TETHER_LOGIN_PAGE:Ljava/lang/String; = "tetherLoginpage"

.field public static final ENTERPRISE_VPN_TETHER_RESPONSE_PAGE:Ljava/lang/String; = "tetherResponsePage"

.field public static final ENTERPRISE_VPN_TETHER_USER_ALIAS:Ljava/lang/String; = "tetherServerAlias"

.field public static final ENTERPRISE_VPN_TETHER_USER_CERT:Ljava/lang/String; = "tetherServerCert"

.field public static final ENTERPRISE_VPN_UIDPIDSEARCH_ENABLED:Ljava/lang/String; = "uidPidSearch"

.field public static final ENTERPRISE_VPN_UID_APPLICATION:Ljava/lang/String; = "packageUid"

.field public static final ENTERPRISE_VPN_USB_TETHERING:Ljava/lang/String; = "usbTethering"

.field public static final ENTERPRISE_VPN_USB_TETHERING_AUTH:Ljava/lang/String; = "usbTetheringAuth"

.field public static final ENTERPRISE_VPN_VENDOR_PACKAGE_NAME:Ljava/lang/String; = "vendorName"

.field public static final INVALID_ADMIN_LUID:J = -0x1L

.field public static final INVALID_CONTAINER_ID:I = -0x1

.field public static final NEW_NAMESPACE:I = 0x2

.field public static final OLD_NAMESPACE:I = 0x1

.field public static final PERSONA_ID:Ljava/lang/String; = "personaId"

.field public static final VPN_VENDOR_NAMESPACE:Ljava/lang/String; = "namespace"

.field public static final VPN_VENDOR_PKG_NAME:Ljava/lang/String; = "packageName"

.field public static final VPN_VENDOR_TABLE:Ljava/lang/String; = "vpnVendor"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDbName(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 118
    nop

    .line 122
    const-string v0, "/data/system/knoxvpn/databases/knoxvpn.db"

    return-object v0
.end method

.method public static getDbVersion(I)I
    .registers 2
    .param p0, "type"    # I

    .line 128
    nop

    .line 132
    const/4 v0, 0x2

    return v0
.end method
