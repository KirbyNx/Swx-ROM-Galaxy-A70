.class public Lcom/android/server/hdmi/ArcTerminationActionFromAvr;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "ArcTerminationActionFromAvr.java"


# static fields
.field private static final STATE_ARC_TERMINATED:I = 0x2

.field private static final STATE_WAITING_FOR_INITIATE_ARC_RESPONSE:I = 0x1

.field private static final TIMEOUT_MS:I = 0x3e8


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 2
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 34
    return-void
.end method

.method private handleTerminateArcTimeout()V
    .registers 3

    .line 91
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "handleTerminateArcTimeout"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->finish()V

    .line 93
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .registers 4
    .param p1, "state"    # I

    .line 64
    iget v0, p0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->mState:I

    if-eq v0, p1, :cond_5

    .line 65
    return-void

    .line 68
    :cond_5
    iget v0, p0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    goto :goto_e

    .line 70
    :cond_b
    invoke-direct {p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->handleTerminateArcTimeout()V

    .line 73
    :goto_e
    return-void
.end method

.method public synthetic lambda$sendTerminateArc$0$ArcTerminationActionFromAvr(I)V
    .registers 4
    .param p1, "result"    # I

    .line 78
    if-eqz p1, :cond_17

    .line 81
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_d

    .line 82
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 84
    :cond_d
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Terminate ARC was not successfully sent."

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->finish()V

    .line 87
    :cond_17
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 46
    iget v0, p0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    .line 47
    return v2

    .line 49
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v3, 0xc2

    if-eq v0, v3, :cond_10

    .line 59
    return v2

    .line 51
    :cond_10
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->mState:I

    .line 52
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getLocalActivePort()I

    move-result v0

    const/16 v2, 0x11

    if-ne v0, v2, :cond_35

    .line 54
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getRoutingPort()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    .line 56
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->finish()V

    .line 57
    return v1
.end method

.method protected sendTerminateArc()V
    .registers 3

    .line 76
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->getSourceAddress()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildTerminateArc(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/-$$Lambda$ArcTerminationActionFromAvr$Q5Tewk7_xZ9w3X8CStv_tIZuDQY;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/-$$Lambda$ArcTerminationActionFromAvr$Q5Tewk7_xZ9w3X8CStv_tIZuDQY;-><init>(Lcom/android/server/hdmi/ArcTerminationActionFromAvr;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 88
    return-void
.end method

.method start()Z
    .registers 4

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->mState:I

    .line 39
    iget v1, p0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->mState:I

    const/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->addTimer(II)V

    .line 40
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->sendTerminateArc()V

    .line 41
    return v0
.end method
