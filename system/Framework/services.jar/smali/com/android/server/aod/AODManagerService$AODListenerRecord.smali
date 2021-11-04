.class Lcom/android/server/aod/AODManagerService$AODListenerRecord;
.super Ljava/lang/Object;
.source "AODManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AODListenerRecord"
.end annotation


# instance fields
.field private final pid:I

.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;

.field private final token:Landroid/os/IBinder;

.field private final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;II)V
    .registers 7
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 1535
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1536
    iput-object p2, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    .line 1537
    iput p3, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->pid:I

    .line 1538
    iput p4, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->uid:I

    .line 1540
    if-eqz p2, :cond_1d

    .line 1541
    const/4 p1, 0x0

    :try_start_e
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_1d

    .line 1543
    :catch_12
    move-exception p1

    .line 1544
    .local p1, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AODListenerRecord : linkToDeath error"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 1545
    .end local p1    # "e":Landroid/os/RemoteException;
    :cond_1d
    :goto_1d
    nop

    .line 1546
    :goto_1e
    return-void
.end method

.method private _onScreenTurningOn()V
    .registers 4

    .line 1567
    :try_start_0
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/samsung/android/aod/IAODCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODCallback;

    move-result-object v0

    .line 1568
    .local v0, "callback":Lcom/samsung/android/aod/IAODCallback;
    if-eqz v0, :cond_b

    .line 1569
    invoke-interface {v0}, Lcom/samsung/android/aod/IAODCallback;->onScreenTurningOn()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1573
    .end local v0    # "callback":Lcom/samsung/android/aod/IAODCallback;
    :cond_b
    goto :goto_16

    .line 1571
    :catch_c
    move-exception v0

    .line 1572
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_onScreenTurningOn : RemoteException : "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1574
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/aod/AODManagerService$AODListenerRecord;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    .line 1529
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 1550
    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$5300(Lcom/android/server/aod/AODManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 1552
    :try_start_10
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->access$5300(Lcom/android/server/aod/AODManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1553
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_21

    .line 1554
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1555
    return-void

    .line 1553
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public onScreenTurningOn()V
    .registers 3

    .line 1558
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    if-nez v0, :cond_f

    .line 1559
    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onScreenTurningOn : token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    return-void

    .line 1562
    :cond_f
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->_onScreenTurningOn()V

    .line 1563
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  [Listener: pid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") uid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
