.class Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;
.super Lcom/android/server/location/SettingsHelper$ObservingSetting;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/SettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringSetCachedGlobalSetting"
.end annotation


# instance fields
.field private final mBaseValuesSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCachedValue:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mSettingName:Ljava/lang/String;

.field private mValid:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Supplier;Landroid/os/Handler;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingName"    # Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 597
    .local p3, "baseValuesSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p4, v0}, Lcom/android/server/location/SettingsHelper$ObservingSetting;-><init>(Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V

    .line 598
    iput-object p1, p0, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->mContext:Landroid/content/Context;

    .line 599
    iput-object p2, p0, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->mSettingName:Ljava/lang/String;

    .line 600
    iput-object p3, p0, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->mBaseValuesSupplier:Ljava/util/function/Supplier;

    .line 602
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->mValid:Z

    .line 603
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Supplier;Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V
    .registers 6
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/util/function/Supplier;
    .param p4, "x3"    # Landroid/os/Handler;
    .param p5, "x4"    # Lcom/android/server/location/SettingsHelper$1;

    .line 584
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Supplier;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getValue()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 610
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->mCachedValue:Landroid/util/ArraySet;

    .line 611
    .local v0, "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->mValid:Z

    if-nez v1, :cond_50

    .line 612
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_52

    .line 614
    .local v1, "identity":J
    :try_start_b
    new-instance v3, Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->mBaseValuesSupplier:Ljava/util/function/Supplier;

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    move-object v0, v3

    .line 615
    iget-object v3, p0, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 617
    .local v3, "setting":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_4b

    if-nez v4, :cond_3b

    .line 618
    :try_start_2b
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_39

    goto :goto_3b

    .line 621
    .end local v3    # "setting":Ljava/lang/String;
    :catchall_39
    move-exception v3

    goto :goto_4c

    :cond_3b
    :goto_3b
    :try_start_3b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 622
    nop

    .line 624
    invoke-virtual {p0}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 625
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->mValid:Z

    .line 626
    iput-object v0, p0, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->mCachedValue:Landroid/util/ArraySet;

    goto :goto_50

    .line 621
    .end local p0    # "this":Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;
    :catchall_4b
    move-exception v3

    :goto_4c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 622
    throw v3
    :try_end_50
    .catchall {:try_start_3b .. :try_end_50} :catchall_52

    .line 630
    .end local v1    # "identity":J
    :cond_50
    :goto_50
    monitor-exit p0

    return-object v0

    .line 609
    .end local v0    # "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_52
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidate()V
    .registers 2

    monitor-enter p0

    .line 634
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->mValid:Z

    .line 635
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->mCachedValue:Landroid/util/ArraySet;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 636
    monitor-exit p0

    return-void

    .line 633
    .end local p0    # "this":Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 640
    invoke-virtual {p0}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->invalidate()V

    .line 641
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/location/SettingsHelper$ObservingSetting;->onChange(ZLandroid/net/Uri;I)V

    .line 642
    return-void
.end method

.method public register()V
    .registers 3

    .line 606
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->register(Landroid/content/Context;Landroid/net/Uri;)V

    .line 607
    return-void
.end method
