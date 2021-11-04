.class Lcom/android/server/audio/AudioService$6;
.super Lcom/samsung/android/server/audio/FrequentWorker;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/server/audio/FrequentWorker<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .line 11516
    iput-object p1, p0, Lcom/android/server/audio/AudioService$6;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Lcom/samsung/android/server/audio/FrequentWorker;-><init>()V

    .line 11518
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/server/audio/AudioService$6;->mPeriodMs:I

    .line 11519
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService$6;->mCachedValue:Ljava/lang/Object;

    .line 11520
    return-void
.end method


# virtual methods
.method public func()Ljava/lang/Boolean;
    .registers 3

    .line 11525
    nop

    .line 11526
    const-string/jumbo v0, "l_fmradio_record_active"

    invoke-static {v0}, Lcom/samsung/android/media/SemAudioSystem;->getPolicyParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11527
    .local v0, "isFMRadioRecordingMode":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic func()Ljava/lang/Object;
    .registers 2

    .line 11516
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$6;->func()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
