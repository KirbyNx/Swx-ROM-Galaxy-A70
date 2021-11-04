.class abstract Lcom/android/server/location/SettingsHelper$ObservingSetting;
.super Landroid/database/ContentObserver;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/SettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ObservingSetting"
.end annotation


# instance fields
.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistered:Z


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 430
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 431
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/SettingsHelper$ObservingSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 432
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Handler;
    .param p2, "x1"    # Lcom/android/server/location/SettingsHelper$1;

    .line 422
    invoke-direct {p0, p1}, Lcom/android/server/location/SettingsHelper$ObservingSetting;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;

    .line 449
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper$ObservingSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    return-void
.end method

.method protected declared-synchronized isRegistered()Z
    .registers 2

    monitor-enter p0

    .line 435
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/location/SettingsHelper$ObservingSetting;->mRegistered:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 435
    .end local p0    # "this":Lcom/android/server/location/SettingsHelper$ObservingSetting;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "location setting changed [u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper$ObservingSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;

    .line 463
    .local v1, "listener":Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;
    invoke-interface {v1, p3}, Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;->onSettingChanged(I)V

    .line 464
    .end local v1    # "listener":Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;
    goto :goto_25

    .line 465
    :cond_35
    return-void
.end method

.method protected declared-synchronized register(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    monitor-enter p0

    .line 439
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/location/SettingsHelper$ObservingSetting;->mRegistered:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-eqz v0, :cond_7

    .line 440
    monitor-exit p0

    return-void

    .line 443
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, p2, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/SettingsHelper$ObservingSetting;->mRegistered:Z
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_15

    .line 446
    monitor-exit p0

    return-void

    .line 438
    .end local p0    # "this":Lcom/android/server/location/SettingsHelper$ObservingSetting;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "uri":Landroid/net/Uri;
    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;

    .line 453
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper$ObservingSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 454
    return-void
.end method
