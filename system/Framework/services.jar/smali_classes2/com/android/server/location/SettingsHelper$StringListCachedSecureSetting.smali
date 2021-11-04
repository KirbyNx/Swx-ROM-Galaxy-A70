.class Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;
.super Lcom/android/server/location/SettingsHelper$ObservingSetting;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/SettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringListCachedSecureSetting"
.end annotation


# instance fields
.field private mCachedUserId:I

.field private mCachedValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mSettingName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingName"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 506
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/server/location/SettingsHelper$ObservingSetting;-><init>(Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V

    .line 507
    iput-object p1, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mContext:Landroid/content/Context;

    .line 508
    iput-object p2, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mSettingName:Ljava/lang/String;

    .line 510
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mCachedUserId:I

    .line 511
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V
    .registers 5
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/os/Handler;
    .param p4, "x3"    # Lcom/android/server/location/SettingsHelper$1;

    .line 494
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getValueForUser(I)Ljava/util/List;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 518
    const/16 v0, -0x2710

    if-eq p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    :try_start_8
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 520
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mCachedValue:Ljava/util/List;

    .line 521
    .local v0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v1, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mCachedUserId:I

    if-eq p1, v1, :cond_4e

    .line 522
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_50

    .line 524
    .local v1, "identity":J
    :try_start_15
    iget-object v3, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 526
    .local v3, "setting":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_49

    if-eqz v4, :cond_2f

    .line 527
    :try_start_27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2d

    move-object v0, v4

    goto :goto_3a

    .line 532
    .end local v3    # "setting":Ljava/lang/String;
    :catchall_2d
    move-exception v3

    goto :goto_4a

    .line 529
    .restart local v3    # "setting":Ljava/lang/String;
    :cond_2f
    :try_start_2f
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_49

    move-object v0, v4

    .line 532
    .end local v3    # "setting":Ljava/lang/String;
    :goto_3a
    :try_start_3a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 533
    nop

    .line 535
    invoke-virtual {p0}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 536
    iput p1, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mCachedUserId:I

    .line 537
    iput-object v0, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mCachedValue:Ljava/util/List;

    goto :goto_4e

    .line 532
    .end local p0    # "this":Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;
    :catchall_49
    move-exception v3

    :goto_4a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 533
    throw v3
    :try_end_4e
    .catchall {:try_start_3a .. :try_end_4e} :catchall_50

    .line 541
    .end local v1    # "identity":J
    :cond_4e
    :goto_4e
    monitor-exit p0

    return-object v0

    .line 517
    .end local v0    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p1    # "userId":I
    :catchall_50
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized invalidateForUser(I)V
    .registers 3
    .param p1, "userId"    # I

    monitor-enter p0

    .line 545
    :try_start_1
    iget v0, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mCachedUserId:I

    if-ne v0, p1, :cond_c

    .line 546
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mCachedUserId:I

    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mCachedValue:Ljava/util/List;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 549
    .end local p0    # "this":Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;
    :cond_c
    monitor-exit p0

    return-void

    .line 544
    .end local p1    # "userId":I
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 553
    invoke-virtual {p0, p3}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->invalidateForUser(I)V

    .line 554
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/location/SettingsHelper$ObservingSetting;->onChange(ZLandroid/net/Uri;I)V

    .line 555
    return-void
.end method

.method public register()V
    .registers 3

    .line 514
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->register(Landroid/content/Context;Landroid/net/Uri;)V

    .line 515
    return-void
.end method
