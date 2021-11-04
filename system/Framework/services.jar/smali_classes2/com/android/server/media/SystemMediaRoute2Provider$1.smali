.class Lcom/android/server/media/SystemMediaRoute2Provider$1;
.super Landroid/media/IAudioRoutesObserver$Stub;
.source "SystemMediaRoute2Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/SystemMediaRoute2Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/SystemMediaRoute2Provider;


# direct methods
.method constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 101
    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$1;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-direct {p0}, Landroid/media/IAudioRoutesObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    .registers 4
    .param p1, "newRoutes"    # Landroid/media/AudioRoutesInfo;

    .line 104
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$1;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    # getter for: Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/media/SystemMediaRoute2Provider;->access$000(Lcom/android/server/media/SystemMediaRoute2Provider;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/-$$Lambda$SystemMediaRoute2Provider$1$ebcdsGsKcvePyBmWcsYxnmypK0U;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/-$$Lambda$SystemMediaRoute2Provider$1$ebcdsGsKcvePyBmWcsYxnmypK0U;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider$1;Landroid/media/AudioRoutesInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    return-void
.end method

.method public synthetic lambda$dispatchAudioRoutesChanged$0$SystemMediaRoute2Provider$1(Landroid/media/AudioRoutesInfo;)V
    .registers 3
    .param p1, "newRoutes"    # Landroid/media/AudioRoutesInfo;

    .line 105
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$1;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    # invokes: Lcom/android/server/media/SystemMediaRoute2Provider;->updateDeviceRoute(Landroid/media/AudioRoutesInfo;)V
    invoke-static {v0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider;->access$100(Lcom/android/server/media/SystemMediaRoute2Provider;Landroid/media/AudioRoutesInfo;)V

    .line 106
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$1;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v0}, Lcom/android/server/media/SystemMediaRoute2Provider;->notifyProviderState()V

    .line 107
    return-void
.end method
