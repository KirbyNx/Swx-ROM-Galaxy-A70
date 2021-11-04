.class Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;
.super Ljava/lang/Object;
.source "WifiNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/WifiNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParameterManager"
.end annotation


# instance fields
.field private final CP_FALLBACK_CHECK_TIMEOUT_SEC:I

.field private final DEFAULT_URL:Ljava/lang/String;

.field private final DEFAULT_URL_CHINA:Ljava/lang/String;

.field private DEFAULT_URL_STRING:Ljava/lang/String;

.field private final DEFAULT_URL_STRING_CHINA:Ljava/lang/String;

.field public final LIST2:[Ljava/lang/String;

.field private final MULTINETWORK_ALLOWING_SYSTEM_PACKAGE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final MULTINETWORK_EXCEPTION_PACKAGE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final NETWORKSETTINGS_PERMISSION_EXCEPTION_PACKAGE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final QC_CONNECTION_TIMEOUT_SEC:I

.field private final QC_SSL_HANDSHAKE_TIMEOUT_SEC:I

.field final synthetic this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/WifiNetworkMonitor;)V
    .registers 15
    .param p1, "this$0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 308
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;->this$0:Lcom/android/server/connectivity/WifiNetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;->QC_CONNECTION_TIMEOUT_SEC:I

    .line 265
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;->QC_SSL_HANDSHAKE_TIMEOUT_SEC:I

    .line 266
    iput v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;->CP_FALLBACK_CHECK_TIMEOUT_SEC:I

    .line 269
    const-string v0, "com.samsung.android.oneconnect"

    const-string/jumbo v1, "sdet.pack"

    const-string/jumbo v2, "sdet.pack.channel"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;->NETWORKSETTINGS_PERMISSION_EXCEPTION_PACKAGE_LIST:Ljava/util/List;

    .line 275
    const-string v2, "com.android.systemui"

    const-string v3, "android.uid.systemui"

    const-string v4, "com.samsung.android.app.aodservice"

    const-string v5, "com.sec.android.cover.ledcover"

    const-string v6, "com.samsung.android.app.routines"

    const-string v7, "com.android.systemui"

    const-string v8, "com.samsung.desktopsystemui"

    const-string v9, "com.samsung.android.gesture.MotionRecognitionService"

    const-string v10, "com.android.systemui.sensor.PickupController"

    const-string v11, "com.samsung.uready.agent"

    const-string v12, "com.google.android.apps.carrier.carrierwifi"

    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;->MULTINETWORK_EXCEPTION_PACKAGE_LIST:Ljava/util/List;

    .line 289
    const-string v1, "com.samsung.android.app.mirrorlink"

    const-string v2, "com.google.android.gms"

    const-string v3, "com.google.android.projection.gearhead"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;->MULTINETWORK_ALLOWING_SYSTEM_PACKAGE_LIST:Ljava/util/List;

    .line 297
    const-string/jumbo v0, "http://www.google.com"

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;->DEFAULT_URL:Ljava/lang/String;

    .line 298
    const-string/jumbo v0, "http://www.qq.com"

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;->DEFAULT_URL_CHINA:Ljava/lang/String;

    .line 299
    const-string/jumbo v1, "www.qq.com"

    iput-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;->DEFAULT_URL_STRING_CHINA:Ljava/lang/String;

    .line 300
    const-string/jumbo v1, "www.google.com"

    iput-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;->DEFAULT_URL_STRING:Ljava/lang/String;

    .line 302
    const-string/jumbo v1, "http://m.hao123.com"

    const-string/jumbo v2, "http://www.baidu.com"

    const-string/jumbo v3, "http://m.taobao.com"

    filled-new-array {v1, v2, v3, v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;->LIST2:[Ljava/lang/String;

    .line 309
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;->resetParameters()V

    .line 310
    return-void
.end method


# virtual methods
.method public isMultiNetworkAllowingSystemPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;->MULTINETWORK_ALLOWING_SYSTEM_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMultiNetworkExceptionPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;->MULTINETWORK_EXCEPTION_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNetworkSettingsPermissionExceptionPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;->NETWORKSETTINGS_PERMISSION_EXCEPTION_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public resetParameters()V
    .registers 1

    .line 313
    return-void
.end method
