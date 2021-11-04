.class Lcom/samsung/android/server/audio/ScreenSharingHelper$1;
.super Ljava/lang/Object;
.source "ScreenSharingHelper.java"

# interfaces
.implements Landroid/hardware/display/SemDeviceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/ScreenSharingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/audio/ScreenSharingHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 59
    iput-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStatusChanged(I)V
    .registers 2
    .param p1, "status"    # I

    .line 62
    return-void
.end method

.method public onDlnaConnectionStatusChanged(Z)V
    .registers 2
    .param p1, "connected"    # Z

    .line 70
    return-void
.end method

.method public onQosLevelChanged(I)V
    .registers 2
    .param p1, "level"    # I

    .line 66
    return-void
.end method

.method public onScreenSharingStatusChanged(I)V
    .registers 4
    .param p1, "status"    # I

    .line 74
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1b

    .line 75
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DISPLAY_VOLUME_CONTROL:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    # getter for: Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsSupportDisplayVolumeControl:Z
    invoke-static {v0}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->access$000(Lcom/samsung/android/server/audio/ScreenSharingHelper;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    # setter for: Lcom/samsung/android/server/audio/ScreenSharingHelper;->mScreenSharingStateResumed:Z
    invoke-static {v0, v1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->access$102(Lcom/samsung/android/server/audio/ScreenSharingHelper;Z)Z

    .line 78
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setMirroingPolicyParameter(Z)V

    goto :goto_5f

    .line 79
    :cond_1b
    const/4 v0, 0x7

    if-ne p1, v0, :cond_5f

    .line 80
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DISPLAY_VOLUME_CONTROL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    # getter for: Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsSupportDisplayVolumeControl:Z
    invoke-static {v0}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->access$000(Lcom/samsung/android/server/audio/ScreenSharingHelper;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 81
    iget-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    # setter for: Lcom/samsung/android/server/audio/ScreenSharingHelper;->mScreenSharingStateResumed:Z
    invoke-static {v0, v1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->access$102(Lcom/samsung/android/server/audio/ScreenSharingHelper;Z)Z

    .line 83
    :cond_30
    iget-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setMirroingPolicyParameter(Z)V

    .line 85
    invoke-static {}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isSplitSoundEnabled()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 86
    invoke-static {v1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setSplitSoundEnabled(Z)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "l_smart_view_split_sound_enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-static {}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isSplitSoundEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    # getter for: Lcom/samsung/android/server/audio/ScreenSharingHelper;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v0}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->access$200(Lcom/samsung/android/server/audio/ScreenSharingHelper;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->checkSplitSoundAudioFocus()V

    .line 93
    :cond_5f
    :goto_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScreenSharingStatusChanged, status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    # getter for: Lcom/samsung/android/server/audio/ScreenSharingHelper;->mScreenSharingStateResumed:Z
    invoke-static {v1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->access$100(Lcom/samsung/android/server/audio/ScreenSharingHelper;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.ScreenSharingHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method
