.class public final synthetic Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerHw2Compat$ewHo6fX75Dw1073KIePOuh3oLIE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$loadPhraseSoundModel_2_1Callback;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerHw2Compat$ewHo6fX75Dw1073KIePOuh3oLIE;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerHw2Compat$ewHo6fX75Dw1073KIePOuh3oLIE;->f$1:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final onValues(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerHw2Compat$ewHo6fX75Dw1073KIePOuh3oLIE;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerHw2Compat$ewHo6fX75Dw1073KIePOuh3oLIE;->f$1:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->lambda$loadPhraseSoundModel$2(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V

    return-void
.end method
