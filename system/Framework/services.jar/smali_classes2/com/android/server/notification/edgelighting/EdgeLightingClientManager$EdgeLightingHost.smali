.class Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
.super Ljava/lang/Object;
.source "EdgeLightingClientManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeLightingHost"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;
    }
.end annotation


# static fields
.field private static final MSG_SCREEN_CHANGED:I = 0x3

.field private static final MSG_START_EDGHLIGHTING:I = 0x1

.field private static final MSG_STOP_EDGHLIGHTING:I = 0x2


# instance fields
.field final component:Landroid/content/ComponentName;

.field condition:I

.field private mHandler:Landroid/os/Handler;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

.field final token:Landroid/os/IBinder;

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .registers 9
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "condition"    # I
    .param p5, "pid"    # I
    .param p6, "uid"    # I

    .line 486
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    new-instance p1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$1;

    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$200(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$1;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    .line 487
    iput-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    .line 488
    iput-object p3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    .line 489
    iput p4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I

    .line 490
    iput p5, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->pid:I

    .line 491
    iput p6, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->uid:I

    .line 493
    if-eqz p2, :cond_32

    .line 494
    const/4 p1, 0x0

    :try_start_23
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_32

    .line 496
    :catch_27
    move-exception p1

    .line 497
    .local p1, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdgeLightingHost : linkToDeath error"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 498
    .end local p1    # "e":Landroid/os/RemoteException;
    :cond_32
    :goto_32
    nop

    .line 499
    :goto_33
    return-void
.end method

.method private _onScreenChanged(Z)V
    .registers 5
    .param p1, "on"    # Z

    .line 598
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    move-result-object v0

    .line 599
    .local v0, "callback":Lcom/samsung/android/edge/IEdgeLightingCallback;
    if-eqz v0, :cond_b

    .line 600
    invoke-interface {v0, p1}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onScreenChanged(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 604
    .end local v0    # "callback":Lcom/samsung/android/edge/IEdgeLightingCallback;
    :cond_b
    goto :goto_17

    .line 602
    :catch_c
    move-exception v0

    .line 603
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onScreenChanged : RemoteException : "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_17
    return-void
.end method

.method private _onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/samsung/android/edge/SemEdgeLightingInfo;
    .param p3, "reason"    # I

    .line 576
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    move-result-object v0

    .line 577
    .local v0, "callback":Lcom/samsung/android/edge/IEdgeLightingCallback;
    if-eqz v0, :cond_b

    .line 578
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 582
    .end local v0    # "callback":Lcom/samsung/android/edge/IEdgeLightingCallback;
    :cond_b
    goto :goto_17

    .line 580
    :catch_c
    move-exception v0

    .line 581
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onStartEdgeLighting : RemoteException : "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_17
    return-void
.end method

.method private _onStopEdgeLighting(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    move-result-object v0

    .line 588
    .local v0, "callback":Lcom/samsung/android/edge/IEdgeLightingCallback;
    if-eqz v0, :cond_b

    .line 589
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onStopEdgeLighting(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 593
    .end local v0    # "callback":Lcom/samsung/android/edge/IEdgeLightingCallback;
    :cond_b
    goto :goto_17

    .line 591
    :catch_c
    move-exception v0

    .line 592
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onStopEdgeLighting : RemoteException : "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 594
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_17
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    .param p1, "x1"    # Ljava/lang/String;

    .line 419
    invoke-direct {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->startEdgeLightingService(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/samsung/android/edge/SemEdgeLightingInfo;
    .param p3, "x3"    # I

    .line 419
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->_onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 419
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->_onStopEdgeLighting(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    .param p1, "x1"    # Z

    .line 419
    invoke-direct {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->_onScreenChanged(Z)V

    return-void
.end method

.method private startEdgeLightingService(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 535
    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$100(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->isEdgeLightingSettingEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 536
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startEdgeLightingService"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    sget-object v1, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    # invokes: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->createEdgeLightingService(Landroid/os/UserHandle;)V
    invoke-static {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$1100(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;Landroid/os/UserHandle;)V

    .line 539
    :cond_29
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 6

    .line 503
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : component = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$600(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 505
    :try_start_25
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$600(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 506
    .local v1, "N":I
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$600(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 507
    if-eqz v1, :cond_4f

    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$600(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4f

    .line 508
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;
    invoke-static {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$700(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->stopEdgeLighting()V

    .line 510
    .end local v1    # "N":I
    :cond_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_25 .. :try_end_50} :catchall_9b

    .line 511
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 512
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$800(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 513
    :try_start_5d
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$800(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 514
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_5d .. :try_end_67} :catchall_98

    .line 515
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 516
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "binderDied."

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateHostHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z
    invoke-static {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$900(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 518
    return-void

    .line 520
    :cond_85
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 528
    return-void

    .line 514
    .end local v0    # "packageName":Ljava/lang/String;
    :catchall_98
    move-exception v0

    :try_start_99
    monitor-exit v1
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw v0

    .line 510
    :catchall_9b
    move-exception v1

    :try_start_9c
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw v1
.end method

.method public onScreenChanged(Z)V
    .registers 5
    .param p1, "on"    # Z

    .line 564
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_a

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 565
    :cond_a
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScreenChanged on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_23
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    if-nez v0, :cond_32

    .line 568
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onScreenChanged : token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    return-void

    .line 571
    :cond_32
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 572
    return-void
.end method

.method public onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/samsung/android/edge/SemEdgeLightingInfo;
    .param p3, "reason"    # I

    .line 542
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_a

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 543
    :cond_a
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartEdgeLighting pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_33
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    if-nez v0, :cond_42

    .line 546
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onStartEdgeLighting : token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    return-void

    .line 549
    :cond_42
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;)V

    invoke-virtual {v0, v1, p3, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 550
    return-void
.end method

.method public onStopEdgeLighting(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 553
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_a

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 554
    :cond_a
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopEdgeLighting pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_2b
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    if-nez v0, :cond_3a

    .line 557
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onStopEdgeLighting : token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return-void

    .line 560
    :cond_3a
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 561
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  [Host: component:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") condition:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") pid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") uid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCondition(I)V
    .registers 2
    .param p1, "condition"    # I

    .line 531
    iput p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I

    .line 532
    return-void
.end method
