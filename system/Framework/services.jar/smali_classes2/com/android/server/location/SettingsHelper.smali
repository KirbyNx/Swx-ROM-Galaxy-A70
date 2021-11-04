.class public Lcom/android/server/location/SettingsHelper;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;,
        Lcom/android/server/location/SettingsHelper$LongGlobalSetting;,
        Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;,
        Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;,
        Lcom/android/server/location/SettingsHelper$ObservingSetting;,
        Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;,
        Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_THROTTLE_INTERVAL_MS:J = 0x1b7740L

.field private static final DEFAULT_BACKGROUND_THROTTLE_PROXIMITY_ALERT_INTERVAL_MS:J = 0x1b7740L

.field private static final DEFAULT_COARSE_LOCATION_ACCURACY_M:F = 2000.0f

.field private static final LOCATION_PACKAGE_BLACKLIST:Ljava/lang/String; = "locationPackagePrefixBlacklist"

.field private static final LOCATION_PACKAGE_WHITELIST:Ljava/lang/String; = "locationPackagePrefixWhitelist"


# instance fields
.field private final mBackgroundThrottleIntervalMs:Lcom/android/server/location/SettingsHelper$LongGlobalSetting;

.field private final mBackgroundThrottlePackageAllowlistByNsflp:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

.field private final mContext:Landroid/content/Context;

.field private final mIgnoreSettingsPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

.field private final mLocationMode:Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;

.field private final mLocationPackageBlacklist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

.field private final mLocationPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageAllowlistByNsflp:Landroid/util/ArraySet;

    .line 112
    iput-object p1, p0, Lcom/android/server/location/SettingsHelper;->mContext:Landroid/content/Context;

    .line 114
    new-instance v0, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;

    const-string/jumbo v1, "location_mode"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V

    iput-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationMode:Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;

    .line 115
    new-instance v0, Lcom/android/server/location/SettingsHelper$LongGlobalSetting;

    const-string/jumbo v1, "location_background_throttle_interval_ms"

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/server/location/SettingsHelper$LongGlobalSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V

    iput-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/SettingsHelper$LongGlobalSetting;

    .line 117
    new-instance v0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    const-string/jumbo v1, "locationPackagePrefixBlacklist"

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V

    iput-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    .line 119
    new-instance v0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    const-string/jumbo v1, "locationPackagePrefixWhitelist"

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V

    iput-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    .line 121
    new-instance v6, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    sget-object v3, Lcom/android/server/location/-$$Lambda$SettingsHelper$DVmNGa9ypltgL35WVwJuSTIxRS8;->INSTANCE:Lcom/android/server/location/-$$Lambda$SettingsHelper$DVmNGa9ypltgL35WVwJuSTIxRS8;

    const-string/jumbo v2, "location_background_throttle_package_whitelist"

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Supplier;Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V

    iput-object v6, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    .line 124
    new-instance v6, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    sget-object v3, Lcom/android/server/location/-$$Lambda$SettingsHelper$Ez8giHaZAPYwS7zICeUtrlXPpBo;->INSTANCE:Lcom/android/server/location/-$$Lambda$SettingsHelper$Ez8giHaZAPYwS7zICeUtrlXPpBo;

    const-string/jumbo v2, "location_ignore_settings_package_whitelist"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Supplier;Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V

    iput-object v6, p0, Lcom/android/server/location/SettingsHelper;->mIgnoreSettingsPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    .line 127
    return-void
.end method

.method static synthetic lambda$new$0()Landroid/util/ArraySet;
    .registers 1

    .line 123
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowUnthrottledLocation()Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$1()Landroid/util/ArraySet;
    .registers 1

    .line 126
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowIgnoreLocationSettings()Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addOnBackgroundThrottleIntervalChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;

    .line 192
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/SettingsHelper$LongGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$LongGlobalSetting;->addListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    .line 193
    return-void
.end method

.method public addOnBackgroundThrottlePackageWhitelistChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;

    .line 241
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->addListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    .line 242
    return-void
.end method

.method public addOnIgnoreSettingsPackageWhitelistChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;

    .line 265
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mIgnoreSettingsPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->addListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    .line 266
    return-void
.end method

.method public addOnLocationEnabledChangedListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;

    .line 169
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationMode:Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;->addListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    .line 170
    return-void
.end method

