.class Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;
.super Ljava/lang/Object;
.source "SoundEffectsHelper.java"

# interfaces
.implements Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

.field final synthetic val$effect:I

.field final synthetic val$volume:I


# direct methods
.method constructor <init>(Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;II)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    .line 512
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;->this$1:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    iput p2, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;->val$effect:I

    iput p3, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;->val$volume:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Z)V
    .registers 5
    .param p1, "success"    # Z

    .line 515
    if-eqz p1, :cond_d

    .line 516
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;->this$1:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    iget-object v0, v0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    iget v1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;->val$effect:I

    iget v2, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;->val$volume:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/SoundEffectsHelper;->onPlaySoundEffect(II)V

    .line 518
    :cond_d
    return-void
.end method
