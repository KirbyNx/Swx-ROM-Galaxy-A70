.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;
.super Ljava/lang/Object;
.source "KnoxVpnConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants$ProfileState;
    }
.end annotation


# static fields
.field public static final ACTION_CAPTIVE_PORTAL_DETECTED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CAPTIVE_PORTAL_DETECTED_INTERNAL"

.field public static final ACTION_CHAIN:Ljava/lang/String; = "_act"

.field public static final ACTION_NETWORK_VALIDATED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.NETWORK_VALIDATED_INTERNAL"

.field public static final ACTION_VPN_INTERFACE_STATUS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.INTERFACE_STATUS_INTERNAL"

.field public static final ACTION_VPN_RETRY_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.VPN_RETRY_INTERNAL"

.field public static final ADD_ALL_APPLICATION:Ljava/lang/String; = "1"

.field public static final ADD_ALL_PACKAGES:Ljava/lang/String; = "ADD_ALL_PACKAGES"

.field public static final ADD_DROP_RULES_NO_MARK:I = 0x0

.field public static final ADD_INDIVIDUAL_PROXY_RULES:I = 0x3

.field public static final ADD_MEDIA_SOCKETS_TO_INTERFACE:Ljava/lang/String; = "1"

.field public static final ADD_PER_APPLICATION:Ljava/lang/String; = "0"

.field public static final ADD_PROXY_RULES:I = 0x1

.field public static final ADD_RULES:I = 0x0

.field public static final ADD_UID:Ljava/lang/String; = "1"

.field public static final ADMIN_UID:Ljava/lang/String; = "admUid"

