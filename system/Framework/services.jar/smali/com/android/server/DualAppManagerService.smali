.class public Lcom/android/server/DualAppManagerService;
.super Lcom/samsung/android/app/ISemDualAppManager$Stub;
.source "DualAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DualAppManagerService$OpChangeListener;,
        Lcom/android/server/DualAppManagerService$InternalHandler;
    }
.end annotation


# static fields
.field private static final ANDROID_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final BADGE_PROVIDER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.provider.badge"

.field private static final BST_AIRMESSAGE_PACKAGE_NAME:Ljava/lang/String; = "com.bst.airmessage"

.field private static final BST_FLOATINGPROXY_PACKAGE_NAME:Ljava/lang/String; = "com.bst.floatingmsgproxy"

.field private static final CHROME_PACKAGE_NAME:Ljava/lang/String; = "com.android.chrome"

.field private static final COMMAND_ADD_WHITELISTE_PKG:Ljava/lang/String; = "addInstalledWhitelistedPkg"

.field private static final COMMAND_PRINT_WHITELISTE_PKG:Ljava/lang/String; = "printInstalledWhitelistedPkg"

.field private static final COMMAND_REMOVE_ALL_WHITELISTE_PKGS:Ljava/lang/String; = "removeAllInstalledWhitelistedPkgs"

.field private static final COMMAND_REMOVE_WHITELISTE_PKG:Ljava/lang/String; = "removeInstalledWhitelistedPkg"

.field private static final COMMAND_RENEW_WHITELISTE_PKG:Ljava/lang/String; = "renewInstalledWhitelistedPkgs"

.field private static final COMMAND_SET_NOTIFICATION_SOUND:Ljava/lang/String; = "setDualAppNotificationSound"

.field private static final COMMAND_STRING:Ljava/lang/String; = "command"

.field private static final COMMAND_UPDATE_WHITELIST_PKG:Ljava/lang/String; = "updateWhitelistPkgs"

.field private static final DAAGENT_EMPTY_CLASS:Ljava/lang/String; = "com.samsung.android.da.daagent.activity.EmptyActivity"

.field private static final DAAGENT_FORWARD_SHARE_CLASS:Ljava/lang/String; = "com.samsung.android.da.daagent.activity.ForwardShareActivity"

.field private static final DAAGENT_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.da.daagent"

.field private static final DAAGENT_REMOVE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.da.daagent.RemoveDualIM"

.field private static final DAAGENT_SWITCH_LAUNCHER_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.da.daagent.service.SwitchLauncherService"

.field private static final DA_INTENT_ACTION_ADD:Ljava/lang/String; = "com.samsung.android.da.daagent.PACKAGE_ADDED"

.field private static final DA_INTENT_ACTION_REMOVE:Ljava/lang/String; = "com.samsung.android.da.daagent.PACKAGE_REMOVED"

.field private static final DDC_PERMISSION_TAG:Ljava/lang/String; = "com.samsung.android.teelicense"

