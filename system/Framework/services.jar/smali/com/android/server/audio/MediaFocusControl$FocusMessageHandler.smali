.class Lcom/android/server/audio/MediaFocusControl$FocusMessageHandler;
.super Landroid/os/Handler;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/MediaFocusControl;)V
    .registers 2

    .line 1466
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$FocusMessageHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/MediaFocusControl;Lcom/android/server/audio/MediaFocusControl$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p2, "x1"    # Lcom/android/server/audio/MediaFocusControl$1;

    .line 1466
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl$FocusMessageHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1470
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    .line 1481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaFocusControl"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 1472
    :cond_1e
    # getter for: Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1474
    :try_start_23
    # getter for: Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->access$000()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2a} :catch_2d
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2b

    .line 1477
    goto :goto_36

    .line 1478
    :catchall_2b
    move-exception v1

    goto :goto_39

    .line 1475
    :catch_2d
    move-exception v1

    .line 1476
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2e
    const-string v2, "MediaFocusControl"

    const-string/jumbo v3, "mAudioFocusLock didn\'t notify and will be notified automatically"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_36
    monitor-exit v0

    .line 1479
    nop

    .line 1484
    :goto_38
    return-void

    .line 1478
    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2e .. :try_end_3a} :catchall_2b

    throw v1
.end method
