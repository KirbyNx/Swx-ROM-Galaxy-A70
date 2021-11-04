.class Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec$RegexMatchProbeSpec;
.super Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;
.source "WifiNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegexMatchProbeSpec"
.end annotation


# instance fields
.field final mLocationHeaderRegex:Ljava/util/regex/Pattern;

.field final mStatusRegex:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/net/URL;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V
    .registers 9
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "statusRegex"    # Ljava/util/regex/Pattern;
    .param p4, "locationHeaderRegex"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 3131
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    .line 3132
    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 3133
    .local v0, "protocol":Ljava/lang/String;
    const-string/jumbo v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3140
    iput-object p3, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec$RegexMatchProbeSpec;->mStatusRegex:Ljava/util/regex/Pattern;

    .line 3141
    iput-object p4, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec$RegexMatchProbeSpec;->mLocationHeaderRegex:Ljava/util/regex/Pattern;

    .line 3142
    return-void

    .line 3137
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Protocol for probe spec should be http but was"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getResult(ILjava/lang/String;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .registers 12
    .param p1, "status"    # I
    .param p2, "locationHeader"    # Ljava/lang/String;

    .line 3146
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec$RegexMatchProbeSpec;->mStatusRegex:Ljava/util/regex/Pattern;

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;->safeMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;->access$6800(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v0

    .line 3147
    .local v0, "statusMatch":Z
    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec$RegexMatchProbeSpec;->mLocationHeaderRegex:Ljava/util/regex/Pattern;

    # invokes: Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;->safeMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z
    invoke-static {p2, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;->access$6800(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v1

    .line 3149
    .local v1, "locationMatch":Z
    if-eqz v0, :cond_17

    if-eqz v1, :cond_17

    const/16 v2, 0xcc

    goto :goto_19

    :cond_17
    const/16 v2, 0x12e

    :goto_19
    move v4, v2

    .line 3150
    .local v4, "returnCode":I
    new-instance v2, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    .line 3151
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec$RegexMatchProbeSpec;->getUrl()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    move-object v3, v2

    move-object v5, p2

    move-object v7, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;I)V

    .line 3150
    return-object v2
.end method
