.class public final synthetic Lcom/android/server/audio/-$$Lambda$AudioService$8HPm-jp0FScvfGk7CHPPU1kXppw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/-$$Lambda$AudioService$8HPm-jp0FScvfGk7CHPPU1kXppw;->f$0:Lcom/android/server/audio/AudioService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/audio/-$$Lambda$AudioService$8HPm-jp0FScvfGk7CHPPU1kXppw;->f$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->lambda$onRunSoundAssistant$3$AudioService()V

    return-void
.end method
