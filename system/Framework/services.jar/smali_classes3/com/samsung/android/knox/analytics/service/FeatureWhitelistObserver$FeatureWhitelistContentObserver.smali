.class Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;
.super Landroid/database/ContentObserver;
.source "FeatureWhitelistObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureWhitelistContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;Landroid/os/Handler;)V
    .registers 4
    .param p2, "handler"    # Landroid/os/Handler;

    .line 32
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;

    .line 33
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 34
    # getter for: Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FeatureWhitelistContentObserver()"

    invoke-static {p1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;->updateFeatureWhitelistCache()V

    .line 36
    return-void
.end method

.method private updateFeatureWhitelistCache()V
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;

    # getter for: Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->access$200(Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getFeaturesWhitelist(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mFeaturesWhitelistCache:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->access$102(Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;Ljava/util/List;)Ljava/util/List;

    .line 46
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;

    # getter for: Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mFeaturesWhitelistCache:Ljava/util/List;
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->access$100(Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 47
    # getter for: Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeatureWhitelist.updateFeatureWhitelistCache(): Whitelist is null!"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void

    .line 50
    :cond_1f
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 39
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 40
    # getter for: Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeatureWhitelist.onChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;->updateFeatureWhitelistCache()V

    .line 42
    return-void
.end method
