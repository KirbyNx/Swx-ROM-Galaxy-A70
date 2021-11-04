.class final Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "DisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HideNavInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayPolicy;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 1870
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 1871
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 1872
    return-void
.end method

.method private showNavigationBar()V
    .registers 5

    .line 1923
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    .line 1924
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    .line 1926
    .local v0, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 1927
    .local v1, "target":Lcom/android/server/wm/InsetsControlTarget;
    :goto_15
    if-eqz v1, :cond_1f

    .line 1928
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    .line 1930
    :cond_1f
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 11
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 1877
    const/4 v0, 0x0

    :try_start_1
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_7b

    .line 1878
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7b

    .line 1879
    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    .line 1880
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_7b

    .line 1882
    const/4 v2, 0x0

    .line 1883
    .local v2, "changed":Z
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    # getter for: Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/wm/DisplayPolicy;->access$100(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_80

    .line 1884
    :try_start_1e
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-nez v4, :cond_29

    .line 1885
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_78

    .line 1918
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1885
    return-void

    .line 1887
    :cond_29
    :try_start_29
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->showNavigationBar()V

    .line 1893
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    # getter for: Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I
    invoke-static {v4}, Lcom/android/server/wm/DisplayPolicy;->access$1400(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v4

    or-int/lit8 v4, v4, 0x2

    or-int/lit8 v4, v4, 0x1

    or-int/lit8 v4, v4, 0x4

    .line 1897
    .local v4, "newVal":I
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    # getter for: Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I
    invoke-static {v5}, Lcom/android/server/wm/DisplayPolicy;->access$1400(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v5

    if-eq v5, v4, :cond_46

    .line 1898
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    # setter for: Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I
    invoke-static {v5, v4}, Lcom/android/server/wm/DisplayPolicy;->access$1402(Lcom/android/server/wm/DisplayPolicy;I)I

    .line 1899
    const/4 v2, 0x1

    .line 1904
    :cond_46
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    # getter for: Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I
    invoke-static {v5}, Lcom/android/server/wm/DisplayPolicy;->access$1300(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v5

    or-int/lit8 v4, v5, 0x2

    .line 1906
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    # getter for: Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I
    invoke-static {v5}, Lcom/android/server/wm/DisplayPolicy;->access$1300(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v5

    if-eq v5, v4, :cond_6d

    .line 1907
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    # setter for: Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I
    invoke-static {v5, v4}, Lcom/android/server/wm/DisplayPolicy;->access$1302(Lcom/android/server/wm/DisplayPolicy;I)I

    .line 1908
    const/4 v2, 0x1

    .line 1909
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    # getter for: Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/wm/DisplayPolicy;->access$1100(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    # getter for: Lcom/android/server/wm/DisplayPolicy;->mClearHideNavigationFlag:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/server/wm/DisplayPolicy;->access$1500(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1911
    :cond_6d
    if-eqz v2, :cond_76

    .line 1912
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v5, v5, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->reevaluateStatusBarVisibility()V

    .line 1914
    .end local v4    # "newVal":I
    :cond_76
    monitor-exit v3

    goto :goto_7b

    :catchall_78
    move-exception v4

    monitor-exit v3
    :try_end_7a
    .catchall {:try_start_29 .. :try_end_7a} :catchall_78

    .end local p0    # "this":Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;
    .end local p1    # "event":Landroid/view/InputEvent;
    :try_start_7a
    throw v4
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_80

    .line 1918
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    .end local v2    # "changed":Z
    .restart local p0    # "this":Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;
    .restart local p1    # "event":Landroid/view/InputEvent;
    :cond_7b
    :goto_7b
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1919
    nop

    .line 1920
    return-void

    .line 1918
    :catchall_80
    move-exception v1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1919
    throw v1
.end method