.field private static final DEFAULT_PACKAGES_NOT_FORWARDING:[Ljava/lang/String;

.field private static final DUALAPP_DEFAULT_PACKAGES:[Ljava/lang/String;

.field private static DUAL_APP_NOTIFICATION_URI:Ljava/lang/String; = null

.field private static final DUAL_APP_PROP:Ljava/lang/String; = "persist.sys.dualapp.prop"

.field private static final EXTRA_DEFAULT_LAUNCHER:Ljava/lang/String; = "defaultLauncher"

.field private static final FILE_PATH_FROM_USER_0:Ljava/lang/String; = "/storage/emulated/0/DualApp"

.field private static final GMS_OVERLAY_PERMISSION_CONTROLLER:Ljava/lang/String; = "com.google.android.overlay.modules.permissioncontroller"

.field private static final GMS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.gms"

.field private static final GMS_PERMISSION_CONTROLLER:Ljava/lang/String; = "com.google.android.permissioncontroller"

.field private static final GMS_PERMISSION_CONTROLLER_CHN:Ljava/lang/String; = "com.samsung.android.permissioncontroller"

.field private static final GSF_LOGIN_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.gsf.login"

.field private static final GSF_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.gsf"

.field private static final HIDE_FILE:Ljava/lang/String; = "/."

.field private static final KAKAOTALK_SETTINGS_THEME_URI:Ljava/lang/String; = "kakaotalk://settings/theme/"

.field private static final KEY_ALL_INSTALLED_WHITELISTED_PKGS:Ljava/lang/String; = "allInstalledWhitelistedPkgs"

.field private static final KEY_PKG_LIST:Ljava/lang/String; = "packageList"

.field private static final KEY_PKG_NAME:Ljava/lang/String; = "pkgName"

.field private static final KEY_PKG_UID:Ljava/lang/String; = "pkgUid"

.field private static final KEY_SOUND_URI:Ljava/lang/String; = "sound_uri"

.field static KNOWN_APP_PATH:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final KNOWN_PATH:[Ljava/lang/String;

.field private static final METADATA_SMART_SCAN:Ljava/lang/String; = "com.samsung.android.bbcagent.notify_install"

.field private static final MIN:I = 0xea60

.field private static final MP_ONCHNAGED_INSERT_TO_UPDATE_OVERHEAD_TIME:I = 0x1f4

.field private static final PATH_TYPE_DUALAPP:Ljava/lang/String; = "DualApp"

.field private static final PATH_TYPE_NEW:I = 0x2

.field private static final PATH_TYPE_NOT_AVAILABLE:I = 0x0

.field private static final PATH_TYPE_OLD:I = 0x1

.field private static final REGISTER_DATA_WEDGE:Ljava/lang/String; = "sys.datawedge.prop"

.field private static final REPLACE_TARGET_DUALAPP_PATH:Ljava/lang/String; = "DualApp/"

.field private static final RESULT_CODE:Ljava/lang/String; = "result_code"

.field private static final RESULT_CODE_FAIL:I = 0x0

.field private static final RESULT_CODE_SUCCESS:I = 0x1

.field private static final RESULT_DESC:Ljava/lang/String; = "result_desc"

.field private static final RESULT_DESC_FAIL:Ljava/lang/String; = "fail"

.field private static final RESULT_DESC_SUCCESS:Ljava/lang/String; = "success"

.field private static final SAMSUNG_PAY_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.spay"

.field private static final SEARCHVALUE_DUAL_USER_BY_USERID:Ljava/lang/String; = "/storage/emulated/%d/"

.field private static final SEARCHVALUE_DUAL_USER_BY_USERID_OLD:Ljava/lang/String; = "/storage/emulated/%d/DualApp/"

.field private static final SECEND:I = 0x3e8

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final SETTINGS_PROVIDER_PACKAGE_NAME:Ljava/lang/String; = "com.android.providers.settings"

.field private static final TAG:Ljava/lang/String; = "DualAppManagerService"

.field private static final TELECOM_PACKAGE_NAME:Ljava/lang/String; = "com.android.server.telecom"

.field private static final USER_0_FILE_PATH:Ljava/lang/String; = "/storage/emulated/0/"

.field private static USER_OWNER_DUALAPP_FILE_PATH:Ljava/lang/String; = null

.field private static final WEBVIEW_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.webview"

.field private static final WEIBO_PACKAGE_NAME:Ljava/lang/String; = "com.sina.weibo"

.field static inOpsCallback:I = 0x0

.field private static isNotNullInputContextNotified:Z = false

.field private static isNullInputContextNotified:Z = false

.field private static final kEYCHAIN_PACKAGE_NAME:Ljava/lang/String; = "com.android.keychain"

.field private static lastResumedActivity:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mDaMonthlyUsageCount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mDaWeeklyUsageCount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mFilterMapRemoveDuplicateFile:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static mHandler:Lcom/android/server/DualAppManagerService$InternalHandler;

.field private static mInstalledWhitelistedPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mWhitelistedPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sDAMSInstance:Lcom/android/server/DualAppManagerService;

.field private static thisWeek:I


# instance fields
.field private Flag_Request_on_Timer_running:Z

.field private Flag_Timer_running:Z

.field final KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

.field private alreadyScanedPath:Ljava/lang/String;

.field private contentObserver:Landroid/database/ContentObserver;

.field private contentObserverForDualUser:Landroid/database/ContentObserver;

.field mOpChangeListener:Lcom/android/server/DualAppManagerService$OpChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 139
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/DualAppManagerService;->mFilterMapRemoveDuplicateFile:Ljava/util/Map;

    .line 141
    new-instance v1, Lcom/android/server/DualAppManagerService$1;

    invoke-direct {v1}, Lcom/android/server/DualAppManagerService$1;-><init>()V

    sput-object v1, Lcom/android/server/DualAppManagerService;->KNOWN_APP_PATH:Ljava/util/Map;

    .line 150
    const-string v2, "Pictures"

    const-string v3, "DCIM"

    const-string v4, "Music"

    const-string v5, "Download"

    const-string v6, "Documents"

    const-string v7, "Movies"

    const-string v8, "DualApp"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/DualAppManagerService;->KNOWN_PATH:[Ljava/lang/String;

    .line 167
    const-string v2, "com.google.android.gms"

    const-string v3, "com.google.android.gsf"

    const-string v4, "com.google.android.gsf.login"

    const-string v5, "com.android.chrome"

    const-string v6, "com.google.android.permissioncontroller"

    const-string v7, "com.samsung.android.permissioncontroller"

    const-string v8, "com.google.android.overlay.modules.permissioncontroller"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/DualAppManagerService;->DEFAULT_PACKAGES_NOT_FORWARDING:[Ljava/lang/String;

    .line 171
    const-string v2, "com.android.settings"

    const-string v3, "com.android.providers.settings"

    const-string v4, "android"

    const-string v5, "com.android.keychain"

    const-string v6, "com.google.android.webview"

    const-string v7, "com.sec.android.provider.badge"

    const-string v8, "com.bst.floatingmsgproxy"

    const-string v9, "com.bst.airmessage"

    const-string v10, "com.android.server.telecom"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/DualAppManagerService;->DUALAPP_DEFAULT_PACKAGES:[Ljava/lang/String;

    .line 177
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    .line 178
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/DualAppManagerService;->mWhitelistedPkgMap:Ljava/util/HashMap;

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/DualAppManagerService;->mDaWeeklyUsageCount:Ljava/util/List;

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/DualAppManagerService;->mDaMonthlyUsageCount:Ljava/util/List;

    .line 182
    const/4 v1, -0x1

    sput v1, Lcom/android/server/DualAppManagerService;->thisWeek:I

    .line 184
    sput-object v0, Lcom/android/server/DualAppManagerService;->DUAL_APP_NOTIFICATION_URI:Ljava/lang/String;

    .line 186
    sput-object v0, Lcom/android/server/DualAppManagerService;->sDAMSInstance:Lcom/android/server/DualAppManagerService;

    .line 188
    sput-object v0, Lcom/android/server/DualAppManagerService;->mHandler:Lcom/android/server/DualAppManagerService$InternalHandler;

    .line 193
    sput-object v0, Lcom/android/server/DualAppManagerService;->lastResumedActivity:Ljava/lang/String;

    .line 194
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/DualAppManagerService;->isNotNullInputContextNotified:Z

    .line 195
    sput-boolean v0, Lcom/android/server/DualAppManagerService;->isNullInputContextNotified:Z

    .line 197
    const-string v0, "file:///storage/emulated/%d/%s"

    sput-object v0, Lcom/android/server/DualAppManagerService;->USER_OWNER_DUALAPP_FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 329
    invoke-direct {p0}, Lcom/samsung/android/app/ISemDualAppManager$Stub;-><init>()V

    .line 158
    const-string v0, "(?i)(^/storage/[^/]+/(?:([0-9]+)/))([^/]+)?/(.*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DualAppManagerService;->KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DualAppManagerService;->Flag_Timer_running:Z

    .line 160
    iput-boolean v0, p0, Lcom/android/server/DualAppManagerService;->Flag_Request_on_Timer_running:Z

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DualAppManagerService;->alreadyScanedPath:Ljava/lang/String;

    .line 274
    new-instance v1, Lcom/android/server/DualAppManagerService$OpChangeListener;

    invoke-direct {v1, p0}, Lcom/android/server/DualAppManagerService$OpChangeListener;-><init>(Lcom/android/server/DualAppManagerService;)V

    iput-object v1, p0, Lcom/android/server/DualAppManagerService;->mOpChangeListener:Lcom/android/server/DualAppManagerService$OpChangeListener;

    .line 1423
    new-instance v1, Lcom/android/server/DualAppManagerService$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/DualAppManagerService$2;-><init>(Lcom/android/server/DualAppManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/DualAppManagerService;->contentObserver:Landroid/database/ContentObserver;

    .line 1476
    new-instance v1, Lcom/android/server/DualAppManagerService$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/DualAppManagerService$3;-><init>(Lcom/android/server/DualAppManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/DualAppManagerService;->contentObserverForDualUser:Landroid/database/ContentObserver;

    .line 330
    new-instance v1, Lcom/android/server/DualAppManagerService$InternalHandler;

    invoke-direct {v1, p0, v0}, Lcom/android/server/DualAppManagerService$InternalHandler;-><init>(Lcom/android/server/DualAppManagerService;Lcom/android/server/DualAppManagerService$1;)V

    sput-object v1, Lcom/android/server/DualAppManagerService;->mHandler:Lcom/android/server/DualAppManagerService$InternalHandler;

    .line 331
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .line 65
    sget-object v0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 65
    invoke-static {p0}, Lcom/android/server/DualAppManagerService;->updateWedgeAboutActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(IIILjava/lang/Object;J)V
    .registers 6
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;
    .param p4, "x4"    # J

    .line 65
    invoke-static/range {p0 .. p5}, Lcom/android/server/DualAppManagerService;->sendInternalMsg(IIILjava/lang/Object;J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/DualAppManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/DualAppManagerService;

    .line 65
    invoke-direct {p0}, Lcom/android/server/DualAppManagerService;->registerContentObserver()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/DualAppManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DualAppManagerService;
    .param p1, "x1"    # I

    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/DualAppManagerService;->registerContentObserverForDualUser(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/DualAppManagerService;)Landroid/database/ContentObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DualAppManagerService;

    .line 65
    iget-object v0, p0, Lcom/android/server/DualAppManagerService;->contentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/DualAppManagerService;)Landroid/database/ContentObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DualAppManagerService;

    .line 65
    iget-object v0, p0, Lcom/android/server/DualAppManagerService;->contentObserverForDualUser:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;I)V
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .line 65
    invoke-static {p0, p1}, Lcom/android/server/DualAppManagerService;->updateWedgeAboutInputContext(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .registers 1

    .line 65
    sget-object v0, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/DualAppManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DualAppManagerService;

    .line 65
    iget-boolean v0, p0, Lcom/android/server/DualAppManagerService;->Flag_Timer_running:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/DualAppManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DualAppManagerService;
    .param p1, "x1"    # Z

    .line 65
    iput-boolean p1, p0, Lcom/android/server/DualAppManagerService;->Flag_Timer_running:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/DualAppManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DualAppManagerService;

    .line 65
    iget-boolean v0, p0, Lcom/android/server/DualAppManagerService;->Flag_Request_on_Timer_running:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/DualAppManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DualAppManagerService;
    .param p1, "x1"    # Z

    .line 65
    iput-boolean p1, p0, Lcom/android/server/DualAppManagerService;->Flag_Request_on_Timer_running:Z

    return p1
.end method

.method static synthetic access$700()Ljava/util/Map;
    .registers 1

    .line 65
    sget-object v0, Lcom/android/server/DualAppManagerService;->mFilterMapRemoveDuplicateFile:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/DualAppManagerService;Landroid/net/Uri;I)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/DualAppManagerService;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # I

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/server/DualAppManagerService;->getPathFromURI(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/DualAppManagerService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DualAppManagerService;

    .line 65
    iget-object v0, p0, Lcom/android/server/DualAppManagerService;->alreadyScanedPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/DualAppManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DualAppManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/android/server/DualAppManagerService;->alreadyScanedPath:Ljava/lang/String;

    return-object p1
.end method

.method public static addDualAppResolveInfo(Landroid/content/Intent;II)Z
    .registers 6
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I

    .line 945
    const/4 v0, 0x0

    .line 946
    .local v0, "ret":Z
    sget-object v1, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 947
    return v0

    .line 949
    :cond_a
    if-nez p2, :cond_2d

    .line 950
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_2d

    .line 951
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 952
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 953
    :cond_2c
    const/4 v0, 0x1

    .line 956
    :cond_2d
    return v0
.end method

.method private addOpChangeListener(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 283
    return-void
.end method

.method private addWhitelistedPkg(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 11
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 793
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 795
    .local v0, "ret":Landroid/os/Bundle;
    const-string/jumbo v1, "pkgName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 796
    .local v1, "pkgName":Ljava/lang/String;
    const-string/jumbo v2, "pkgUid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 798
    .local v2, "uid":I
    const/4 v3, 0x0

    const-string/jumbo v4, "result_desc"

    const-string/jumbo v5, "result_code"

    if-nez v1, :cond_26

    .line 799
    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 800
    const-string/jumbo v3, "package name is null"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 801
    :cond_26
    sget-object v6, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_39

    .line 802
    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 803
    const-string/jumbo v3, "package is already added"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 806
    :cond_39
    :try_start_39
    sget-object v6, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 808
    const-string/jumbo v6, "success"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_4b} :catch_4c

    .line 812
    goto :goto_57

    .line 809
    :catch_4c
    move-exception v6

    .line 810
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 811
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_57
    invoke-direct {p0, v1}, Lcom/android/server/DualAppManagerService;->addOpChangeListener(Ljava/lang/String;)V

    .line 817
    :goto_5a
    return-object v0
.end method

.method public static changeInfoIfDeletingDualApp(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ILjava/lang/String;)Landroid/content/pm/ActivityInfo;
    .registers 15
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "in"    # Landroid/content/Intent;
    .param p3, "userId"    # I
    .param p4, "callingPkg"    # Ljava/lang/String;

    .line 701
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 702
    return-object v0

    .line 705
    :cond_4
    const-string v1, "com.samsung.android.da.daagent"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 707
    return-object p1

    .line 710
    :cond_d
    const-string v2, "com.android.settings"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 712
    return-object p1

    .line 715
    :cond_16
    invoke-static {p4}, Lcom/samsung/android/app/SemDualAppManager;->isSamsungLauncher(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 717
    return-object p1

    .line 720
    :cond_1d
    const/4 v2, 0x0

    .line 721
    .local v2, "extraPkgName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 722
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 725
    :cond_2c
    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/SemDualAppManager;->isWhitelistedPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 727
    return-object p1

    .line 730
    :cond_37
    const-string v3, "android.intent.extra.USER"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 731
    .local v3, "extraUser":Landroid/os/UserHandle;
    const/16 v4, -0x2710

    .line 732
    .local v4, "extraId":I
    if-eqz v3, :cond_48

    .line 733
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    goto :goto_49

    .line 735
    :cond_48
    move v4, p3

    .line 738
    :goto_49
    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v5

    if-nez v5, :cond_52

    if-eqz v4, :cond_52

    .line 740
    return-object p1

    .line 743
    :cond_52
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 744
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 745
    .local v6, "intent":Landroid/content/Intent;
    const-string v7, "com.samsung.android.da.daagent.RemoveDualIM"

    invoke-virtual {v6, v1, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    const v8, 0x10480

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v8, v9}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 748
    .local v8, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_6c

    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 749
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_6c
    if-eqz v0, :cond_88

    .line 750
    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v7, "com.samsung.android.da.original_intent"

    invoke-virtual {p2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 752
    const-string/jumbo v1, "packageName"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    const-string/jumbo v1, "userId"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 754
    return-object v0

    .line 756
    :cond_88
    return-object p1
.end method

.method public static changeUriForDualApp(Landroid/content/Intent;I)V
    .registers 9
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "userId"    # I

    .line 905
    const-string/jumbo v0, "output"

    :try_start_3
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 906
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_19

    invoke-static {v1, p1}, Lcom/samsung/android/app/SemDualAppManager;->shouldAddUserId(Landroid/net/Uri;I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 907
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    move-object v1, v2

    .line 908
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 910
    :cond_19
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 911
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ClipData;->fixUris(I)V

    .line 913
    :cond_26
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/SemDualAppManager;->shouldAddUserId(Landroid/net/Uri;I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 914
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    .line 915
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 917
    :cond_46
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_50} :catch_ba

    const-string v2, "android.intent.extra.STREAM"

    if-eqz v0, :cond_8b

    .line 918
    :try_start_54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 919
    .local v0, "convertList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 920
    .local v3, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v3, :cond_b8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b8

    .line 921
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_69
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_87

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 922
    .local v5, "u":Landroid/net/Uri;
    invoke-static {v5, p1}, Lcom/samsung/android/app/SemDualAppManager;->shouldAddUserId(Landroid/net/Uri;I)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 923
    invoke-static {v5, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_86

    .line 925
    :cond_83
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    .end local v5    # "u":Landroid/net/Uri;
    :goto_86
    goto :goto_69

    .line 928
    :cond_87
    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_b8

    .line 930
    .end local v0    # "convertList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v3    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_8b
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 931
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_b9

    .line 932
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 933
    .end local v1    # "uri":Landroid/net/Uri;
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_b9

    invoke-static {v0, p1}, Lcom/samsung/android/app/SemDualAppManager;->shouldAddUserId(Landroid/net/Uri;I)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 934
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    move-object v0, v1

    .line 935
    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_b7} :catch_ba

    goto :goto_b9

    .line 930
    .end local v0    # "uri":Landroid/net/Uri;
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_b8
    :goto_b8
    nop

    .line 941
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_b9
    :goto_b9
    goto :goto_be

    .line 939
    :catch_ba
    move-exception v0

    .line 940
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 942
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_be
    return-void
.end method

.method private checkAvailableFilePath(Ljava/lang/String;I)I
    .registers 10
    .param p1, "originFilePath"    # Ljava/lang/String;
    .param p2, "convertTargetuserId"    # I

    .line 1566
    iget-object v0, p0, Lcom/android/server/DualAppManagerService;->KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1567
    .local v0, "matcher":Ljava/util/regex/Matcher;
    sget-object v1, Lcom/android/server/DualAppManagerService;->mFilterMapRemoveDuplicateFile:Ljava/util/Map;

    monitor-enter v1

    .line 1568
    :try_start_9
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5a

    .line 1569
    sget-object v2, Lcom/android/server/DualAppManagerService;->KNOWN_APP_PATH:Ljava/util/Map;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 1570
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 1571
    .local v2, "scopedfilepath":Ljava/lang/String;
    if-eqz v2, :cond_35

    const-string v5, "DualApp/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 1572
    const-string v5, "DualApp/"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 1574
    :cond_35
    sget-object v5, Lcom/android/server/DualAppManagerService;->mFilterMapRemoveDuplicateFile:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 1575
    monitor-exit v1

    return v3

    .line 1577
    :cond_3f
    sget-object v3, Lcom/android/server/DualAppManagerService;->mFilterMapRemoveDuplicateFile:Ljava/util/Map;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    const-string v3, "DualApp"

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 1579
    monitor-exit v1

    return v5

    .line 1581
    :cond_57
    const/4 v3, 0x2

    monitor-exit v1

    return v3

    .line 1585
    .end local v2    # "scopedfilepath":Ljava/lang/String;
    :cond_5a
    monitor-exit v1

    .line 1586
    return v3

    .line 1585
    :catchall_5c
    move-exception v2

    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_9 .. :try_end_5e} :catchall_5c

    throw v2
.end method

.method public static checkLauncherSwitch(Landroid/content/IntentFilter;ILandroid/content/ComponentName;I)V
    .registers 7
    .param p0, "filter"    # Landroid/content/IntentFilter;
    .param p1, "match"    # I
    .param p2, "activity"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .line 892
    :try_start_0
    sget-object v0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3a

    if-nez p3, :cond_3a

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "android.intent.category.DEFAULT"

    .line 893
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/high16 v0, 0x100000

    if-eq p1, v0, :cond_31

    const v0, 0x108000

    if-ne p1, v0, :cond_3a

    .line 896
    :cond_31
    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1}, Lcom/android/server/DualAppManagerService;->sendInternalMsg(IIILjava/lang/Object;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    .line 900
    :cond_3a
    goto :goto_3f

    .line 898
    :catch_3b
    move-exception v0

    .line 899
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 901
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3f
    return-void
.end method

.method private convertFilePath(Ljava/lang/String;II)Ljava/lang/String;
    .registers 13
    .param p1, "originFile"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "filetype"    # I

    .line 1516
    const/4 v0, 0x0

    .line 1517
    .local v0, "ScanTargetFile":Ljava/lang/String;
    invoke-static {p2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    const-string v2, "/storage/emulated/%d/"

    const-string v3, "/storage/emulated/%d/DualApp/"

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "/storage/emulated/0/"

    const-string v8, "file://"

    if-eqz v1, :cond_58

    .line 1518
    if-ne p3, v4, :cond_36

    .line 1519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a3

    .line 1521
    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a3

    .line 1523
    :cond_58
    if-nez p2, :cond_a3

    .line 1524
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v1

    .line 1525
    .local v1, "dualAppId":I
    if-ne p3, v4, :cond_82

    .line 1526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v5

    invoke-static {v4, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a3

    .line 1528
    :cond_82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v5

    invoke-static {v4, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1531
    .end local v1    # "dualAppId":I
    :cond_a3
    :goto_a3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertFilePath result is :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DualAppManagerService"

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    return-object v0
.end method

.method public static final getAllInstalledWhitelistedPkgMap()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 590
    sget-object v0, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final getAllInstalledWhitelistedUids()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 553
    const/4 v0, 0x0

    .line 556
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_1
    sget-object v1, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 557
    .local v1, "uids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_f

    .line 558
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_10

    move-object v0, v2

    .line 563
    .end local v1    # "uids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    :cond_f
    goto :goto_1b

    .line 560
    :catch_10
    move-exception v1

    .line 561
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DualAppManagerService"

    const-string v3, "Exception occured in getAllInstalledWhitelistedUids. retrun null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 565
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1b
    return-object v0
.end method

.method public static final getAllPkgNameByUid(I)Ljava/util/List;
    .registers 6
    .param p0, "Uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 598
    .local v1, "integer":Ljava/lang/Integer;
    :try_start_9
    sget-object v2, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 599
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 600
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_32} :catch_34

    .line 602
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_32
    goto :goto_13

    .line 606
    :cond_33
    goto :goto_3f

    .line 603
    :catch_34
    move-exception v2

    .line 604
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "DualAppManagerService"

    const-string v4, "Exception occured in getAllPkgNameByUid. retrun null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 608
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3f
    return-object v0
.end method

.method public static getDualAppNotificationSound()Ljava/lang/String;
    .registers 2

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getDualAppNotificationSound : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/DualAppManagerService;->DUAL_APP_NOTIFICATION_URI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualAppManagerService"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    sget-object v0, Lcom/android/server/DualAppManagerService;->DUAL_APP_NOTIFICATION_URI:Ljava/lang/String;

    return-object v0
.end method

.method public static final getFirstPkgNameByUid(I)Ljava/lang/String;
    .registers 6
    .param p0, "Uid"    # I

    .line 612
    const/4 v0, 0x0

    .line 613
    .local v0, "res":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 616
    .local v1, "integer":Ljava/lang/Integer;
    :try_start_5
    sget-object v2, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 617
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 618
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2b} :catch_2f

    move-object v0, v2

    .line 619
    goto :goto_2e

    .line 621
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2d
    goto :goto_f

    .line 625
    :cond_2e
    :goto_2e
    goto :goto_3a

    .line 622
    :catch_2f
    move-exception v2

    .line 623
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "DualAppManagerService"

    const-string v4, "Exception occured in getFirstPkgNameByUid. retrun null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 627
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3a
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/DualAppManagerService;
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;

    .line 334
    sget-object v0, Lcom/android/server/DualAppManagerService;->sDAMSInstance:Lcom/android/server/DualAppManagerService;

    if-nez v0, :cond_19

    .line 335
    const-class v0, Lcom/android/server/DualAppManagerService;

    monitor-enter v0

    .line 336
    :try_start_7
    sget-object v1, Lcom/android/server/DualAppManagerService;->sDAMSInstance:Lcom/android/server/DualAppManagerService;

    if-nez v1, :cond_14

    .line 337
    new-instance v1, Lcom/android/server/DualAppManagerService;

    invoke-direct {v1}, Lcom/android/server/DualAppManagerService;-><init>()V

    sput-object v1, Lcom/android/server/DualAppManagerService;->sDAMSInstance:Lcom/android/server/DualAppManagerService;

    .line 338
    sput-object p0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 340
    :cond_14
    monitor-exit v0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v1

    .line 342
    :cond_19
    :goto_19
    sget-object v0, Lcom/android/server/DualAppManagerService;->sDAMSInstance:Lcom/android/server/DualAppManagerService;

    return-object v0
.end method

.method private getPathFromURI(Landroid/net/Uri;I)Ljava/lang/String;
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "convertTargetuserId"    # I

    .line 1536
    const/4 v0, 0x0

    .line 1538
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    :try_start_2
    const-string v2, "_data"

    const-string/jumbo v3, "is_pending"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 1539
    .local v6, "proj":[Ljava/lang/String;
    sget-object v2, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 1540
    if-eqz v0, :cond_6d

    .line 1541
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 1542
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1543
    .local v2, "originFilePath":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1544
    .local v4, "isPending":I
    const-string v5, "DualAppManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPathFromURI isPending :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    if-eqz v2, :cond_6d

    const-string v5, "/."

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6d

    if-nez v4, :cond_6d

    .line 1546
    invoke-static {p2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v5

    if-eqz v5, :cond_5d

    const-string v5, "/storage/emulated/0/DualApp"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6d

    .line 1547
    :cond_5d
    invoke-direct {p0, v2, p2}, Lcom/android/server/DualAppManagerService;->checkAvailableFilePath(Ljava/lang/String;I)I

    move-result v5

    .line 1548
    .local v5, "resultCheckedFilePathType":I
    if-lt v5, v3, :cond_6d

    .line 1549
    invoke-direct {p0, v2, p2, v5}, Lcom/android/server/DualAppManagerService;->convertFilePath(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_67} :catch_76
    .catchall {:try_start_2 .. :try_end_67} :catchall_74

    .line 1559
    if-eqz v0, :cond_6c

    .line 1560
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1549
    :cond_6c
    return-object v1

    .line 1554
    .end local v2    # "originFilePath":Ljava/lang/String;
    .end local v4    # "isPending":I
    .end local v5    # "resultCheckedFilePathType":I
    :cond_6d
    nop

    .line 1559
    if-eqz v0, :cond_73

    .line 1560
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1554
    :cond_73
    return-object v1

    .line 1559
    .end local v6    # "proj":[Ljava/lang/String;
    :catchall_74
    move-exception v1

    goto :goto_81

    .line 1555
    :catch_76
    move-exception v2

    .line 1556
    .local v2, "e":Ljava/lang/Exception;
    :try_start_77
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_74

    .line 1557
    nop

    .line 1559
    if-eqz v0, :cond_80

    .line 1560
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1557
    :cond_80
    return-object v1

    .line 1559
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_81
    if-eqz v0, :cond_86

    .line 1560
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1562
    :cond_86
    throw v1
.end method

.method public static getUidByPkgName(Ljava/lang/String;)I
    .registers 5
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 631
    const/4 v0, -0x1

    .line 634
    .local v0, "res":I
    :try_start_1
    sget-object v1, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 635
    .local v1, "integer":Ljava/lang/Integer;
    if-eqz v1, :cond_10

    .line 636
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    move v0, v2

    .line 641
    .end local v1    # "integer":Ljava/lang/Integer;
    :cond_10
    goto :goto_1c

    .line 638
    :catch_11
    move-exception v1

    .line 639
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DualAppManagerService"

    const-string v3, "Exception occured in getUidByPkgName. retrun -1"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 643
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1c
    return v0
.end method

.method public static getUserIdForQuery(Ljava/util/List;I)I
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)I"
        }
    .end annotation

    .line 691
    .local p0, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 692
    .local v1, "resolveinfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 693
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 692
    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 694
    return p1

    .line 696
    .end local v1    # "resolveinfo":Landroid/content/pm/ResolveInfo;
    :cond_21
    goto :goto_4

    .line 697
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method static hasExternalAppDirPath(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 12
    .param p0, "share_intent"    # Landroid/content/Intent;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/storage/emulated/0/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1091
    .local v0, "EXTERNAL_PATH":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.extra.STREAM"

    const/4 v3, 0x1

    const-string v4, "file"

    if-eqz v1, :cond_a9

    .line 1093
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    .line 1095
    .local v1, "clipData":Landroid/content/ClipData;
    if-eqz v1, :cond_5a

    .line 1096
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    .local v5, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {v1, v5}, Landroid/content/ClipData;->collectUris(Ljava/util/List;)V

    .line 1100
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_34
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 1101
    .local v7, "uri":Landroid/net/Uri;
    if-eqz v7, :cond_59

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    .line 1102
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 1103
    .local v8, "path":Ljava/lang/String;
    if-eqz v8, :cond_59

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_59

    .line 1104
    return v3

    .line 1107
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "path":Ljava/lang/String;
    :cond_59
    goto :goto_34

    .line 1112
    .end local v1    # "clipData":Landroid/content/ClipData;
    .end local v5    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_5a
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1113
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_77

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 1114
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 1115
    .local v5, "path":Ljava/lang/String;
    if-eqz v5, :cond_77

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 1116
    return v3

    .line 1122
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v5    # "path":Ljava/lang/String;
    :cond_77
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1124
    .local v1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v1, :cond_a7

    .line 1125
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_81
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 1126
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_a6

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a6

    .line 1127
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 1128
    .local v6, "path":Ljava/lang/String;
    if-eqz v6, :cond_a6

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a6

    .line 1129
    return v3

    .line 1132
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "path":Ljava/lang/String;
    :cond_a6
    goto :goto_81

    .line 1134
    .end local v1    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_a7
    goto/16 :goto_12d

    .line 1136
    :cond_a9
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12d

    .line 1138
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    .line 1140
    .local v1, "clipData":Landroid/content/ClipData;
    if-eqz v1, :cond_ed

    .line 1141
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1143
    .local v5, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {v1, v5}, Landroid/content/ClipData;->collectUris(Ljava/util/List;)V

    .line 1145
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ed

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 1146
    .restart local v7    # "uri":Landroid/net/Uri;
    if-eqz v7, :cond_ec

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ec

    .line 1147
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 1148
    .restart local v8    # "path":Ljava/lang/String;
    if-eqz v8, :cond_ec

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ec

    .line 1149
    return v3

    .line 1152
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "path":Ljava/lang/String;
    :cond_ec
    goto :goto_c7

    .line 1157
    .end local v1    # "clipData":Landroid/content/ClipData;
    .end local v5    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_ed
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1158
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_10a

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10a

    .line 1159
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 1160
    .local v5, "path":Ljava/lang/String;
    if-eqz v5, :cond_10a

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10a

    .line 1161
    return v3

    .line 1167
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v5    # "path":Ljava/lang/String;
    :cond_10a
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 1169
    .restart local v1    # "uri":Landroid/net/Uri;
    if-eqz v1, :cond_12d

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12d

    .line 1170
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1171
    .local v2, "path":Ljava/lang/String;
    if-eqz v2, :cond_12d

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12d

    .line 1172
    return v3

    .line 1178
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "path":Ljava/lang/String;
    :cond_12d
    :goto_12d
    const/4 v1, 0x0

    return v1
.end method

.method public static isDefalutAppPackage(Ljava/lang/String;)Z
    .registers 7
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 1005
    const/4 v0, 0x0

    if-eqz p0, :cond_20

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_20

    .line 1009
    :cond_c
    sget-object v1, Lcom/android/server/DualAppManagerService;->DUALAPP_DEFAULT_PACKAGES:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_10
    if-ge v3, v2, :cond_1f

    aget-object v4, v1, v3

    .line 1010
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1011
    const/4 v0, 0x1

    return v0

    .line 1009
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1015
    :cond_1f
    return v0

    .line 1006
    :cond_20
    :goto_20
    return v0
.end method

.method private static isFilteredPackage(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 12
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 433
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 434
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 436
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    const/16 v2, 0x1000

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_9
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    move-object v1, v2

    .line 437
    if-eqz v1, :cond_3f

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_3f

    .line 438
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v5, v2

    move v6, v4

    :goto_18
    if-ge v6, v5, :cond_3f

    aget-object v7, v2, v6

    .line 439
    .local v7, "temp":Ljava/lang/String;
    const-string v8, "com.samsung.android.teelicense"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 440
    const-string v2, "DualAppManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "this is DDC app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3b} :catch_40

    .line 441
    return v3

    .line 438
    .end local v7    # "temp":Ljava/lang/String;
    :cond_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 448
    :cond_3f
    goto :goto_44

    .line 445
    :catch_40
    move-exception v2

    .line 447
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 450
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_44
    const-string v2, "com.samsung.android.app.smartscan"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 451
    return v4

    .line 455
    :cond_4d
    const/16 v2, 0x80

    :try_start_4f
    invoke-virtual {v0, p1, v2, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    move-object v1, v2

    .line 456
    if-eqz v1, :cond_69

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_69

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.samsung.android.bbcagent.notify_install"

    .line 457
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_66} :catch_6a

    if-eqz v2, :cond_69

    .line 458
    return v3

    .line 462
    :cond_69
    goto :goto_6e

    .line 460
    :catch_6a
    move-exception v2

    .line 461
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 463
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_6e
    return v4
.end method

.method public static isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z
    .registers 4
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 663
    :try_start_0
    sget-object v0, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_b

    if-eqz v0, :cond_a

    .line 664
    const/4 v0, 0x1

    return v0

    .line 669
    :cond_a
    goto :goto_16

    .line 666
    :catch_b
    move-exception v0

    .line 667
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DualAppManagerService"

    const-string v2, "Exception occured in isInstalledWhitelistedPackageInternal. retrun false"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 671
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method public static isInstalledWhitelistedUid(I)Z
    .registers 4
    .param p0, "uid"    # I

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isInstalledWhitelistedUid. uid = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualAppManagerService"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :try_start_1c
    sget-object v0, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 679
    const-string v0, "Found!"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2d} :catch_30

    .line 680
    const/4 v0, 0x1

    return v0

    .line 685
    :cond_2f
    goto :goto_39

    .line 682
    :catch_30
    move-exception v0

    .line 683
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Exception occured in isInstalledWhitelistedUid. retrun false"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 687
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_39
    const/4 v0, 0x0

    return v0
.end method

.method public static isLauncherAppTarget(Landroid/content/Intent;)Z
    .registers 7
    .param p0, "launchIntent"    # Landroid/content/Intent;

    .line 965
    const/4 v0, 0x0

    .line 966
    .local v0, "ret":Z
    if-eqz p0, :cond_8c

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 967
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_8c

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_8c

    .line 968
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8c

    .line 969
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 970
    const-string v1, "android.intent.category.INFO"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 971
    :cond_36
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 973
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 974
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_48

    .line 975
    const/4 v0, 0x1

    goto :goto_63

    .line 977
    :cond_48
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 979
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_4c
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-ne v5, v3, :cond_5c

    const-string/jumbo v5, "profile"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_59} :catch_5f

    if-eqz v5, :cond_5c

    goto :goto_5d

    :cond_5c
    const/4 v3, 0x0

    :goto_5d
    move v0, v3

    .line 982
    goto :goto_63

    .line 980
    :catch_5f
    move-exception v3

    .line 981
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 984
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_63
    if-eqz v0, :cond_8c

    .line 985
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 986
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 987
    const/4 v3, 0x0

    .line 989
    .local v3, "defaultLauncher":Ljava/lang/String;
    :try_start_71
    sget-object v4, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_81} :catch_83

    move-object v3, v4

    .line 993
    goto :goto_87

    .line 991
    :catch_83
    move-exception v4

    .line 992
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 994
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_87
    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isSamsungLauncher(Ljava/lang/String;)Z

    move-result v4

    return v4

    .line 997
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "defaultLauncher":Ljava/lang/String;
    :cond_8c
    return v0
.end method

.method public static isSelfContainedAction(ILjava/lang/String;)Z
    .registers 7
    .param p0, "uid"    # I
    .param p1, "action"    # Ljava/lang/String;

    .line 569
    const/4 v0, 0x0

    .line 572
    .local v0, "ret":Z
    if-nez p1, :cond_5

    .line 573
    const/4 v1, 0x0

    return v1

    .line 576
    :cond_5
    invoke-static {p0}, Lcom/android/server/DualAppManagerService;->getAllPkgNameByUid(I)Ljava/util/List;

    move-result-object v1

    .line 578
    .local v1, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_24

    .line 579
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 580
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 581
    const/4 v2, 0x1

    return v2

    .line 583
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_23
    goto :goto_f

    .line 586
    :cond_24
    return v0
.end method

.method public static mayForwardInstalledPackagesToOwner(II)Z
    .registers 5
    .param p0, "flags"    # I
    .param p1, "callingUid"    # I

    .line 1053
    sget-object v0, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1054
    return v1

    .line 1056
    :cond_a
    invoke-static {p1}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedUid(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1057
    return v1

    .line 1059
    :cond_11
    invoke-static {p1}, Lcom/android/server/DualAppManagerService;->getFirstPkgNameByUid(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.kakao.talk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1060
    const/4 v0, 0x1

    return v0

    .line 1061
    :cond_1f
    return v1
.end method

.method public static mayForwardIntent(Landroid/content/Intent;)Z
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 1065
    if-eqz p0, :cond_57

    .line 1066
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1068
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 1069
    return v2

    .line 1070
    :cond_10
    const-string v1, "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1071
    return v2

    .line 1072
    :cond_19
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1073
    return v2

    .line 1074
    :cond_2a
    const-string v1, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    const-string v1, "android.content.pm.action.REQUEST_PERMISSIONS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    goto :goto_56

    .line 1076
    :cond_3b
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1077
    return v2

    .line 1078
    :cond_44
    const-string v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1079
    return v2

    .line 1080
    :cond_4d
    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1081
    return v2

    .line 1075
    :cond_56
    :goto_56
    return v2

    .line 1085
    .end local v0    # "action":Ljava/lang/String;
    :cond_57
    const/4 v0, 0x1

    return v0
.end method

.method public static mayForwardShare(Landroid/content/Intent;Ljava/lang/String;II)Z
    .registers 13
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "targetUserId"    # I
    .param p3, "callingUserId"    # I

    .line 1183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1184
    return v1

    .line 1188
    :cond_8
    const-string v0, "com.samsung.android.da.daagent.FORWARD_SHARE_FROM_OWNER"

    if-eqz p0, :cond_28

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_28

    .line 1189
    :cond_17
    const-string v0, "DualAppManagerService"

    const-string/jumbo v1, "illegal action. this action doens\'t use other app."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "not allow this action"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1194
    :cond_28
    :goto_28
    :try_start_28
    invoke-static {p3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2c} :catch_b0

    const/4 v3, 0x1

    const-string v4, "com.samsung.android.da.daagent.activity.ForwardShareActivity"

    const-string v5, "android.intent.extra.INTENT"

    const-string v6, "com.samsung.android.da.daagent"

    if-eqz v2, :cond_72

    .line 1195
    move-object v0, p0

    .line 1197
    .local v0, "share_intent":Landroid/content/Intent;
    if-eqz p0, :cond_4f

    :try_start_38
    const-string v2, "android.intent.action.CHOOSER"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 1198
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    move-object v0, v2

    .line 1201
    :cond_4f
    if-nez v0, :cond_52

    .line 1202
    return v1

    .line 1204
    :cond_52
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 1205
    return v1

    .line 1207
    :cond_59
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_60

    .line 1208
    return v1

    .line 1211
    :cond_60
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 1212
    return v1

    .line 1215
    :cond_67
    invoke-static {v0, p1}, Lcom/android/server/DualAppManagerService;->hasExternalAppDirPath(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 1216
    invoke-virtual {p0, v6, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1217
    return v3

    .line 1215
    .end local v0    # "share_intent":Landroid/content/Intent;
    :cond_71
    goto :goto_ae

    .line 1219
    :cond_72
    if-nez p3, :cond_ae

    .line 1222
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 1224
    .local v2, "targetPackage":Ljava/lang/String;
    if-nez v2, :cond_85

    .line 1225
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 1227
    .local v7, "compName":Landroid/content/ComponentName;
    if-eqz v7, :cond_85

    .line 1228
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 1232
    .end local v7    # "compName":Landroid/content/ComponentName;
    :cond_85
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 1233
    return v1

    .line 1236
    :cond_8c
    invoke-static {p2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v7

    if-eqz v7, :cond_af

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_af

    .line 1237
    invoke-static {p0, p1}, Lcom/android/server/DualAppManagerService;->hasExternalAppDirPath(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_af

    .line 1238
    invoke-virtual {p0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    invoke-virtual {p0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1239
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1240
    invoke-virtual {p0, v6, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_ad} :catch_b0

    .line 1242
    return v3

    .line 1219
    .end local v2    # "targetPackage":Ljava/lang/String;
    :cond_ae
    :goto_ae
    nop

    .line 1248
    :cond_af
    goto :goto_b1

    .line 1246
    :catch_b0
    move-exception v0

    .line 1250
    :goto_b1
    return v1
.end method

.method public static notifyActivityResumedLocked(ILjava/lang/String;)V
    .registers 6
    .param p0, "state"    # I
    .param p1, "ComponentName"    # Ljava/lang/String;

    .line 346
    const-string/jumbo v0, "sys.datawedge.prop"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 347
    .local v0, "registerDataWedge":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_33

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DW::notifyActivityResumedLocked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DualAppManagerService"

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    sput-object p1, Lcom/android/server/DualAppManagerService;->lastResumedActivity:Ljava/lang/String;

    .line 350
    sput-boolean v1, Lcom/android/server/DualAppManagerService;->isNullInputContextNotified:Z

    .line 351
    sput-boolean v1, Lcom/android/server/DualAppManagerService;->isNotNullInputContextNotified:Z

    .line 352
    const/4 v2, 0x4

    invoke-static {v2, v1, v1, p1}, Lcom/android/server/DualAppManagerService;->sendInternalMsg(IIILjava/lang/Object;)V

    .line 354
    :cond_33
    return-void
.end method

.method public static notifyInputContextChanged(ILjava/lang/String;Z)V
    .registers 10
    .param p0, "editInfoId"    # I
    .param p1, "currentPkg"    # Ljava/lang/String;
    .param p2, "newInputContextNotNull"    # Z

    .line 357
    const-string/jumbo v0, "sys.datawedge.prop"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 358
    .local v0, "registerDataWedge":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4e

    .line 359
    const-string/jumbo v3, "|"

    const/4 v4, 0x5

    if-nez p2, :cond_2f

    .line 361
    sget-boolean v5, Lcom/android/server/DualAppManagerService;->isNullInputContextNotified:Z

    if-nez v5, :cond_4e

    .line 363
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/server/DualAppManagerService;->lastResumedActivity:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v1, v1, v3}, Lcom/android/server/DualAppManagerService;->sendInternalMsg(IIILjava/lang/Object;)V

    .line 364
    sput-boolean v2, Lcom/android/server/DualAppManagerService;->isNullInputContextNotified:Z

    goto :goto_4e

    .line 368
    :cond_2f
    sget-boolean v5, Lcom/android/server/DualAppManagerService;->isNotNullInputContextNotified:Z

    if-nez v5, :cond_4e

    .line 370
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/server/DualAppManagerService;->lastResumedActivity:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v2, v1, v3}, Lcom/android/server/DualAppManagerService;->sendInternalMsg(IIILjava/lang/Object;)V

    .line 371
    sput-boolean v2, Lcom/android/server/DualAppManagerService;->isNotNullInputContextNotified:Z

    .line 373
    sput-boolean v2, Lcom/android/server/DualAppManagerService;->isNullInputContextNotified:Z

    .line 377
    :cond_4e
    :goto_4e
    return-void
.end method

.method private printInstalledWhitelistedPkg()V
    .registers 6

    .line 856
    const-string v0, "DualAppManagerService"

    const-string/jumbo v1, "printInstalledWhitelistedPkg called!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    sget-object v1, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 858
    .local v2, "pkg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "installed whitelisted dual app ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    .end local v2    # "pkg":Ljava/lang/String;
    goto :goto_12

    .line 860
    :cond_4b
    return-void
.end method

.method public static recordDaUsageCount(Landroid/content/Context;Landroid/content/Intent;IILjava/lang/String;)V
    .registers 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callingUserId"    # I
    .param p3, "targetUserId"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 1693
    invoke-static {p3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    if-nez p1, :cond_9

    goto :goto_2b

    .line 1696
    :cond_9
    const/4 v0, 0x0

    .line 1697
    .local v0, "callee":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 1698
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 1700
    :cond_19
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 1703
    :goto_1d
    invoke-static {v0}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 1704
    return-void

    .line 1707
    :cond_24
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3, v3, v2}, Lcom/android/server/DualAppManagerService;->sendInternalMsg(IIILjava/lang/Object;)V

    .line 1708
    return-void

    .line 1694
    .end local v0    # "callee":Ljava/lang/String;
    :cond_2b
    :goto_2b
    return-void
.end method

.method private registerContentObserver()V
    .registers 5

    .line 1405
    sget-object v0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1406
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/DualAppManagerService;->contentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1408
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/DualAppManagerService;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1410
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/DualAppManagerService;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1412
    return-void
.end method

.method private registerContentObserverForDualUser(I)V
    .registers 6
    .param p1, "userid"    # I

    .line 1414
    sget-object v0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1415
    .local v0, "contentResolverForDualUser":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/DualAppManagerService;->contentObserverForDualUser:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1417
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/DualAppManagerService;->contentObserverForDualUser:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1419
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/DualAppManagerService;->contentObserverForDualUser:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1421
    return-void
.end method

.method private registerDualUserChangeObserver()V
    .registers 4

    .line 1590
    sget-object v0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_28

    .line 1592
    :try_start_4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1593
    .local v0, "filterBroad":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1594
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1595
    sget-object v1, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/DualAppManagerService$4;

    invoke-direct {v2, p0}, Lcom/android/server/DualAppManagerService$4;-><init>(Lcom/android/server/DualAppManagerService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1d} :catch_1f

    .line 1620
    nop

    .end local v0    # "filterBroad":Landroid/content/IntentFilter;
    goto :goto_28

    .line 1618
    :catch_1f
    move-exception v0

    .line 1619
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DualAppManagerService"

    const-string/jumbo v2, "registerDualUserChangeObserver() error occurs."

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1622
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_28
    :goto_28
    return-void
.end method

.method private removeAllWhitelistedPkgs(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 845
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 847
    .local v0, "ret":Landroid/os/Bundle;
    sget-object v1, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 849
    const-string/jumbo v1, "result_code"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 850
    const-string/jumbo v1, "result_desc"

    const-string/jumbo v2, "success"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    return-object v0
.end method

.method private removeWhitelistedPkg(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 821
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 823
    .local v0, "ret":Landroid/os/Bundle;
    const-string/jumbo v1, "pkgName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 824
    .local v1, "pkgName":Ljava/lang/String;
    const/4 v2, 0x0

    const-string/jumbo v3, "result_desc"

    const-string/jumbo v4, "result_code"

    if-nez v1, :cond_1f

    .line 825
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 826
    const-string/jumbo v2, "package name is null"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 827
    :cond_1f
    sget-object v5, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v5, :cond_32

    .line 828
    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 829
    const-string/jumbo v2, "package doesn\'t exist"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 832
    :cond_32
    :try_start_32
    sget-object v5, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 834
    const-string/jumbo v5, "success"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_40} :catch_41

    .line 838
    goto :goto_4c

    .line 835
    :catch_41
    move-exception v5

    .line 836
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 837
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_4c
    return-object v0
.end method

.method private renewWhitelistedPkg(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 760
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 762
    .local v0, "ret":Landroid/os/Bundle;
    sget-object v1, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 764
    const-string v1, "allInstalledWhitelistedPkgs"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 765
    .local v1, "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v2, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 767
    sget-object v2, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 768
    .local v3, "pkgName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/DualAppManagerService;->addOpChangeListener(Ljava/lang/String;)V

    .line 769
    .end local v3    # "pkgName":Ljava/lang/String;
    goto :goto_21

    .line 771
    :cond_31
    const/4 v2, 0x1

    const-string/jumbo v3, "result_code"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 772
    const-string/jumbo v2, "result_desc"

    const-string/jumbo v3, "success"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    return-object v0
.end method

.method public static sendBroadcastCustomIntent(Landroid/content/Context;ILandroid/content/Intent;)V
    .registers 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .line 395
    const-string v0, "com.samsung.android.da.daagent"

    .line 396
    .local v0, "targetPackage":Ljava/lang/String;
    const-string v1, "com.samsung.android.da.daagent.PACKAGE_ADDED"

    .line 397
    .local v1, "action":Ljava/lang/String;
    const/4 v2, 0x0

    .line 398
    .local v2, "skipFilteringForRemoved":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 399
    const-string v1, "com.samsung.android.da.daagent.PACKAGE_REMOVED"

    .line 400
    const/4 v2, 0x1

    .line 402
    :cond_14
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 404
    .local v3, "pkgName":Ljava/lang/String;
    if-nez v3, :cond_26

    .line 405
    const-string v4, "DualAppManagerService"

    const-string v5, " can not sendBroadcast intent, becuase pkgName is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return-void

    .line 409
    :cond_26
    if-nez p1, :cond_43

    .line 411
    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/app/SemDualAppManager;->isWhitelistedPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 413
    invoke-virtual {p2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 414
    .local v4, "customIntent":Landroid/content/Intent;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 422
    .end local v4    # "customIntent":Landroid/content/Intent;
    :cond_43
    if-nez v2, :cond_4b

    invoke-static {p0, v3, p1}, Lcom/android/server/DualAppManagerService;->isFilteredPackage(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 423
    :cond_4b
    const-string v0, "com.samsung.android.bbc.bbcagent"

    .line 424
    invoke-virtual {p2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 425
    .restart local v4    # "customIntent":Landroid/content/Intent;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 430
    .end local v4    # "customIntent":Landroid/content/Intent;
    :cond_5e
    return-void
.end method

.method private static sendInternalMsg(IIILjava/lang/Object;)V
    .registers 10
    .param p0, "type"    # I
    .param p1, "param1"    # I
    .param p2, "param2"    # I
    .param p3, "param3"    # Ljava/lang/Object;

    .line 255
    const-wide/16 v4, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/DualAppManagerService;->sendInternalMsg(IIILjava/lang/Object;J)V

    .line 256
    return-void
.end method

.method private static sendInternalMsg(IIILjava/lang/Object;J)V
    .registers 9
    .param p0, "type"    # I
    .param p1, "param1"    # I
    .param p2, "param2"    # I
    .param p3, "param3"    # Ljava/lang/Object;
    .param p4, "delay"    # J

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendInternalMsg() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualAppManagerService"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    sget-object v0, Lcom/android/server/DualAppManagerService;->mHandler:Lcom/android/server/DualAppManagerService$InternalHandler;

    if-eqz v0, :cond_3f

    .line 264
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-lez v1, :cond_37

    .line 265
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/DualAppManagerService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Lcom/android/server/DualAppManagerService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_45

    .line 267
    :cond_37
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/DualAppManagerService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/DualAppManagerService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_45

    .line 270
    :cond_3f
    const-string/jumbo v0, "sendInternalMsg() failed, handler is null"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_45
    return-void
.end method

.method private setDualAppNotificationSound(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 868
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 870
    .local v0, "ret":Landroid/os/Bundle;
    const-string/jumbo v1, "sound_uri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 871
    .local v1, "uri":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDualAppNotificationSound : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DualAppManagerService"

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const/4 v2, 0x0

    const-string/jumbo v3, "result_desc"

    const-string/jumbo v4, "result_code"

    if-nez v1, :cond_36

    .line 874
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 875
    const-string/jumbo v2, "uri is null"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    .line 878
    :cond_36
    :try_start_36
    sput-object v1, Lcom/android/server/DualAppManagerService;->DUAL_APP_NOTIFICATION_URI:Ljava/lang/String;

    .line 879
    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 880
    const-string/jumbo v5, "success"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_42} :catch_43

    .line 884
    goto :goto_4e

    .line 881
    :catch_43
    move-exception v5

    .line 882
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 883
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_4e
    return-object v0
.end method

.method public static shouldForwardToOwner(Ljava/lang/String;)Z
    .registers 8
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1024
    const/4 v0, 0x1

    if-eqz p0, :cond_5c

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_5c

    .line 1028
    :cond_c
    sget-object v1, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v1, :cond_37

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/SemDualAppManager;->isWhitelistedPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1029
    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1030
    return v2

    .line 1032
    :cond_22
    sget-object v1, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 1033
    .local v1, "callingPackageName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1034
    return v2

    .line 1038
    .end local v1    # "callingPackageName":Ljava/lang/String;
    :cond_37
    sget-object v1, Lcom/android/server/DualAppManagerService;->DEFAULT_PACKAGES_NOT_FORWARDING:[Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    :goto_3b
    if-ge v4, v3, :cond_49

    aget-object v5, v1, v4

    .line 1039
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 1040
    return v2

    .line 1038
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 1044
    :cond_49
    const-string v1, "com.bst.floatingmsgproxy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 1045
    const-string v1, "com.bst.airmessage"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    goto :goto_5b

    .line 1049
    :cond_5a
    return v0

    .line 1046
    :cond_5b
    :goto_5b
    return v2

    .line 1025
    :cond_5c
    :goto_5c
    return v0
.end method

.method public static startDAChooserActivity(Landroid/content/Intent;IILjava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "callingUserId"    # I
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 1255
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/DualAppManagerService;->startDAChooserActivity(Landroid/content/Intent;IILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static startDAChooserActivity(Landroid/content/Intent;IILjava/lang/String;I)Landroid/content/Intent;
    .registers 22
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "callingUserId"    # I
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "realCallingUid"    # I

    .line 1261
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    const-string v5, "DualAppManagerService"

    const-string v0, "com.bst.floatingmsgproxy"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_34f

    .line 1262
    const-string v0, "com.bst.airmessage"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34b

    .line 1263
    const-string v0, "com.samsung.android.da.daagent"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_347

    .line 1264
    const-string v7, "com.samsung.android.spay"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    move/from16 v12, p4

    move-object v5, v6

    goto/16 :goto_352

    .line 1269
    :cond_30
    :try_start_30
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v7

    .line 1270
    .local v7, "isDualAppId":Z
    const/4 v8, 0x0

    .line 1271
    .local v8, "result":Z
    const/4 v9, 0x0

    .line 1274
    .local v9, "chooserIntent":Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.samsung.android.da.daagent.activity.ForwardShareActivity"

    invoke-direct {v10, v0, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    .local v10, "compName":Landroid/content/ComponentName;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_52

    .line 1276
    const-string v11, "com.samsung.android.da.daagent.activity.EmptyActivity"

    invoke-virtual {v1, v0, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1277
    const-string v0, "Invalid call to share"

    invoke-static {v5, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    return-object v6

    .line 1282
    .end local v10    # "compName":Landroid/content/ComponentName;
    :cond_52
    if-eqz v7, :cond_5b

    invoke-static {v1, v4, v3, v2}, Lcom/android/server/DualAppManagerService;->mayForwardShare(Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1283
    return-object v6

    .line 1286
    :cond_5b
    const-string v0, "android.intent.action.SEND"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v10, 0x1040d4b

    if-nez v0, :cond_76

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    .line 1287
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    :cond_76
    if-nez v7, :cond_29e

    if-nez v2, :cond_7e

    move/from16 v12, p4

    goto/16 :goto_2a0

    .line 1302
    :cond_7e
    const/16 v0, 0x3e8

    const v11, 0x1040d3a

    if-eqz v3, :cond_8f

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v12

    if-eqz v12, :cond_8c

    goto :goto_8f

    :cond_8c
    move/from16 v12, p4

    goto :goto_e0

    .line 1303
    :cond_8f
    :goto_8f
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_93} :catch_33a

    if-eqz v12, :cond_de

    move/from16 v12, p4

    if-eq v12, v0, :cond_e0

    .line 1304
    :try_start_99
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e0

    .line 1305
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e0

    const-string v13, "com.sina.weibo"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e0

    .line 1306
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/app/SemDualAppManager;->isChooserRequired(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e0

    .line 1307
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v10, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 1308
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1307
    invoke-static {v0, v10}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    move-object v9, v0

    .line 1309
    const/4 v8, 0x1

    goto/16 :goto_2d8

    .line 1303
    :cond_de
    move/from16 v12, p4

    .line 1310
    :cond_e0
    :goto_e0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_e4} :catch_338

    const-string v14, "com.tencent.mobileqqi"

    const-string v15, "com.tencent.mobileqq"

    if-eqz v13, :cond_139

    :try_start_ea
    const-string/jumbo v13, "mqqapi"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_139

    .line 1311
    invoke-static {v15}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_107

    .line 1312
    invoke-static {v14}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_139

    .line 1313
    :cond_107
    const/4 v0, 0x0

    .line 1314
    .local v0, "callee":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_118

    .line 1315
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    goto :goto_11d

    .line 1317
    :cond_118
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    .line 1319
    :goto_11d
    if-eqz v4, :cond_126

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_126

    .line 1320
    return-object v6

    .line 1323
    :cond_126
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    sget-object v13, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 1324
    invoke-virtual {v13, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1323
    invoke-static {v11, v10}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v10

    move-object v9, v10

    .line 1325
    const/4 v8, 0x1

    .line 1326
    .end local v0    # "callee":Ljava/lang/String;
    goto/16 :goto_2d8

    :cond_139
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_13d} :catch_338

    const-string v13, "com.tencent.mm"

    if-eqz v0, :cond_16b

    :try_start_141
    const-string/jumbo v0, "weixin"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16b

    .line 1327
    invoke-static {v13}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16b

    .line 1329
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v6, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 1330
    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1329
    invoke-static {v0, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    move-object v9, v0

    .line 1331
    const/4 v8, 0x1

    goto/16 :goto_2d8

    .line 1332
    :cond_16b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1a1

    const-string/jumbo v0, "mqqwallet"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a1

    .line 1333
    invoke-static {v15}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18e

    .line 1334
    invoke-static {v14}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a1

    .line 1336
    :cond_18e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v6, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 1337
    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1336
    invoke-static {v0, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    move-object v9, v0

    .line 1338
    const/4 v8, 0x1

    goto/16 :goto_2d8

    .line 1339
    :cond_1a1
    if-nez v3, :cond_202

    .line 1340
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v6, 0x3e8

    if-eq v0, v6, :cond_202

    const-string v0, "com.taobao.taobao"

    .line 1341
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c3

    const-string v0, "com.eg.android.AlipayGphone"

    .line 1342
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c3

    const-string v0, "com.tmall.wireless"

    .line 1343
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_202

    .line 1346
    :cond_1c3
    const/4 v0, 0x0

    .line 1347
    .restart local v0    # "callee":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_1d4

    .line 1348
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_1d9

    .line 1350
    :cond_1d4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1352
    :goto_1d9
    if-eqz v4, :cond_200

    if-eqz v0, :cond_200

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_200

    .line 1353
    invoke-static {v0}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_200

    .line 1354
    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isChinaDualApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_200

    .line 1355
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    sget-object v11, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 1356
    invoke-virtual {v11, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1355
    invoke-static {v6, v10}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    move-object v9, v6

    .line 1357
    const/4 v8, 0x1

    .line 1359
    .end local v0    # "callee":Ljava/lang/String;
    :cond_200
    goto/16 :goto_2d8

    :cond_202
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.com.tencent.mm.chatting.profile"

    .line 1360
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27d

    const-string/jumbo v0, "vnd.android.cursor.item/vnd.com.tencent.mm.chatting.voip"

    .line 1362
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27d

    const-string/jumbo v0, "vnd.android.cursor.item/vnd.com.tencent.mm.plugin.sns.timeline"

    .line 1364
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27d

    const-string/jumbo v0, "vnd.android.cursor.item/vnd.com.tencent.mm.chatting.voiceaction"

    .line 1366
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_237

    goto :goto_27d

    .line 1373
    :cond_237
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d8

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "kakaotalk://settings/theme/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d8

    const-string v0, "com.kakao.talk"

    .line 1374
    invoke-static {v0}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d8

    .line 1376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "intent : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v6, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 1378
    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1377
    invoke-static {v0, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    move-object v9, v0

    .line 1379
    const/4 v8, 0x1

    goto :goto_2d8

    .line 1367
    :cond_27d
    :goto_27d
    invoke-static {v13}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d8

    .line 1368
    invoke-static/range {p3 .. p3}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d8

    .line 1369
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v6, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    const v10, 0x1040d51

    .line 1370
    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1369
    invoke-static {v0, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    move-object v9, v0

    .line 1371
    const/4 v8, 0x1

    goto :goto_2d8

    .line 1287
    :cond_29e
    move/from16 v12, p4

    .line 1289
    :goto_2a0
    const/4 v0, 0x0

    .line 1290
    .restart local v0    # "callee":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_2b1

    .line 1291
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_2b6

    .line 1293
    :cond_2b1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1296
    :goto_2b6
    if-eqz v4, :cond_2d7

    if-eqz v0, :cond_2d7

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2d7

    .line 1297
    invoke-static {v0}, Lcom/android/server/DualAppManagerService;->isInstalledWhitelistedPackageInternal(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d7

    .line 1298
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    sget-object v11, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 1299
    invoke-virtual {v11, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1298
    invoke-static {v6, v10}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    move-object v9, v6

    .line 1300
    const/4 v8, 0x1

    .line 1302
    .end local v0    # "callee":Ljava/lang/String;
    :cond_2d7
    nop

    .line 1382
    :cond_2d8
    :goto_2d8
    if-eqz v8, :cond_337

    .line 1383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1384
    .local v0, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz v7, :cond_2e4

    .line 1385
    invoke-static/range {p0 .. p1}, Lcom/android/server/DualAppManagerService;->changeUriForDualApp(Landroid/content/Intent;I)V

    .line 1387
    :cond_2e4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_303

    .line 1388
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ret1 : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    :cond_303
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_322

    .line 1391
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ret2 : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    :cond_322
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1394
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/content/Intent;

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/Intent;

    .line 1395
    .local v6, "extraIntent":[Landroid/content/Intent;
    const-string v10, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v9, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_336
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_336} :catch_338

    .line 1396
    return-object v9

    .line 1401
    .end local v0    # "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .end local v6    # "extraIntent":[Landroid/content/Intent;
    .end local v7    # "isDualAppId":Z
    .end local v8    # "result":Z
    .end local v9    # "chooserIntent":Landroid/content/Intent;
    :cond_337
    goto :goto_345

    .line 1398
    :catch_338
    move-exception v0

    goto :goto_33d

    :catch_33a
    move-exception v0

    move/from16 v12, p4

    .line 1399
    .local v0, "e":Ljava/lang/Exception;
    :goto_33d
    const-string v6, "fail startDAChooserActivity"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1402
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_345
    const/4 v5, 0x0

    return-object v5

    .line 1263
    :cond_347
    move/from16 v12, p4

    move-object v5, v6

    goto :goto_352

    .line 1262
    :cond_34b
    move/from16 v12, p4

    move-object v5, v6

    goto :goto_352

    .line 1261
    :cond_34f
    move/from16 v12, p4

    move-object v5, v6

    .line 1265
    :goto_352
    return-object v5
.end method

.method private static updateWedgeAboutActivity(Ljava/lang/String;)V
    .registers 5
    .param p0, "component"    # Ljava/lang/String;

    .line 380
    const-string v0, "content://com.samsung.android.bbc.bbcagent/updateForegroundActivity"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 381
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 382
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "component"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    sget-object v2, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 384
    return-void
.end method

.method private static updateWedgeAboutInputContext(Ljava/lang/String;I)V
    .registers 6
    .param p0, "component"    # Ljava/lang/String;
    .param p1, "newInputContextNotNull"    # I

    .line 387
    const-string v0, "content://com.samsung.android.bbc.bbcagent/updateInputContext"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 388
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 389
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "newInputContextNotNull"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 390
    const-string v2, "component"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    sget-object v2, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 392
    return-void
.end method

.method private updateWhitelistPkg(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 778
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 780
    .local v0, "ret":Landroid/os/Bundle;
    const-string/jumbo v1, "packageList"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 782
    .local v1, "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_12

    .line 783
    sput-object v1, Lcom/android/server/DualAppManagerService;->mWhitelistedPkgMap:Ljava/util/HashMap;

    .line 786
    :cond_12
    const/4 v2, 0x1

    const-string/jumbo v3, "result_code"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 787
    const-string/jumbo v2, "result_desc"

    const-string/jumbo v3, "success"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    return-object v0
.end method

.method private writeDualAppProfileId(Landroid/content/Context;)Z
    .registers 11
    .param p1, "ctx"    # Landroid/content/Context;

    .line 1625
    const/16 v0, -0x2710

    .line 1626
    .local v0, "userId":I
    const/4 v1, 0x0

    .line 1627
    .local v1, "found":Z
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 1628
    .local v2, "um":Landroid/os/UserManager;
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 1629
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1630
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 1631
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    .line 1632
    const/4 v1, 0x1

    .line 1633
    goto :goto_28

    .line 1635
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_27
    goto :goto_f

    .line 1637
    :cond_28
    :goto_28
    const-string/jumbo v4, "persist.sys.dualapp.prop"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1638
    .local v5, "dualapp_prop":Ljava/lang/String;
    const-string v6, "DualAppManagerService"

    if-eqz v5, :cond_4e

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4e

    .line 1639
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dualapp_prop "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 1641
    :cond_4e
    if-eqz v1, :cond_56

    .line 1642
    const-string v7, "0"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    .line 1644
    :cond_56
    const-string v7, "1"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    :goto_5b
    const-string/jumbo v4, "sys.dualapp.profile_id"

    if-eqz v1, :cond_7e

    .line 1649
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found DA Profile. Id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    nop

    .line 1651
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 1650
    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    const/4 v4, 0x1

    return v4

    .line 1654
    :cond_7e
    const-string v7, "Can not found DA Profile. Id"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    const-string v6, ""

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    const/4 v4, 0x0

    return v4
.end method


# virtual methods
.method public getAllInstalledWhitelistedPackages()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 538
    const/4 v0, 0x0

    .line 541
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    sget-object v1, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 542
    .local v1, "pkgNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_f

    .line 543
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_10

    move-object v0, v2

    .line 547
    .end local v1    # "pkgNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f
    goto :goto_18

    .line 545
    :catch_10
    move-exception v1

    .line 546
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DualAppManagerService"

    const-string v3, "Exception occured in getAllInstalledWhitelistedPackages. retrun null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_18
    return-object v0
.end method

.method public getAllWhitelistedPackages()[Ljava/lang/String;
    .registers 4

    .line 1738
    sget-object v0, Lcom/android/server/DualAppManagerService;->mWhitelistedPkgMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 1739
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1740
    const-string v0, "DualAppManagerService"

    const-string/jumbo v2, "getAllWhitelistedPackages : empty"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    return-object v1

    .line 1743
    :cond_14
    sget-object v0, Lcom/android/server/DualAppManagerService;->mWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/android/server/DualAppManagerService;->mWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 1747
    :cond_29
    return-object v1
.end method

.method public isInstalledWhitelistedPackage(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 649
    const-string v0, "DualAppManagerService"

    :try_start_2
    sget-object v1, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 650
    const-string v1, "Found!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_12

    .line 651
    const/4 v0, 0x1

    return v0

    .line 656
    :cond_11
    goto :goto_1b

    .line 653
    :catch_12
    move-exception v1

    .line 654
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Exception occured in isInstalledWhitelistedPackage. retrun false"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 658
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method mediaScanFileForDeleteSync(I)V
    .registers 12
    .param p1, "userId"    # I

    .line 1509
    sget-object v0, Lcom/android/server/DualAppManagerService;->KNOWN_PATH:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_35

    aget-object v4, v0, v3

    .line 1510
    .local v4, "filepath":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    sget-object v6, Lcom/android/server/DualAppManagerService;->USER_OWNER_DUALAPP_FILE_PATH:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1511
    .local v5, "convertedFilePath":Ljava/lang/String;
    sget-object v6, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v7, v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1509
    .end local v4    # "filepath":Ljava/lang/String;
    .end local v5    # "convertedFilePath":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1513
    :cond_35
    return-void
.end method

.method mediaScanFileForSync(Ljava/lang/String;I)V
    .registers 7
    .param p1, "convertedFilePath"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1505
    sget-object v0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1506
    return-void
.end method

.method public systemReady()V
    .registers 4

    .line 468
    const-string v0, "DualAppManagerService"

    const-string v1, "DualAppManagerService ready"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :try_start_7
    sget-object v1, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/DualAppManagerService;->writeDualAppProfileId(Landroid/content/Context;)Z

    move-result v1

    .line 476
    .local v1, "dualAppProfilePresent":Z
    if-eqz v1, :cond_19

    .line 477
    invoke-direct {p0}, Lcom/android/server/DualAppManagerService;->registerContentObserver()V

    .line 478
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v2

    .line 479
    .local v2, "userid":I
    invoke-direct {p0, v2}, Lcom/android/server/DualAppManagerService;->registerContentObserverForDualUser(I)V

    .line 481
    .end local v2    # "userid":I
    :cond_19
    invoke-direct {p0}, Lcom/android/server/DualAppManagerService;->registerDualUserChangeObserver()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_1d

    .line 485
    .end local v1    # "dualAppProfilePresent":Z
    goto :goto_26

    .line 482
    :catch_1d
    move-exception v1

    .line 483
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Failed to write dual app profile id"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 487
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_26
    const-string/jumbo v1, "systemReady done."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return-void
.end method

.method updateDAUsage()V
    .registers 9

    .line 1711
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1712
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1713
    .local v1, "dayOfWeek":I
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1714
    .local v2, "week":I
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1715
    .local v3, "dayOfMonth":I
    sget v4, Lcom/android/server/DualAppManagerService;->thisWeek:I

    if-eq v4, v2, :cond_1e

    .line 1716
    sget-object v4, Lcom/android/server/DualAppManagerService;->mDaWeeklyUsageCount:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1717
    sput v2, Lcom/android/server/DualAppManagerService;->thisWeek:I

    .line 1719
    :cond_1e
    sget-object v4, Lcom/android/server/DualAppManagerService;->mDaWeeklyUsageCount:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 1720
    sget-object v4, Lcom/android/server/DualAppManagerService;->mDaWeeklyUsageCount:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1722
    :try_start_33
    sget-object v4, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://com.samsung.android.da.daagent.provider/recordUsage"

    .line 1723
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1722
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_48} :catch_49

    .line 1727
    goto :goto_4d

    .line 1725
    :catch_49
    move-exception v4

    .line 1726
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1730
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4d
    :goto_4d
    sget-object v4, Lcom/android/server/DualAppManagerService;->mDaMonthlyUsageCount:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_62

    .line 1731
    sget-object v4, Lcom/android/server/DualAppManagerService;->mDaMonthlyUsageCount:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1733
    :cond_62
    return-void
.end method

.method public declared-synchronized updateDualAppData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 492
    :try_start_1
    const-string v0, "com.samsung.android.da.daagent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d2

    .line 493
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_14

    goto/16 :goto_d2

    .line 498
    :cond_14
    const/4 v0, 0x0

    .line 500
    .local v0, "ret":Landroid/os/Bundle;
    const-string v2, "DualAppManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDualAppData "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    if-nez p3, :cond_48

    .line 503
    const-string v2, "DualAppManagerService"

    const-string/jumbo v3, "updateDualAppData. Bundle is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_dc

    .line 504
    monitor-exit p0

    return-object v1

    .line 507
    .end local p0    # "this":Lcom/android/server/DualAppManagerService;
    :cond_48
    :try_start_48
    const-string v1, "command"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_dc

    .line 510
    .local v1, "cmd":Ljava/lang/String;
    :try_start_4e
    const-string/jumbo v2, "renewInstalledWhitelistedPkgs"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 511
    invoke-direct {p0, p3}, Lcom/android/server/DualAppManagerService;->renewWhitelistedPkg(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    move-object v0, v2

    goto/16 :goto_cb

    .line 512
    :cond_5e
    const-string v2, "addInstalledWhitelistedPkg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 513
    invoke-direct {p0, p3}, Lcom/android/server/DualAppManagerService;->addWhitelistedPkg(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    move-object v0, v2

    goto :goto_cb

    .line 514
    :cond_6c
    const-string/jumbo v2, "removeInstalledWhitelistedPkg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 515
    invoke-direct {p0, p3}, Lcom/android/server/DualAppManagerService;->removeWhitelistedPkg(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    move-object v0, v2

    goto :goto_cb

    .line 516
    :cond_7b
    const-string/jumbo v2, "removeAllInstalledWhitelistedPkgs"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 517
    invoke-direct {p0, p3}, Lcom/android/server/DualAppManagerService;->removeAllWhitelistedPkgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    move-object v0, v2

    goto :goto_cb

    .line 518
    :cond_8a
    const-string/jumbo v2, "printInstalledWhitelistedPkg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 519
    invoke-direct {p0}, Lcom/android/server/DualAppManagerService;->printInstalledWhitelistedPkg()V

    goto :goto_cb

    .line 520
    :cond_97
    const-string/jumbo v2, "setDualAppNotificationSound"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 521
    invoke-direct {p0, p3}, Lcom/android/server/DualAppManagerService;->setDualAppNotificationSound(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    move-object v0, v2

    goto :goto_cb

    .line 522
    :cond_a6
    const-string/jumbo v2, "updateWhitelistPkgs"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 523
    invoke-direct {p0, p3}, Lcom/android/server/DualAppManagerService;->updateWhitelistPkg(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    move-object v0, v2

    goto :goto_cb

    .line 525
    :cond_b5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v0, v2

    .line 526
    const-string/jumbo v2, "result_code"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 527
    const-string/jumbo v2, "result_desc"

    const-string/jumbo v3, "not defined command"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_cb} :catch_cc
    .catchall {:try_start_4e .. :try_end_cb} :catchall_dc

    .line 531
    :goto_cb
    goto :goto_d0

    .line 529
    :catch_cc
    move-exception v2

    .line 530
    .local v2, "e":Ljava/lang/Exception;
    :try_start_cd
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d0
    .catchall {:try_start_cd .. :try_end_d0} :catchall_dc

    .line 533
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_d0
    monitor-exit p0

    return-object v0

    .line 494
    .end local v0    # "ret":Landroid/os/Bundle;
    .end local v1    # "cmd":Ljava/lang/String;
    :cond_d2
    :goto_d2
    :try_start_d2
    const-string v0, "DualAppManagerService"

    const-string/jumbo v2, "updateDualAppData is called from unauthorized app"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catchall {:try_start_d2 .. :try_end_da} :catchall_dc

    .line 495
    monitor-exit p0

    return-object v1

    .line 491
    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "bundle":Landroid/os/Bundle;
    :catchall_dc
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method updateInstalledWhitelistPackages()V
    .registers 8

    .line 1676
    sget-object v0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "content://com.samsung.android.da.daagent.provider/getInstalledApps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1678
    .local v0, "cursor":Landroid/database/Cursor;
    sget-object v1, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1679
    if-eqz v0, :cond_67

    .line 1681
    :goto_1b
    :try_start_1b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1682
    const-string v1, "DualAppManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateInstalledWhitelistPackages : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    sget-object v1, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catchall {:try_start_1b .. :try_end_5b} :catchall_61

    goto :goto_1b

    .line 1686
    :cond_5c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1687
    const/4 v0, 0x0

    .line 1688
    goto :goto_67

    .line 1686
    :catchall_61
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1687
    const/4 v0, 0x0

    .line 1688
    throw v1

    .line 1690
    :cond_67
    :goto_67
    return-void
.end method

.method updateWhitelistPackages()V
    .registers 8

    .line 1662
    sget-object v0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "content://com.samsung.android.da.daagent.provider/getWhitelistApps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1664
    .local v0, "cursor":Landroid/database/Cursor;
    sget-object v1, Lcom/android/server/DualAppManagerService;->mWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1665
    if-eqz v0, :cond_4e

    .line 1666
    :goto_1b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWhitelistPackages : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DualAppManagerService"

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    sget-object v1, Lcom/android/server/DualAppManagerService;->mWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 1671
    :cond_4b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1673
    :cond_4e
    return-void
.end method