.method public clearThrottlingAllowListByNsflp()V
    .registers 3

    .line 344
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageAllowlistByNsflp:Landroid/util/ArraySet;

    monitor-enter v0

    .line 345
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageAllowlistByNsflp:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 346
    monitor-exit v0

    .line 347
    return-void

    .line 346
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 360
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 361
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 363
    .local v1, "userId":I
    const-string v2, "Location Enabled: "

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0, v1}, Lcom/android/server/location/SettingsHelper;->isLocationEnabled(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 366
    iget-object v2, p0, Lcom/android/server/location/SettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v2, v1}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v2

    .line 367
    .local v2, "locationPackageBlacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6d

    .line 368
    const-string v3, "Location Blacklisted Packages:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 370
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 371
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 372
    .end local v4    # "packageName":Ljava/lang/String;
    goto :goto_2f

    .line 373
    :cond_3f
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 375
    iget-object v3, p0, Lcom/android/server/location/SettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v3, v1}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v3

    .line 377
    .local v3, "locationPackageWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6d

    .line 378
    const-string v4, "Location Whitelisted Packages:"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 380
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 381
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 382
    .end local v5    # "packageName":Ljava/lang/String;
    goto :goto_5a

    .line 383
    :cond_6a
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 387
    .end local v3    # "locationPackageWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6d
    iget-object v3, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    .line 388
    invoke-virtual {v3}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->getValue()Ljava/util/Set;

    move-result-object v3

    .line 389
    .local v3, "backgroundThrottlePackageWhitelist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_98

    .line 390
    const-string v4, "Throttling Whitelisted Packages:"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 392
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_85
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_95

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 393
    .restart local v5    # "packageName":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 394
    .end local v5    # "packageName":Ljava/lang/String;
    goto :goto_85

    .line 395
    :cond_95
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 399
    :cond_98
    iget-object v4, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageAllowlistByNsflp:Landroid/util/ArraySet;

    monitor-enter v4

    .line 400
    :try_start_9b
    iget-object v5, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageAllowlistByNsflp:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c4

    .line 401
    const-string v5, "Throttling Allowlisted Packages by nsflp:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 403
    iget-object v5, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageAllowlistByNsflp:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 404
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 405
    .end local v6    # "packageName":Ljava/lang/String;
    goto :goto_b1

    .line 406
    :cond_c1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 408
    :cond_c4
    monitor-exit v4
    :try_end_c5
    .catchall {:try_start_9b .. :try_end_c5} :catchall_f1

    .line 411
    iget-object v4, p0, Lcom/android/server/location/SettingsHelper;->mIgnoreSettingsPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v4}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->getValue()Ljava/util/Set;

    move-result-object v4

    .line 412
    .local v4, "ignoreSettingsPackageWhitelist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f0

    .line 413
    const-string v5, "Bypass Whitelisted Packages:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 415
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_dd
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ed

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 416
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 417
    .end local v6    # "packageName":Ljava/lang/String;
    goto :goto_dd

    .line 418
    :cond_ed
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 420
    :cond_f0
    return-void

    .line 408
    .end local v4    # "ignoreSettingsPackageWhitelist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_f1
    move-exception v5

    :try_start_f2
    monitor-exit v4
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_f1

    throw v5
.end method

