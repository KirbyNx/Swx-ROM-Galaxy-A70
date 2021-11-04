.class Lcom/android/server/audio/MediaFocusControl$FocusHandleThread;
.super Ljava/lang/Thread;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusHandleThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;)V
    .registers 2

    .line 1446
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$FocusHandleThread;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 1447
    const-string p1, "MediaFocusControl"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1448
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1453
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1455
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$FocusHandleThread;->this$0:Lcom/android/server/audio/MediaFocusControl;

    monitor-enter v0

    .line 1456
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$FocusHandleThread;->this$0:Lcom/android/server/audio/MediaFocusControl;

    new-instance v2, Lcom/android/server/audio/MediaFocusControl$FocusMessageHandler;

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$FocusHandleThread;->this$0:Lcom/android/server/audio/MediaFocusControl;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/audio/MediaFocusControl$FocusMessageHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Lcom/android/server/audio/MediaFocusControl$1;)V

    # setter for: Lcom/android/server/audio/MediaFocusControl;->mFocusMessageHandler:Lcom/android/server/audio/MediaFocusControl$FocusMessageHandler;
    invoke-static {v1, v2}, Lcom/android/server/audio/MediaFocusControl;->access$1002(Lcom/android/server/audio/MediaFocusControl;Lcom/android/server/audio/MediaFocusControl$FocusMessageHandler;)Lcom/android/server/audio/MediaFocusControl$FocusMessageHandler;

    .line 1459
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$FocusHandleThread;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1460
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1d

    .line 1462
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1463
    return-void

    .line 1460
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method
