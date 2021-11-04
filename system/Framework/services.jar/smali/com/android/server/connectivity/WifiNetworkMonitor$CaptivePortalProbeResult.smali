.class public Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
.super Ljava/lang/Object;
.source "WifiNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/WifiNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptivePortalProbeResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult$ProbeType;
    }
.end annotation


# static fields
.field public static final DNS_PRIVATE_IP_RESPONSE_CODE:I = -0x2

.field public static final FAILED_CODE:I = 0x257

.field public static final PARTIAL:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

.field public static final PARTIAL_CODE:I = -0x1

.field public static final PORTAL_CODE:I = 0x12e

.field public static final PRIVATE_IP:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

.field public static final PROBE_UNKNOWN:I = 0x0

.field public static final SUCCESS_CODE:I = 0xcc


# instance fields
.field public final detectUrl:Ljava/lang/String;

.field final mHttpResponseCode:I

.field public final probeSpec:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;

.field public final probeType:I

.field public final redirectUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1458
    new-instance v0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    const/4 v1, -0x2

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;-><init>(II)V

    sput-object v0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->PRIVATE_IP:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    .line 1462
    new-instance v0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    const/4 v1, -0x1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;-><init>(II)V

    sput-object v0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->PARTIAL:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 9
    .param p1, "httpResponseCode"    # I
    .param p2, "probeType"    # I

    .line 1493
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;I)V

    .line 1494
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "httpResponseCode"    # I
    .param p2, "redirectUrl"    # Ljava/lang/String;
    .param p3, "detectUrl"    # Ljava/lang/String;
    .param p4, "probeType"    # I

    .line 1498
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;I)V

    .line 1499
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;I)V
    .registers 6
    .param p1, "httpResponseCode"    # I
    .param p2, "redirectUrl"    # Ljava/lang/String;
    .param p3, "detectUrl"    # Ljava/lang/String;
    .param p4, "probeSpec"    # Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;
    .param p5, "probeType"    # I

    .line 1503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1504
    iput p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    .line 1505
    iput-object p2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    .line 1506
    iput-object p3, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->detectUrl:Ljava/lang/String;

    .line 1507
    iput-object p4, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->probeSpec:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;

    .line 1508
    iput p5, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->probeType:I

    .line 1509
    return-void
.end method

.method public static failed(I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .registers 3
    .param p0, "probeType"    # I

    .line 1537
    new-instance v0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    const/16 v1, 0x257

    invoke-direct {v0, v1, p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;-><init>(II)V

    return-object v0
.end method

.method public static success(I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .registers 3
    .param p0, "probeType"    # I

    .line 1546
    new-instance v0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    const/16 v1, 0xcc

    invoke-direct {v0, v1, p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public isConcludedFromHttp()Z
    .registers 2

    .line 1564
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->probeType:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isConcludedFromHttps()Z
    .registers 2

    .line 1555
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->probeType:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isDnsPrivateIpResponse()Z
    .registers 3

    .line 1528
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isFailed()Z
    .registers 2

    .line 1520
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isPartialConnectivity()Z
    .registers 3

    .line 1524
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isPortal()Z
    .registers 3

    .line 1516
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_12

    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_12

    const/16 v1, 0x18f

    if-gt v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public isSuccessful()Z
    .registers 3

    .line 1512
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
