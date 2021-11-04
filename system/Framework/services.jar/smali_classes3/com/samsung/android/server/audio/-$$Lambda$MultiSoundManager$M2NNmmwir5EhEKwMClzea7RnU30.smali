.class public final synthetic Lcom/samsung/android/server/audio/-$$Lambda$MultiSoundManager$M2NNmmwir5EhEKwMClzea7RnU30;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/media/AudioParameter;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/media/AudioParameter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/audio/-$$Lambda$MultiSoundManager$M2NNmmwir5EhEKwMClzea7RnU30;->f$0:Lcom/samsung/android/media/AudioParameter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/audio/-$$Lambda$MultiSoundManager$M2NNmmwir5EhEKwMClzea7RnU30;->f$0:Lcom/samsung/android/media/AudioParameter;

    invoke-static {v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->lambda$setDeviceToNative$0(Lcom/samsung/android/media/AudioParameter;)V

    return-void
.end method
