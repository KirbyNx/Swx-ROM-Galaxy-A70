.class Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;
.super Ljava/lang/Object;
.source "OverlayDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;


# direct methods
.method constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 562
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 565
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mModes:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->access$400(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mActiveMode:I
    invoke-static {v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->access$300(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    .line 566
    .local v0, "mode":Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;
    new-instance v10, Lcom/android/server/display/OverlayDisplayWindow;

    .line 568
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MD_DEX_EMULATOR:Z

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-virtual {v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->getDisplayContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_27

    :cond_1f
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object v1, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/OverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    :goto_27
    move-object v2, v1

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 569
    # getter for: Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->access$500(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mWidth:I

    iget v5, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mHeight:I

    iget v6, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I
    invoke-static {v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->access$600(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I

    move-result v7

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 570
    # getter for: Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;
    invoke-static {v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->access$700(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    move-result-object v1

    iget-boolean v8, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mSecure:Z

    iget-object v9, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/android/server/display/OverlayDisplayWindow;-><init>(Landroid/content/Context;Ljava/lang/String;IIIIZLcom/android/server/display/OverlayDisplayWindow$Listener;)V

    .line 571
    .local v1, "window":Lcom/android/server/display/OverlayDisplayWindow;
    invoke-virtual {v1}, Lcom/android/server/display/OverlayDisplayWindow;->show()V

    .line 573
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object v2, v2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    .line 574
    :try_start_54
    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    # setter for: Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;
    invoke-static {v3, v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->access$802(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;Lcom/android/server/display/OverlayDisplayWindow;)Lcom/android/server/display/OverlayDisplayWindow;

    .line 575
    monitor-exit v2

    .line 576
    return-void

    .line 575
    :catchall_5b
    move-exception v3

    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_5b

    throw v3
.end method
