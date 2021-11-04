.class Lcom/android/server/audio/AudioService$7;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .line 14225
    iput-object p1, p0, Lcom/android/server/audio/AudioService$7;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAudioSettingsPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "method"    # Ljava/lang/String;

    .line 14297
    iget-object v0, p0, Lcom/android/server/audio/AudioService$7;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkDeviceConnected(I)Z
    .registers 3
    .param p1, "devices"    # I

    .line 14263
    iget-object v0, p0, Lcom/android/server/audio/AudioService$7;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->checkDeviceConnected(I)Z

    move-result v0

    return v0
.end method

.method public clearNotification()V
    .registers 2

    .line 14233
    iget-object v0, p0, Lcom/android/server/audio/AudioService$7;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->clearNotification()V

    .line 14234
    return-void
.end method

.method public getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 14274
    iget-object v0, p0, Lcom/android/server/audio/AudioService$7;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$14100(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$7;->this$0:Lcom/android/server/audio/AudioService;

    .line 14275
    # getter for: Lcom/android/server/audio/AudioService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$14100(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 14274
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 14275
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14274
    return-object v0
.end method

.method public getConnectedDevice()I
    .registers 2

    .line 14253
    iget-object v0, p0, Lcom/android/server/audio/AudioService$7;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getConnectedDevice()I

    move-result v0

    return v0
.end method

.method public getCurrentMediaDevice()I
    .registers 2

    .line 14258
    iget-object v0, p0, Lcom/android/server/audio/AudioService$7;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getObservedDevicesForMedia()I

    move-result v0

    return v0
.end method

.method public getMultiSoundAppFromSetting()Ljava/lang/String;
    .registers 3

    .line 14302
    iget-object v0, p0, Lcom/android/server/audio/AudioService$7;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "multisound_app"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName(I)[Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I

    .line 14268
    iget-object v0, p0, Lcom/android/server/audio/AudioService$7;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getPackageName(I)[Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->access$14000(Lcom/android/server/audio/AudioService;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInstalledApp(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 14281
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$7;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_f} :catch_14

    .line 14282
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_13

    .line 14283
    const/4 v0, 0x1

    return v0

    .line 14286
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_13
    goto :goto_15

    .line 14285
    :catch_14
    move-exception v1

    .line 14287
    :goto_15
    return v0
.end method

.method public sendBecomingNoisyIntent(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 14292
    iget-object v0, p0, Lcom/android/server/audio/AudioService$7;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->sendBecomingNoisyIntent(I)I
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->access$14200(Lcom/android/server/audio/AudioService;I)I

    .line 14293
    return-void
.end method

.method public showHeadUpNotification(I)V
    .registers 4
    .param p1, "device"    # I

    .line 14238
    iget-object v0, p0, Lcom/android/server/audio/AudioService$7;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$7;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getPriorityDevice(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->showHeadUpNotification(II)V

    .line 14239
    return-void
.end method

.method public showNotification()V
    .registers 2

    .line 14228
    iget-object v0, p0, Lcom/android/server/audio/AudioService$7;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->showNotification()V

    .line 14229
    return-void
.end method

.method public updateFocusRequester(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 14248
    iget-object v0, p0, Lcom/android/server/audio/AudioService$7;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$8200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->updateFocusRequester(I)V

    .line 14249
    return-void
.end method

.method public updateForegroundUid(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 14243
    iget-object v0, p0, Lcom/android/server/audio/AudioService$7;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mForegroundUid:I
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->access$13902(Lcom/android/server/audio/AudioService;I)I

    .line 14244
    return-void
.end method
