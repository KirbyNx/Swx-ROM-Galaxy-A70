.class Lcom/android/server/audio/AudioService$SamsungSettingsObserver;
.super Landroid/database/ContentObserver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamsungSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 6

    .line 14351
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 14352
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 14355
    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 14356
    const-string/jumbo v1, "hearing_musiccheck"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 14355
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 14357
    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 14358
    const-string/jumbo v1, "k2hd_effect"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 14357
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 14360
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    if-eqz v0, :cond_48

    .line 14361
    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "theme_touch_sound"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 14363
    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "system_sound"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 14366
    :cond_48
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    if-eqz v0, :cond_5a

    .line 14367
    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 14368
    const-string/jumbo v1, "headphone_monitoring"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 14367
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 14372
    :cond_5a
    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 14373
    const-string/jumbo v1, "multi_audio_focus_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 14372
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 14374
    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 14375
    const-string v1, "app_volume_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 14374
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 14377
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    if-eqz v0, :cond_87

    .line 14378
    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 14379
    const-string/jumbo v1, "isBikeMode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 14378
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 14381
    :cond_87
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    if-eqz v0, :cond_99

    .line 14382
    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 14383
    const-string/jumbo v1, "volume_monitor"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 14382
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 14389
    :cond_99
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DEFAULT_STREAM_NOTIFICATION:Z

    if-eqz v0, :cond_aa

    .line 14390
    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object p1

    .line 14391
    const-string v0, "cmc_own_settings_menu_supported"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 14390
    invoke-virtual {p1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 14393
    :cond_aa
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 8
    .param p1, "selfChange"    # Z

    .line 14397
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 14400
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hearing_musiccheck"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 14402
    .local v0, "isAdaptSoundEnabled":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "k2hd_effect"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 14404
    .local v1, "isUpscalerEnabled":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAdaptSoundEnabled:I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$14400(Lcom/android/server/audio/AudioService;)I

    move-result v3

    if-eq v3, v0, :cond_36

    .line 14405
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mAdaptSoundEnabled:I
    invoke-static {v3, v0}, Lcom/android/server/audio/AudioService;->access$14402(Lcom/android/server/audio/AudioService;I)I

    .line 14406
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAdaptSoundEnabled:I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$14400(Lcom/android/server/audio/AudioService;)I

    move-result v4

    # invokes: Lcom/android/server/audio/AudioService;->setAdaptSound(I)V
    invoke-static {v3, v4}, Lcom/android/server/audio/AudioService;->access$14500(Lcom/android/server/audio/AudioService;I)V

    goto :goto_4c

    .line 14407
    :cond_36
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUpscalerEnabled:I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$14600(Lcom/android/server/audio/AudioService;)I

    move-result v3

    if-eq v3, v1, :cond_4c

    .line 14408
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mUpscalerEnabled:I
    invoke-static {v3, v1}, Lcom/android/server/audio/AudioService;->access$14602(Lcom/android/server/audio/AudioService;I)I

    .line 14409
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUpscalerEnabled:I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$14600(Lcom/android/server/audio/AudioService;)I

    move-result v4

    # invokes: Lcom/android/server/audio/AudioService;->setUpscalerMode(I)V
    invoke-static {v3, v4}, Lcom/android/server/audio/AudioService;->access$14700(Lcom/android/server/audio/AudioService;I)V

    .line 14412
    .end local v0    # "isAdaptSoundEnabled":I
    .end local v1    # "isUpscalerEnabled":I
    :cond_4c
    :goto_4c
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    if-eqz v0, :cond_73

    .line 14413
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "headphone_monitoring"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 14415
    .local v0, "karaokeListenbackEnabled":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mKaraokeListenbackEnabled:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$14800(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-eq v1, v0, :cond_73

    .line 14416
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mKaraokeListenbackEnabled:I
    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->access$14802(Lcom/android/server/audio/AudioService;I)I

    .line 14417
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mKaraokeListenbackEnabled:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$14800(Lcom/android/server/audio/AudioService;)I

    move-result v3

    # invokes: Lcom/android/server/audio/AudioService;->setKaraokeListenback(I)V
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$14900(Lcom/android/server/audio/AudioService;I)V

    .line 14421
    .end local v0    # "karaokeListenbackEnabled":I
    :cond_73
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "multi_audio_focus_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_85

    move v0, v1

    goto :goto_86

    :cond_85
    move v0, v2

    .line 14422
    .local v0, "isMultiAudioFocusEnabled":Z
    :goto_86
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "app_volume_enabled"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_96

    move v4, v1

    goto :goto_97

    :cond_96
    move v4, v2

    :goto_97
    # setter for: Lcom/android/server/audio/AudioService;->mAppVolumeEnabled:Z
    invoke-static {v3, v4}, Lcom/android/server/audio/AudioService;->access$15002(Lcom/android/server/audio/AudioService;Z)Z

    .line 14424
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMultiAudioFocusEnabled:Z
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$15100(Lcom/android/server/audio/AudioService;)Z

    move-result v3

    if-eq v3, v0, :cond_c1

    .line 14425
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mMultiAudioFocusEnabled:Z
    invoke-static {v3, v0}, Lcom/android/server/audio/AudioService;->access$15102(Lcom/android/server/audio/AudioService;Z)Z

    .line 14426
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$8200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/audio/MediaFocusControl;->updateMultiAudioFocus()V

    .line 14427
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMultiAudioFocusEnabled:Z
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$15100(Lcom/android/server/audio/AudioService;)Z

    move-result v3

    if-nez v3, :cond_c1

    .line 14428
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastBecomingNoisy()V

    .line 14432
    .end local v0    # "isMultiAudioFocusEnabled":Z
    :cond_c1
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    if-eqz v0, :cond_de

    .line 14433
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "isBikeMode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_da

    move v3, v1

    goto :goto_db

    :cond_da
    move v3, v2

    :goto_db
    # setter for: Lcom/android/server/audio/AudioService;->mIsBikeMode:Z
    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService;->access$15202(Lcom/android/server/audio/AudioService;Z)Z

    .line 14435
    :cond_de
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    if-eqz v0, :cond_eb

    .line 14436
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    # invokes: Lcom/android/server/audio/AudioService;->updateThemeSound(IZ)V
    invoke-static {v0, v3, v2}, Lcom/android/server/audio/AudioService;->access$8400(Lcom/android/server/audio/AudioService;IZ)V

    .line 14438
    :cond_eb
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    if-eqz v0, :cond_123

    .line 14439
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "volume_monitor"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 14440
    .local v0, "value":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mVolumeMonitorValue:I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$15300(Lcom/android/server/audio/AudioService;)I

    move-result v3

    if-eq v3, v0, :cond_123

    .line 14441
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mVolumeMonitorValue:I
    invoke-static {v3, v0}, Lcom/android/server/audio/AudioService;->access$15302(Lcom/android/server/audio/AudioService;I)I

    .line 14442
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getVolumeMonitorService()Lcom/samsung/android/server/audio/VolumeMonitorService;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$13800(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/VolumeMonitorService;

    move-result-object v3

    if-ne v0, v1, :cond_113

    move v4, v1

    goto :goto_114

    :cond_113
    move v4, v2

    :goto_114
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/audio/VolumeMonitorService;->setVolumeMonitorOnOff(Z)V

    .line 14443
    const/4 v3, 0x2

    if-ne v0, v3, :cond_123

    .line 14444
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getVolumeMonitorService()Lcom/samsung/android/server/audio/VolumeMonitorService;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$13800(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/VolumeMonitorService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/audio/VolumeMonitorService;->resetByDataClear()V

    .line 14456
    .end local v0    # "value":I
    :cond_123
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DEFAULT_STREAM_NOTIFICATION:Z

    if-eqz v0, :cond_14f

    .line 14458
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/audio/AudioHelper;->getPlatformType(Landroid/content/Context;)I

    move-result v0

    .line 14459
    .local v0, "newPlatformType":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mPlatformType:I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$15400(Lcom/android/server/audio/AudioService;)I

    move-result v3

    if-eq v3, v0, :cond_14f

    .line 14460
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mPlatformType:I
    invoke-static {v3, v0}, Lcom/android/server/audio/AudioService;->access$15402(Lcom/android/server/audio/AudioService;I)I

    .line 14461
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mPlatformType:I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$15400(Lcom/android/server/audio/AudioService;)I

    move-result v3

    if-ne v3, v1, :cond_148

    .line 14462
    sput-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DEFAULT_STREAM_NOTIFICATION:Z

    .line 14464
    :cond_148
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v3, "AS.AudioService.CMC"

    # invokes: Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/audio/AudioService;->access$15500(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V

    .line 14467
    .end local v0    # "newPlatformType":I
    :cond_14f
    return-void
.end method
