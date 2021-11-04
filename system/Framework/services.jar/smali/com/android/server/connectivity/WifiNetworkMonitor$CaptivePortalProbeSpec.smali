.class public abstract Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;
.super Ljava/lang/Object;
.source "WifiNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/WifiNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CaptivePortalProbeSpec"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec$RegexMatchProbeSpec;
    }
.end annotation


# static fields
.field private static final PROTOCOL_HTTP:Ljava/lang/String; = "http"

.field private static final REGEX_SEPARATOR:Ljava/lang/String; = "@@/@@"

.field private static final SPEC_SEPARATOR:Ljava/lang/String; = "@@,@@"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mEncodedSpec:Ljava/lang/String;

.field private final mUrl:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3000
    const-class v0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/net/URL;)V
    .registers 4
    .param p1, "encodedSpec"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/net/URL;

    .line 3008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3009
    invoke-static {p1}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;->mEncodedSpec:Ljava/lang/String;

    .line 3010
    invoke-static {p2}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;->mUrl:Ljava/net/URL;

    .line 3011
    return-void
.end method

.method static synthetic access$6800(Ljava/lang/String;Ljava/util/regex/Pattern;)Z
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/util/regex/Pattern;

    .line 2999
    invoke-static {p0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;->safeMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method private static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 3162
    .local p0, "object":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_3

    .line 3163
    return-object p0

    .line 3162
    :cond_3
    const/4 v0, 0x0

    throw v0
.end method

.method public static parseCaptivePortalProbeSpecs(Ljava/lang/String;)Ljava/util/Collection;
    .registers 11
    .param p0, "settingsVal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;",
            ">;"
        }
    .end annotation

    .line 3083
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3084
    .local v0, "specs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;>;"
    const/4 v1, 0x0

    if-eqz p0, :cond_36

    .line 3085
    const-string v2, "@@,@@"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_10
    if-ge v4, v3, :cond_36

    aget-object v5, v2, v4

    .line 3087
    .local v5, "spec":Ljava/lang/String;
    :try_start_14
    invoke-static {v5}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;->parseSpec(Ljava/lang/String;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/text/ParseException; {:try_start_14 .. :try_end_1b} :catch_1c
    .catch Ljava/net/MalformedURLException; {:try_start_14 .. :try_end_1b} :catch_1c

    .line 3090
    goto :goto_33

    .line 3088
    :catch_1c
    move-exception v6

    .line 3089
    .local v6, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid probe spec: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3085
    .end local v5    # "spec":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 3094
    :cond_36
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 3095
    sget-object v2, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    const-string v1, "could not create any validation spec from %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    :cond_4c
    return-object v0
.end method

.method private static parsePatternIfNonEmpty(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    .registers 6
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 3045
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3046
    const/4 v0, 0x0

    return-object v0

    .line 3049
    :cond_8
    :try_start_8
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0
    :try_end_c
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_8 .. :try_end_c} :catch_d

    return-object v0

    .line 3050
    :catch_d
    move-exception v0

    .line 3051
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    new-instance v1, Ljava/text/ParseException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 3052
    const-string v3, "Invalid status pattern [%s]: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public static parseSpec(Ljava/lang/String;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;
    .registers 9
    .param p0, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 3025
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4b

    .line 3029
    const-string v0, "@@/@@"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3030
    .local v2, "splits":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_43

    .line 3034
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 3035
    .local v3, "statusRegexPos":I
    const/4 v4, 0x1

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v5, v0

    .line 3036
    .local v5, "locationRegexPos":I
    aget-object v0, v2, v4

    invoke-static {v0, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;->parsePatternIfNonEmpty(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 3037
    .local v0, "statusRegex":Ljava/util/regex/Pattern;
    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v4, v5}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;->parsePatternIfNonEmpty(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 3039
    .local v4, "locationRegex":Ljava/util/regex/Pattern;
    new-instance v6, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec$RegexMatchProbeSpec;

    new-instance v7, Ljava/net/URL;

    aget-object v1, v2, v1

    invoke-direct {v7, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, p0, v7, v0, v4}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec$RegexMatchProbeSpec;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V

    return-object v6

    .line 3031
    .end local v0    # "statusRegex":Ljava/util/regex/Pattern;
    .end local v3    # "statusRegexPos":I
    .end local v4    # "locationRegex":Ljava/util/regex/Pattern;
    .end local v5    # "locationRegexPos":I
    :cond_43
    new-instance v0, Ljava/text/ParseException;

    const-string v3, "Probe spec does not have 3 parts"

    invoke-direct {v0, v3, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 3026
    .end local v2    # "splits":[Ljava/lang/String;
    :cond_4b
    new-instance v0, Ljava/text/ParseException;

    const-string v2, "Empty probe spec"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static parseSpecOrNull(Ljava/lang/String;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;
    .registers 5
    .param p0, "spec"    # Ljava/lang/String;

    .line 3063
    if-eqz p0, :cond_1e

    .line 3065
    :try_start_2
    invoke-static {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;->parseSpec(Ljava/lang/String;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;

    move-result-object v0
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_6} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_6} :catch_7

    return-object v0

    .line 3066
    :catch_7
    move-exception v0

    .line 3067
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid probe spec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3071
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method private static safeMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z
    .registers 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 3157
    if-eqz p1, :cond_15

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method


# virtual methods
.method public getEncodedSpec()Ljava/lang/String;
    .registers 2

    .line 3108
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;->mEncodedSpec:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getResult(ILjava/lang/String;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
.end method

.method public getUrl()Ljava/net/URL;
    .registers 2

    .line 3113
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;->mUrl:Ljava/net/URL;

    return-object v0
.end method
