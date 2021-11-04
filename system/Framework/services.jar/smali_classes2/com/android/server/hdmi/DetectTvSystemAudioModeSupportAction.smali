.class public Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "DetectTvSystemAudioModeSupportAction.java"


# static fields
.field static final MAX_RETRY_COUNT:I = 0x5

.field private static final STATE_WAITING_FOR_FEATURE_ABORT:I = 0x1

.field private static final STATE_WAITING_FOR_SET_SAM:I = 0x2


# instance fields
.field private mCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;

.field private mSendSetSystemAudioModeRetryCount:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;)V
    .registers 4
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "callback"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mSendSetSystemAudioModeRetryCount:I

    .line 38
    iput-object p2, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;

    .line 39
    return-void
.end method

.method private finishAction(Z)V
    .registers 3
    .param p1, "supported"    # Z

    .line 110
    iget-object v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;

    invoke-interface {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;->onResult(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setTvSystemAudioModeSupport(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->finish()V

    .line 113
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .registers 5
    .param p1, "state"    # I

    .line 75
    iget v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mState:I

    if-eq v0, p1, :cond_5

    .line 76
    return-void

    .line 79
    :cond_5
    iget v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    const/4 v2, 0x2

    if-eq v0, v2, :cond_e

    .line 94
    return-void

    .line 84
    :cond_e
    iget v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mSendSetSystemAudioModeRetryCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mSendSetSystemAudioModeRetryCount:I

    .line 85
    const/4 v2, 0x5

    if-ge v0, v2, :cond_23

    .line 86
    iput v1, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mState:I

    .line 87
    iget v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->addTimer(II)V

    .line 88
    invoke-virtual {p0}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->sendSetSystemAudioMode()V

    goto :goto_2c

    .line 90
    :cond_23
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->finishAction(Z)V

    .line 92
    goto :goto_2c

    .line 81
    :cond_28
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->finishAction(Z)V

    .line 82
    nop

    .line 96
    :goto_2c
    return-void
.end method

.method public synthetic lambda$sendSetSystemAudioMode$0$DetectTvSystemAudioModeSupportAction(I)V
    .registers 3
    .param p1, "result"    # I

    .line 103
    if-eqz p1, :cond_6

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->finishAction(Z)V

    .line 106
    :cond_6
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 51
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2f

    .line 52
    iget v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_d

    .line 53
    return v1

    .line 55
    :cond_d
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->getAbortFeatureOpcode(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v0

    const/16 v3, 0x72

    if-ne v0, v3, :cond_2f

    .line 56
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->getAbortReason(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v0

    if-ne v0, v2, :cond_2b

    .line 57
    iget-object v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mState:I

    .line 63
    iget v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mState:I

    const/16 v1, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->addTimer(II)V

    goto :goto_2e

    .line 65
    :cond_2b
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->finishAction(Z)V

    .line 67
    :goto_2e
    return v2

    .line 70
    :cond_2f
    return v1
.end method

.method protected sendSetSystemAudioMode()V
    .registers 4

    .line 99
    nop

    .line 100
    invoke-virtual {p0}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->getSourceAddress()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/-$$Lambda$DetectTvSystemAudioModeSupportAction$9ZB9uijssEfI695RNRL5G3nnAaM;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/-$$Lambda$DetectTvSystemAudioModeSupportAction$9ZB9uijssEfI695RNRL5G3nnAaM;-><init>(Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;)V

    .line 99
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 107
    return-void
.end method

.method start()Z
    .registers 4

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mState:I

    .line 44
    iget v1, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mState:I

    const/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->addTimer(II)V

    .line 45
    invoke-virtual {p0}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->sendSetSystemAudioMode()V

    .line 46
    return v0
.end method
