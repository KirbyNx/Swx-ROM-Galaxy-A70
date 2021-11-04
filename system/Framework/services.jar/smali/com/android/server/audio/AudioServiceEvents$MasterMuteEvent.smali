.class final Lcom/android/server/audio/AudioServiceEvents$MasterMuteEvent;
.super Lcom/android/server/audio/AudioEventLogger$Event;
.source "AudioServiceEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioServiceEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MasterMuteEvent"
.end annotation


# instance fields
.field final mCaller:Ljava/lang/String;

.field final mIsMute:I

.field final mflags:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .registers 4
    .param p1, "isMute"    # I
    .param p2, "flags"    # I
    .param p3, "caller"    # Ljava/lang/String;

    .line 470
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 471
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$MasterMuteEvent;->mIsMute:I

    .line 472
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$MasterMuteEvent;->mflags:I

    .line 473
    iput-object p3, p0, Lcom/android/server/audio/AudioServiceEvents$MasterMuteEvent;->mCaller:Ljava/lang/String;

    .line 474
    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .registers 3

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setMasterMute(mute:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$MasterMuteEvent;->mIsMute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 479
    const-string v1, " flags:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$MasterMuteEvent;->mflags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const-string v1, ") from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$MasterMuteEvent;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 478
    return-object v0
.end method
