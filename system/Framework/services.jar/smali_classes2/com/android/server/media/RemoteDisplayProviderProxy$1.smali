.class Lcom/android/server/media/RemoteDisplayProviderProxy$1;
.super Ljava/lang/Object;
.source "RemoteDisplayProviderProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/RemoteDisplayProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;


# direct methods
.method constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 310
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 313
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/media/RemoteDisplayProviderProxy;->mScheduledDisplayStateChangedCallback:Z
    invoke-static {v0, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->access$002(Lcom/android/server/media/RemoteDisplayProviderProxy;Z)Z

    .line 314
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    # getter for: Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayStateCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;
    invoke-static {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->access$100(Lcom/android/server/media/RemoteDisplayProviderProxy;)Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 315
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    # getter for: Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayStateCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;
    invoke-static {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->access$100(Lcom/android/server/media/RemoteDisplayProviderProxy;)Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 316
    # getter for: Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayState:Landroid/media/RemoteDisplayState;
    invoke-static {v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->access$200(Lcom/android/server/media/RemoteDisplayProviderProxy;)Landroid/media/RemoteDisplayState;

    move-result-object v2

    .line 315
    invoke-interface {v0, v1, v2}, Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;->onDisplayStateChanged(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/RemoteDisplayState;)V

    .line 318
    :cond_1d
    return-void
.end method