.field protected static final AID_EXEMPT_LIST:[Ljava/lang/Integer;

.field public static final APPS_TO_RESTART_PROXY:[Ljava/lang/String;

.field public static final BLACK_LISTED_APPLICATION:[Ljava/lang/String;

.field public static final BLACK_LISTED_UID:[Ljava/lang/Integer;

.field public static BLOCK_APP_TRAFFIC:Ljava/lang/String; = null

.field public static final CALLER_FRAMEWORK:Ljava/lang/String; = "1000"

.field public static final CALLER_MEDIA:Ljava/lang/String; = "1013"

.field protected static final CAPTIVE_CERT_PASSWORD:Ljava/lang/String; = "captivecert_pwd"

.field protected static final CAPTIVE_PORTAL_APP_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.captiveportallogin"

.field protected static final CA_CERT_PASSWORD:Ljava/lang/String; = "cacert_pwd"

.field public static final CHAINED_APPLICATION_DEFAULT_USER_ID:I = 0x0

.field public static final CHAINING:Ljava/lang/String; = "chn"

.field public static final CHAINING_DEFAULT_VALUE:I = -0x1

.field public static final CHAINING_DISABLED:I = 0x0

.field public static final CHAINING_ENABLED:I = 0x1

.field public static final CHAINING_NOT_APPLICABLE:I = -0x1

.field public static final CHAINING_STATUS_ERROR:I = -0x1

.field public static final CHAINING_STATUS_NOT_READY:I = 0x0

.field public static final CHAINING_STATUS_READY:I = 0x1

.field public static final CID:Ljava/lang/String; = "cid"

.field public static final CLAT_ADD_EXEMPT_RULE:I = 0x0

.field public static final CLAT_REMOVE_EXEMPT_RULE:I = 0x1

.field public static final CONDITION:Ljava/lang/String; = "cndt"

.field public static final CONN_TYPE:Ljava/lang/String; = "connTp"

.field public static final CONTAINER_PREFIX:Ljava/lang/String; = "sec_container_"

.field public static final CONTAINER_REMOVAL_INTENT:Ljava/lang/String; = "enterprise.container.uninstalled"

.field public static final DEFAULT_CONTAINER_VPN_STATE:I = -0x1

.field public static final DEFAULT_IPV6:I = 0x0

.field public static final DEFAULT_IPV6_FOR_MOCANA:I = 0x1

.field public static final DEFAULT_PAC_URL:Ljava/lang/String;

.field public static final DEFAULT_PORT:I = -0x1

.field public static final DEFAULT_PROXY_CREDENTIALS:Ljava/lang/String;

.field public static final DEFAULT_PROXY_PORT:I = -0x1

.field public static final DEFAULT_PROXY_SERVER:Ljava/lang/String;

.field public static final DISABLE_IPV6:I = 0x0

.field public static final DISABLE_KNOX_PROXY_CONFIG:I = 0x0

.field public static final DNS_CONF_FILE_PATH:Ljava/lang/String; = "/data/system/dnsproperties.ini"

.field protected static final DOWNLOAD_MANAGER_MARK:Ljava/lang/String; = "498"

.field public static final DOWNLOAD_PACKAGE_NAME:Ljava/lang/String; = "com.android.providers.downloads"

.field protected static final EBPF_ADD_RULE:I = 0x1

.field protected static final EBPF_APP_TYPE:I = 0x0

.field protected static final EBPF_DEFAULT_IFINDEX_VALUE:I = 0x0

.field protected static final EBPF_KNOX_ALL_MAP_ID:I = 0x0

.field protected static final EBPF_KNOX_APP_MAP_ID:I = 0x2

.field protected static final EBPF_KNOX_EXEMPT_MAP_ID:I = 0x1

.field protected static final EBPF_KNOX_USER_MAP_ID:I = 0x3

.field protected static final EBPF_REMOVE_RULE:I = 0x0

.field protected static final EBPF_USER_TYPE:I = 0x1

.field public static final EMAIL_PACKAGE_LIST:[Ljava/lang/String;

.field public static final ENABLE:Ljava/lang/String; = "enb"

.field public static final ENABLE_IPV6:I = 0x1

.field public static final EVENT:Ljava/lang/String; = "API:"

.field public static final EXTRA_ACTION_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ACTION_INTERNAL"

.field public static final EXTRA_CAPTIVE_PORTAL_URL_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.EXTRA_CAPTIVE_PORTAL_URL_INTERNAL"

.field protected static final EXTRA_DNS_REDIRECTION_PORT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.DNS_REDIRECTION_PORT"

.field protected static final EXTRA_HTTPS_REDIRECTION_AUTH_PORT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.HTTPS_REDIRECTION_AUTH_PORT"

.field protected static final EXTRA_HTTPS_REDIRECTION_PORT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.HTTPS_REDIRECTION_PORT"

.field protected static final EXTRA_HTTP_REDIRECTION_PORT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.HTTP_REDIRECTION_PORT"

.field public static final EXTRA_PROFILE_NAME_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PROFILE_NAME_INTERNAL"

.field public static final EXTRA_PROXY_BROADCAST_CALLER:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.caller"

.field public static final EXTRA_STATE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.STATE_INTERNAL"

.field public static final EXTRA_TUN_ADDRESS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.TUN_ADDRESS_INTERNAL"

.field public static final EXTRA_TUN_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.TUN_ID_INTERNAL"

.field public static final EXTRA_TUN_V6_ADDRESS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.TUNV6_ADDRESS_INTERNAL"

.field public static final EXTRA_VPN_CLIENT_TYPE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.VPN_CLIENT_TYPE_INTERNAL"

.field private static final F5_KNOX_CLIENT_PACKAGE:Ljava/lang/String; = "com.f5.edge.client_ics"

.field public static final FEATURE:Ljava/lang/String; = "KNOX_VPN"

.field public static final FIPS_MODE:I = 0x1

.field public static final FREQUENCY:Ljava/lang/String; = "fq"

.field public static final INTENT_CONTAINER_ADMIN_CHANGED_ACTION:Ljava/lang/String; = "enterprise.container.admin.changed"

.field public static final INTENT_UCM_REFRESH_DONE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_REFRESH_DONE"

.field public static final INVALID_CONTAINER_ID:I = 0x0

.field public static final INVALID_KNOX_NETWORK_ID:I = -0x1

.field public static final JSON_IPV6_ENABLE:Ljava/lang/String; = "ipv6-enable"

.field public static final JSON_PROXY_PAC_URL:Ljava/lang/String; = "pac-url"

.field public static final JSON_PROXY_PASSWORD:Ljava/lang/String; = "proxy-password"

.field public static final JSON_PROXY_PORT:Ljava/lang/String; = "proxy-port"

.field public static final JSON_PROXY_PROXY_AUTH:Ljava/lang/String; = "proxy-auth"

.field public static final JSON_PROXY_SERVER:Ljava/lang/String; = "proxy-server"

.field public static final JSON_PROXY_USERNAME:Ljava/lang/String; = "proxy-username"

.field public static final JSON_TAG_CHAINED_APPLICATION:Ljava/lang/String; = "chainingApplication"

.field public static final JSON_TAG_CHAINED_APPLICATION_USER_ID:Ljava/lang/String; = "chainingUserId"

.field public static final JSON_TAG_CHAIN_ENABLED:Ljava/lang/String; = "chaining_enabled"

.field public static final JSON_TAG_KNOX:Ljava/lang/String; = "knox"

.field public static final JSON_TAG_KNOX_PARENT:Ljava/lang/String; = "KNOX_VPN_PARAMETERS"

.field public static final JSON_TAG_PROFILE:Ljava/lang/String; = "profile_attribute"

.field public static final JSON_TAG_PROFILENAME:Ljava/lang/String; = "profileName"

.field public static final JSON_TAG_PROTOCOLTYPE:Ljava/lang/String; = "vpn_type"

.field public static final JSON_TAG_ROUTETYPE:Ljava/lang/String; = "vpn_route_type"

.field public static final JSON_TAG_UIDPIDSEARCH:Ljava/lang/String; = "uidpidsearch"

.field public static final JSON_TAG_UIDPIDSEARCHENABLED:Ljava/lang/String; = "uidpid_search_enabled"

.field public static final JSON_TAG_VPN_CONNECTION_TYPE:Ljava/lang/String; = "connectionType"

.field protected static final JSON_USB_TETHERING:Ljava/lang/String; = "allow_usb_over_vpn_tethering"

.field public static final KEEP_ON:Ljava/lang/String; = "keepon"

.field public static final KEEP_ON_CONNECTION_TYPE:Ljava/lang/String; = "keepon"

.field public static final KEEP_ON_ENABLED:I = 0x0

.field protected static final KEY_TETHER_AUTH_LOGIN_PAGE:Ljava/lang/String; = "key-tether-auth-login-page"

.field protected static final KEY_TETHER_AUTH_RESPONSE_PAGE:Ljava/lang/String; = "key-tether-auth-response-page"

.field protected static final KEY_TETHER_CAPTIVE_PORTAL_ALIAS:Ljava/lang/String; = "key-tether-captive-portal-alias"

.field protected static final KEY_TETHER_CAPTIVE_PORTAL_CERTIFICATE:Ljava/lang/String; = "key-tether-captive-portal-certificate"

.field protected static final KEY_TETHER_CAPTIVE_PORTAL_CERT_PASSWORD:Ljava/lang/String; = "key-tether-captive-portal-cert-password"

.field protected static final KEY_TETHER_CA_ALIAS:Ljava/lang/String; = "key-tether-ca-alias"

.field protected static final KEY_TETHER_CA_CERTIFICATE:Ljava/lang/String; = "key-tether-ca-certificate"

.field protected static final KEY_TETHER_CA_CERT_PASSWORD:Ljava/lang/String; = "key-tether-ca-cert-password"

.field protected static final KEY_TETHER_CLIENT_CERTIFICATE_ISSUED_CN:Ljava/lang/String; = "key-tether-client-certificate-issued-cn"

.field protected static final KEY_TETHER_CLIENT_CERTIFICATE_ISSUER_CN:Ljava/lang/String; = "key-tether-client-certificate-issuer-cn"

.field protected static final KEY_TETHER_USER_ALIAS:Ljava/lang/String; = "key-tether-user-alias"

.field protected static final KEY_TETHER_USER_CERTIFICATE:Ljava/lang/String; = "key-tether-user-certificate"

.field protected static final KEY_TETHER_USER_CERT_PASSWORD:Ljava/lang/String; = "key-tether-user-cert-password"

.field public static final KNOX10_CONTAINER_ID:I = 0x1

.field public static final KNOX20_MIN_CONTAINER_ID:I = 0x64

.field public static final KNOX_BLOCKING_ID:Ljava/lang/String; = "500"

.field public static final KNOX_FW:Ljava/lang/String; = "Knox_Framework"

.field public static final KNOX_PROXY_CONFIG:I = 0x1

.field public static final KNOX_STRONGSWAN_NET_ID:I = 0x64

.field public static final KNOX_TUNNEL_ID:Ljava/lang/String; = "tun"

.field public static KNOX_VPN:Ljava/lang/String; = null

.field public static final KNOX_VPN_BASE_MARK:I = 0x65

.field public static final KNOX_VPN_INTERFACE_NONE:I = 0x0

.field public static final KNOX_VPN_INTERFACE_TYPE_INTERNAL:Ljava/lang/String; = "virtual_address_type"

.field public static final KNOX_VPN_INTERFACE_V4:I = 0x1

.field public static final KNOX_VPN_INTERFACE_V46:I = 0x3

.field public static final KNOX_VPN_INTERFACE_V6:I = 0x2

.field protected static final KNOX_VPN_PROXY_PACKAGE_NAME:Ljava/lang/String; = "com.knox.vpn.proxyhandler"

.field protected static final KNOX_VPN_TETHERING_AUTH_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.knox.vpn.tether.auth"

.field protected static final KNOX_VPN_TETHER_BIND_ACTION:Ljava/lang/String; = "knoxtetheringauthenticationservice"

.field public static final MAKE_PROXY_REQUEST:I = 0x3

.field public static final MAX_DNS_SERVERS:I = 0x4

.field public static final MAX_KNOX_NETWORK_NET_ID:I = 0x1f4

.field protected static final MESSAGE_APP_NAME:Ljava/lang/String; = "com.samsung.android.messaging"

.field public static final META_MARK_ENABLED_PROPERTY:Ljava/lang/String; = "net.vpn.markbase"

.field public static final MIN_KNOX_NETWORK_NET_ID:I = 0x64

.field public static final NATIVE_VPN_CLIENT:I = 0x1

.field protected static final NETWORK_STACK_NAME:Ljava/lang/String; = "com.android.networkstack"

.field public static final NEW_FW:Ljava/lang/String; = "2.0"

.field public static final NEW_NAMESPACE:Ljava/lang/String; = "New"

.field public static final NON_FIPS_MODE:I = 0x0

.field public static final NON_NATIVE_VPN_CLIENT:I = 0x0

.field public static final OLD_NAMESPACE:Ljava/lang/String; = "Old"

.field public static final ON_DEMAND:Ljava/lang/String; = "ondemand"

.field public static final ON_DEMAND_CONNECTION_TYPE:Ljava/lang/String; = "ondemand"

.field public static final ON_DEMAND_ENABLED:I = 0x1

.field public static final PACKAGE_CID:I = -0x1

.field public static final PACKAGE_DELIMETER:Ljava/lang/String; = "_"

.field public static final PACKAGE_UID:I = -0x1

.field public static final PER_APP_VPN:I = 0x1

.field public static final PKG_LIST:Ljava/lang/String; = "pkgLst"

.field public static final PROFILENAME_MAX_LENGTH:I = 0x80

.field public static final PROFILE_ACTIVATED:I = 0x1

.field public static final PROFILE_DEACTIVATED:I = 0x0

.field public static final PROFILE_ID:Ljava/lang/String; = "prfid"

.field public static final PROTO_TYPE:Ljava/lang/String; = "prtTp"

.field public static final PROXY_AUTH:Ljava/lang/String; = "prxAuth"

.field public static final PROXY_AUTH_DISABLED:I = 0x0

.field public static final PROXY_AUTH_ENABLED:I = 0x1

.field public static final PROXY_CALLBACK_ERROR_STATUS_EXCEPTION:I = 0x1

.field public static final REMOVE_DROP_RULES_NO_MARK:I = 0x1

.field public static final REMOVE_INDIVIDUAL_PROXY_RULES:I = 0x2

.field public static final REMOVE_MEDIA_SOCKETS_FROM_INTERFACE:Ljava/lang/String; = "0"

.field public static final REMOVE_PROXY_RULES:I = 0x0

.field public static final REMOVE_RULES:I = 0x1

.field public static final REMOVE_UID:Ljava/lang/String; = "0"

.field public static final ROOT_ID:I = 0x0

.field public static final ROUTE_TYPE:Ljava/lang/String; = "rtTp"

.field public static final SCHEMA_VERSION:I = 0x1

.field public static final SEND_PROXY_BROADCAST_KNOX_VPN:Ljava/lang/String; = "com.samsung.android.knox.intent.action.VPN_PROXY_BROADCAST_INTERNAL"

.field protected static final SERVER_CERT_PASSWORD:Ljava/lang/String; = "servercert_pwd"

.field public static final SET_PROXY_SCRIPT:I = 0x2

.field public static final START_PAC_SUPPORT:I = 0x0

.field public static final STOP_PAC_SUPPORT:I = 0x1

.field public static final STRONGSWAN_MARK:Ljava/lang/String; = "100"

.field public static final STRONSWAN_PROXY_PGK:Ljava/lang/String; = "com.samsung.sVpn"

.field public static final SUPPORTLIB_BINDER_NAME:Ljava/lang/String; = "com.samsung.android.knox.net.vpn.KnoxONSVpnService"

.field public static final SYSTEM_VPN:I = 0x0

.field protected static final TETHER_AUTH_SERVICE:Ljava/lang/String; = "com.samsung.knox.vpn.tether.auth.TetherAuthService"

.field public static final TUN_INTERFACE_DOWN:I = 0x2

.field public static final TUN_INTERFACE_UP:I = 0x1

.field public static final UID_ADD_ALL_CONTAINER_PACKAGES:I = -0x2

.field public static final UID_LIST_CHAIN:Ljava/lang/String; = "_uidlist"

.field public static final UID_PID_SEARCH_DISABLED:I = 0x0

.field public static final UID_PID_SEARCH_ENABLED:I = 0x1

.field public static final ULTRA_POWER_MODE_REASON:Ljava/lang/String; = "reason"

.field public static final ULTRA_POWER_SAVING_MODE_PERMISSION:Ljava/lang/String; = "com.sec.android.emergencymode.permission.LAUNCH_EMERGENCYMODE_SERVICE"

.field protected static final USB_TETHERING_AUTH_DISABLED:I = 0x0

.field protected static final USB_TETHERING_AUTH_ENABLED:I = 0x1

.field protected static final USB_TETHERING_DISABLED:I = 0x0

.field public static final USB_TETHERING_DISABLED_STRING:Ljava/lang/String; = "disabled"

.field protected static final USB_TETHERING_ENABLED:I = 0x1

.field public static final USB_TETHERING_ENABLED_STRING:Ljava/lang/String; = "enabled"

.field protected static final USB_TETHERING_IFACE:[Ljava/lang/String;

.field public static final USERID_RANGE:I = 0x186a0

.field public static final VENDOR_BIND_ACTION:Ljava/lang/String; = ".BIND_SERVICE_NEW"

.field public static final VENDOR_CID:Ljava/lang/String; = "vndrCid"

.field public static final VENDOR_PKG_NAME:Ljava/lang/String; = "vndrPkgN"

.field public static final VPN_CONNECTED_TIME:Ljava/lang/String; = "vpnCt"

.field public static final VPN_DIALOG_PKG:Ljava/lang/String; = "com.android.vpndialogs"

.field public static final VPN_ESTABLISHMENT_TIME:Ljava/lang/String; = "vpnEt"

.field public static final VPN_FW_PROP:Ljava/lang/String; = "net.vpn.framework"

.field public static final VPN_MODE:Ljava/lang/String; = "vpnMd"

.field public static final VPN_NAMESPACE:Ljava/lang/String; = "NS"

.field public static final VPN_PROP_PROXY_EMAIL:Ljava/lang/String; = "net.vpn.proxy.email."

.field public static VPN_RETURN_BOOL_ERROR:Z = false

.field public static final VPN_RETURN_INT_ERROR:I = -0x1

.field public static final VPN_RETURN_INT_SUCCESS:I

.field public static final WHITE_LISTED_APPLICATION_TO_SEND_FD:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 41
    const-string/jumbo v0, "knoxvpn"

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->KNOX_VPN:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->VPN_RETURN_BOOL_ERROR:Z

    .line 83
    const-string v1, "block_traffic"

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    .line 238
    const-string v1, "com.android.providers.downloads"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLACK_LISTED_APPLICATION:[Ljava/lang/String;

    .line 239
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sput-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLACK_LISTED_UID:[Ljava/lang/Integer;

    .line 240
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->WHITE_LISTED_APPLICATION_TO_SEND_FD:[Ljava/lang/String;

    .line 270
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    .line 272
    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_CREDENTIALS:Ljava/lang/String;

    .line 273
    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    .line 286
    const-string v1, "com.android.chrome"

    const-string v3, "com.sec.android.app.sbrowser"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->APPS_TO_RESTART_PROXY:[Ljava/lang/String;

    .line 300
    const-string v1, "com.samsung.android.email.provider"

    const-string v3, "com.samsung.android.email.sync"

    const-string v4, "com.samsung.android.email.ui"

    const-string v6, "com.samsung.android.email.widget"

    const-string v7, "com.samsung.android.email.composer"

    filled-new-array {v1, v3, v4, v6, v7}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->EMAIL_PACKAGE_LIST:[Ljava/lang/String;

    .line 395
    new-array v1, v2, [Ljava/lang/Integer;

    const/16 v2, 0x41b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0x405

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->AID_EXEMPT_LIST:[Ljava/lang/Integer;

    .line 401
    const-string/jumbo v0, "rndis"

    const-string/jumbo v1, "usb"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->USB_TETHERING_IFACE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
