.class Lcom/android/server/wm/BarController$BarHandler;
.super Landroid/os/Handler;
.source "BarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/BarController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/BarController;)V
    .registers 2

    .line 379
    iput-object p1, p0, Lcom/android/server/wm/BarController$BarHandler;->this$0:Lcom/android/server/wm/BarController;

    .line 380
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 381
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 385
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_1e

    .line 387
    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    move v0, v1

    .line 388
    .local v0, "visible":Z
    iget-object v1, p0, Lcom/android/server/wm/BarController$BarHandler;->this$0:Lcom/android/server/wm/BarController;

    # getter for: Lcom/android/server/wm/BarController;->mVisibilityChangeListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;
    invoke-static {v1}, Lcom/android/server/wm/BarController;->access$100(Lcom/android/server/wm/BarController;)Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 389
    iget-object v1, p0, Lcom/android/server/wm/BarController$BarHandler;->this$0:Lcom/android/server/wm/BarController;

    # getter for: Lcom/android/server/wm/BarController;->mVisibilityChangeListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;
    invoke-static {v1}, Lcom/android/server/wm/BarController;->access$100(Lcom/android/server/wm/BarController;)Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;->onBarVisibilityChanged(Z)V

    .line 393
    .end local v0    # "visible":Z
    :cond_1e
    :goto_1e
    return-void
.end method
