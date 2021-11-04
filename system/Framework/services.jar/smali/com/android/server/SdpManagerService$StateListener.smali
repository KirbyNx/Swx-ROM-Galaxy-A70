.class final Lcom/android/server/SdpManagerService$StateListener;
.super Ljava/lang/Object;
.source "SdpManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StateListener"
.end annotation


# instance fields
.field mEngineId:I

.field mIsValid:Z

.field mWeakListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/ISdpListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/SdpManagerService;ILandroid/os/ISdpListener;)V
    .registers 5
    .param p2, "engineId"    # I
    .param p3, "listener"    # Landroid/os/ISdpListener;

    .line 2602
    iput-object p1, p0, Lcom/android/server/SdpManagerService$StateListener;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2603
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/SdpManagerService$StateListener;->mIsValid:Z

    .line 2604
    iput p2, p0, Lcom/android/server/SdpManagerService$StateListener;->mEngineId:I

    .line 2605
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/SdpManagerService$StateListener;->mWeakListener:Ljava/lang/ref/WeakReference;

    .line 2607
    invoke-virtual {p0}, Lcom/android/server/SdpManagerService$StateListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/server/-$$Lambda$SdpManagerService$StateListener$QteHBy3qucJ_SWng-SB6vCaupbk;

    invoke-direct {v0, p0}, Lcom/android/server/-$$Lambda$SdpManagerService$StateListener$QteHBy3qucJ_SWng-SB6vCaupbk;-><init>(Lcom/android/server/SdpManagerService$StateListener;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2617
    return-void
.end method


# virtual methods
.method asBinder()Landroid/os/IBinder;
    .registers 3

    .line 2624
    invoke-virtual {p0}, Lcom/android/server/SdpManagerService$StateListener;->get()Landroid/os/ISdpListener;

    move-result-object v0

    .line 2625
    .local v0, "listener":Landroid/os/ISdpListener;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-interface {v0}, Landroid/os/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method public binderDied()V
    .registers 4

    .line 2669
    iget-object v0, p0, Lcom/android/server/SdpManagerService$StateListener;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$2700(Lcom/android/server/SdpManagerService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 2670
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/SdpManagerService$StateListener;->dispose()V

    .line 2671
    iget-object v1, p0, Lcom/android/server/SdpManagerService$StateListener;->this$0:Lcom/android/server/SdpManagerService;

    iget v2, p0, Lcom/android/server/SdpManagerService$StateListener;->mEngineId:I

    # invokes: Lcom/android/server/SdpManagerService;->handleEmptyListenerRoll(I)V
    invoke-static {v1, v2}, Lcom/android/server/SdpManagerService;->access$2800(Lcom/android/server/SdpManagerService;I)V

    .line 2672
    monitor-exit v0

    .line 2673
    return-void

    .line 2672
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1
.end method

.method dispose()V
    .registers 3

    .line 2646
    iget-boolean v0, p0, Lcom/android/server/SdpManagerService$StateListener;->mIsValid:Z

    if-nez v0, :cond_5

    .line 2647
    return-void

    .line 2650
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/SdpManagerService$StateListener;->getParent()Lcom/android/server/SdpManagerService$ListenerRoll;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2651
    invoke-virtual {p0}, Lcom/android/server/SdpManagerService$StateListener;->getParent()Lcom/android/server/SdpManagerService$ListenerRoll;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/SdpManagerService$ListenerRoll;->disenroll(Lcom/android/server/SdpManagerService$StateListener;)Z

    .line 2654
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/SdpManagerService$StateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$SdpManagerService$StateListener$tVSaAd5UCJOryBPBv8nm4uRqlw8;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$SdpManagerService$StateListener$tVSaAd5UCJOryBPBv8nm4uRqlw8;-><init>(Lcom/android/server/SdpManagerService$StateListener;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2664
    invoke-virtual {p0}, Lcom/android/server/SdpManagerService$StateListener;->releaseReferences()V

    .line 2665
    return-void
.end method

.method get()Landroid/os/ISdpListener;
    .registers 2

    .line 2620
    iget-object v0, p0, Lcom/android/server/SdpManagerService$StateListener;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ISdpListener;

    return-object v0
.end method

.method getParent()Lcom/android/server/SdpManagerService$ListenerRoll;
    .registers 3

    .line 2629
    iget-object v0, p0, Lcom/android/server/SdpManagerService$StateListener;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$2700(Lcom/android/server/SdpManagerService;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/SdpManagerService$StateListener;->mEngineId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService$ListenerRoll;

    return-object v0
.end method

.method isValid()Z
    .registers 2

    .line 2633
    iget-boolean v0, p0, Lcom/android/server/SdpManagerService$StateListener;->mIsValid:Z

    return v0
.end method

.method public synthetic lambda$dispose$1$SdpManagerService$StateListener(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 2656
    const-string v0, "SdpManagerService"

    const/4 v1, 0x0

    :try_start_3
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_6} :catch_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 2662
    :goto_6
    goto :goto_18

    .line 2659
    :catch_7
    move-exception v1

    .line 2660
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Failed to unlink death listener"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 2657
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_11
    move-exception v1

    .line 2658
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "Listener might be already finalized..."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/NullPointerException;
    goto :goto_6

    .line 2663
    :goto_18
    return-void
.end method

.method public synthetic lambda$new$0$SdpManagerService$StateListener(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 2609
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2610
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/SdpManagerService$StateListener;->mIsValid:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_8

    .line 2615
    goto :goto_16

    .line 2611
    :catch_8
    move-exception v0

    .line 2612
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SdpManagerService"

    const-string v2, "Failed to link death listener..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2614
    invoke-virtual {p0}, Lcom/android/server/SdpManagerService$StateListener;->releaseReferences()V

    .line 2616
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_16
    return-void
.end method

.method releaseReferences()V
    .registers 2

    .line 2637
    iget-object v0, p0, Lcom/android/server/SdpManagerService$StateListener;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 2638
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SdpManagerService$StateListener;->mIsValid:Z

    .line 2639
    return-void
.end method
