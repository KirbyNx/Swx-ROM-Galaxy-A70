.class public Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;
.super Ljava/lang/Object;
.source "BlacklistedFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;
    }
.end annotation


# instance fields
.field private mDisableApi:Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

.field private mFeature:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "disableType"    # Ljava/lang/Integer;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;->mFeature:Ljava/lang/String;

    .line 15
    invoke-static {p2}, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;->fromDisableType(Ljava/lang/Integer;)Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;->mDisableApi:Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    .line 16
    return-void
.end method

.method private static fromDisableType(Ljava/lang/Integer;)Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;
    .registers 3
    .param p0, "disableType"    # Ljava/lang/Integer;

    .line 19
    if-nez p0, :cond_5

    .line 20
    sget-object v0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;->ALL:Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    return-object v0

    .line 22
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_10
    sget-object v0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;->GET:Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    return-object v0

    .line 24
    :cond_13
    sget-object v0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;->ALL:Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    return-object v0
.end method


# virtual methods
.method public getDisableApi()Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;->mDisableApi:Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    return-object v0
.end method

.method public hasFeatureName(Ljava/lang/String;)Z
    .registers 3
    .param p1, "feature"    # Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;->mFeature:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
