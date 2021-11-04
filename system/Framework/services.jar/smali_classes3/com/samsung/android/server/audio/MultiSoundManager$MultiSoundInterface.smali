.class public interface abstract Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;
.super Ljava/lang/Object;
.source "MultiSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/MultiSoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MultiSoundInterface"
.end annotation


# virtual methods
.method public abstract checkAudioSettingsPermission(Ljava/lang/String;)Z
.end method

.method public abstract checkDeviceConnected(I)Z
.end method

.method public abstract clearNotification()V
.end method

.method public abstract getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getConnectedDevice()I
.end method

.method public abstract getCurrentMediaDevice()I
.end method

.method public abstract getMultiSoundAppFromSetting()Ljava/lang/String;
.end method

.method public abstract getPackageName(I)[Ljava/lang/String;
.end method

.method public abstract isInstalledApp(Ljava/lang/String;)Z
.end method

.method public abstract sendBecomingNoisyIntent(I)V
.end method

.method public abstract showHeadUpNotification(I)V
.end method

.method public abstract showNotification()V
.end method

.method public abstract updateFocusRequester(I)V
.end method

.method public abstract updateForegroundUid(I)V
.end method