.method public getBackgroundThrottleIntervalMs()J
    .registers 4

    .line 183
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/SettingsHelper$LongGlobalSetting;

    const-wide/32 v1, 0x1b7740

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/SettingsHelper$LongGlobalSetting;->getValue(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBackgroundThrottlePackageWhitelist()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->getValue()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundThrottleProximityAlertIntervalMs()J
    .registers 7

    .line 280
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 282
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_background_throttle_proximity_alert_interval_ms"

    const-wide/32 v4, 0x1b7740

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 286
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 282
    return-wide v2

    .line 286
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 287
    throw v2
.end method

.method public getCoarseLocationAccuracyM()F
    .registers 6

    .line 295
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 297
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/SettingsHelper;->mContext:Landroid/content/Context;

    .line 298
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "locationCoarseAccuracy"

    const/high16 v4, 0x44fa0000    # 2000.0f

    .line 297
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 302
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 297
    return v2

    .line 302
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 303
    throw v2
.end method

.method public getIgnoreSettingsPackageWhitelist()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mIgnoreSettingsPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->getValue()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isBackgroundThrottlePackageAllowlistByNsflp(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 350
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageAllowlistByNsflp:Landroid/util/ArraySet;

    monitor-enter v0

    .line 351
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageAllowlistByNsflp:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 352
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isLocationEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 143
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationMode:Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;->getValueForUser(II)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1
.end method

.method public isLocationPackageBlacklisted(ILjava/lang/String;)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v0

    .line 208
    .local v0, "locationPackageBlacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 209
    return v2

    .line 212
    :cond_e
    iget-object v1, p0, Lcom/android/server/location/SettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v1, p1}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v1

    .line 213
    .local v1, "locationPackageWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 214
    .local v4, "locationWhitelistPackage":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 215
    return v2

    .line 217
    .end local v4    # "locationWhitelistPackage":Ljava/lang/String;
    :cond_2b
    goto :goto_18

    .line 219
    :cond_2c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 220
    .local v4, "locationBlacklistPackage":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 221
    const/4 v2, 0x1

    return v2

    .line 223
    .end local v4    # "locationBlacklistPackage":Ljava/lang/String;
    :cond_44
    goto :goto_30

    .line 225
    :cond_45
    return v2
.end method

.method public onSystemReady()V
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationMode:Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;

    # invokes: Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;->register()V
    invoke-static {v0}, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;->access$400(Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;)V

    .line 132
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/SettingsHelper$LongGlobalSetting;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper$LongGlobalSetting;->register()V

    .line 133
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->register()V

    .line 134
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->register()V

    .line 135
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->register()V

    .line 136
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mIgnoreSettingsPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->register()V

    .line 137
    return-void
.end method

.method public removeOnBackgroundThrottleIntervalChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;

    .line 200
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/SettingsHelper$LongGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$LongGlobalSetting;->removeListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    .line 201
    return-void
.end method

.method public removeOnBackgroundThrottlePackageWhitelistChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;

    .line 249
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->removeListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    .line 250
    return-void
.end method

.method public removeOnIgnoreSettingsPackageWhitelistChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;

    .line 273
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mIgnoreSettingsPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->removeListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    .line 274
    return-void
.end method

.method public removeOnLocationEnabledChangedListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;

    .line 176
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationMode:Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;->removeListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    .line 177
    return-void
.end method

.method public setLocationEnabled(ZI)V
    .registers 8
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 150
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 152
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/SettingsHelper;->mContext:Landroid/content/Context;

    .line 153
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_mode"

    .line 155
    if-eqz p1, :cond_11

    .line 156
    const/4 v4, 0x3

    goto :goto_12

    .line 157
    :cond_11
    const/4 v4, 0x0

    .line 152
    :goto_12
    invoke-static {v2, v3, v4, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1a

    .line 160
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 161
    nop

    .line 162
    return-void

    .line 160
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 161
    throw v2
.end method

.method public setLocationProviderAllowed(Ljava/lang/String;ZI)V
    .registers 10
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 312
    const-string v0, "fused"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_42

    .line 316
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 319
    .local v0, "identity":J
    :try_start_16
    iget-object v2, p0, Lcom/android/server/location/SettingsHelper;->mContext:Landroid/content/Context;

    .line 320
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_providers_allowed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    if-eqz p2, :cond_29

    const-string v5, "+"

    goto :goto_2b

    :cond_29
    const-string v5, "-"

    :goto_2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 319
    invoke-static {v2, v3, v4, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_38
    .catchall {:try_start_16 .. :try_end_38} :catchall_3d

    .line 325
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    nop

    .line 327
    return-void

    .line 325
    :catchall_3d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    throw v2

    .line 313
    .end local v0    # "identity":J
    :cond_42
    :goto_42
    return-void
.end method

.method public updateThrottlingAllowListByNsflp(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 331
    .local p1, "allowList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageAllowlistByNsflp:Landroid/util/ArraySet;

    monitor-enter v0

    .line 332
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageAllowlistByNsflp:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 334
    if-eqz p1, :cond_2e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 335
    iget-object v1, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageAllowlistByNsflp:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 336
    const-string v1, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Throttling Allowlist by nsflp is updated, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageAllowlistByNsflp:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 338
    :cond_2e
    const-string v1, "LocationManagerService"

    const-string v2, "Cleared throttling AllowList by nsflp"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :goto_35
    monitor-exit v0

    .line 341
    return-void

    .line 340
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method
