.class final Lcom/android/server/DockObserver$BinderService;
.super Landroid/os/Binder;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/DockObserver;)V
    .registers 2

    .line 451
    iput-object p1, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/DockObserver;
    .param p2, "x1"    # Lcom/android/server/DockObserver$1;

    .line 451
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 454
    iget-object v0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-virtual {v0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DockObserver"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 455
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 457
    .local v0, "ident":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/DockObserver;->access$400(Lcom/android/server/DockObserver;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1e3

    .line 458
    if-eqz p3, :cond_b6

    :try_start_1c
    array-length v3, p3

    if-eqz v3, :cond_b6

    const-string v3, "-a"

    const/4 v4, 0x0

    aget-object v5, p3, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto/16 :goto_b6

    .line 487
    :cond_2c
    array-length v3, p3

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v3, v5, :cond_85

    const-string/jumbo v3, "set"

    aget-object v5, p3, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 488
    aget-object v3, p3, v6

    .line 489
    .local v3, "key":Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v4, p3, v4
    :try_end_41
    .catchall {:try_start_1c .. :try_end_41} :catchall_1e0

    .line 491
    .local v4, "value":Ljava/lang/String;
    :try_start_41
    const-string/jumbo v5, "state"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 492
    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    # setter for: Lcom/android/server/DockObserver;->mUpdatesStopped:Z
    invoke-static {v5, v6}, Lcom/android/server/DockObserver;->access$702(Lcom/android/server/DockObserver;Z)Z

    .line 493
    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    # invokes: Lcom/android/server/DockObserver;->setDockStateLocked(I)V
    invoke-static {v5, v6}, Lcom/android/server/DockObserver;->access$1200(Lcom/android/server/DockObserver;I)V

    goto :goto_6d

    .line 495
    :cond_59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown set option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_6d} :catch_6e
    .catchall {:try_start_41 .. :try_end_6d} :catchall_1e0

    .line 499
    :goto_6d
    goto :goto_83

    .line 497
    :catch_6e
    move-exception v5

    .line 498
    .local v5, "ex":Ljava/lang/NumberFormatException;
    :try_start_6f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "ex":Ljava/lang/NumberFormatException;
    :goto_83
    goto/16 :goto_1da

    :cond_85
    array-length v3, p3

    if-ne v3, v6, :cond_a5

    const-string/jumbo v3, "reset"

    aget-object v5, p3, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 501
    iget-object v3, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    # setter for: Lcom/android/server/DockObserver;->mUpdatesStopped:Z
    invoke-static {v3, v4}, Lcom/android/server/DockObserver;->access$702(Lcom/android/server/DockObserver;Z)Z

    .line 502
    iget-object v3, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    iget-object v4, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mActualDockState:I
    invoke-static {v4}, Lcom/android/server/DockObserver;->access$1000(Lcom/android/server/DockObserver;)I

    move-result v4

    # invokes: Lcom/android/server/DockObserver;->setDockStateLocked(I)V
    invoke-static {v3, v4}, Lcom/android/server/DockObserver;->access$1200(Lcom/android/server/DockObserver;I)V

    goto/16 :goto_1da

    .line 504
    :cond_a5
    const-string v3, "Dump current dock state, or:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    const-string v3, "  set state <value>"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    const-string v3, "  reset"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1da

    .line 459
    :cond_b6
    :goto_b6
    const-string v3, "Current Dock Observer Service state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    iget-object v3, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mUpdatesStopped:Z
    invoke-static {v3}, Lcom/android/server/DockObserver;->access$700(Lcom/android/server/DockObserver;)Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 461
    const-string v3, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    :cond_c8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  reported state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mReportedDockState:I
    invoke-static {v4}, Lcom/android/server/DockObserver;->access$800(Lcom/android/server/DockObserver;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  previous state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static {v4}, Lcom/android/server/DockObserver;->access$900(Lcom/android/server/DockObserver;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  actual state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mActualDockState:I
    invoke-static {v4}, Lcom/android/server/DockObserver;->access$1000(Lcom/android/server/DockObserver;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " last uevent device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mLastUEventDevice:I
    invoke-static {v4}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    iget-object v3, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;
    invoke-static {v3}, Lcom/android/server/DockObserver;->access$1100(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$logRecent;

    move-result-object v3

    if-eqz v3, :cond_1d5

    .line 471
    const-string v3, " == Latest states from Driver =="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13e
    const/16 v4, 0xa

    if-ge v3, v4, :cond_187

    .line 473
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   Time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;
    invoke-static {v5}, Lcom/android/server/DockObserver;->access$1100(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$logRecent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/DockObserver$logRecent;->uEventTime:[J

    aget-wide v5, v5, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;
    invoke-static {v5}, Lcom/android/server/DockObserver;->access$1100(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$logRecent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/DockObserver$logRecent;->uEventType:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " UsbpdIds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 474
    # getter for: Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;
    invoke-static {v5}, Lcom/android/server/DockObserver;->access$1100(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$logRecent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/DockObserver$logRecent;->uEventUsbpdIds:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 473
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    add-int/lit8 v3, v3, 0x1

    goto :goto_13e

    .line 477
    .end local v3    # "i":I
    :cond_187
    const-string v3, " == Latest states to Apps =="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_18d
    if-ge v3, v4, :cond_1d4

    .line 479
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;
    invoke-static {v6}, Lcom/android/server/DockObserver;->access$1100(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$logRecent;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/DockObserver$logRecent;->reportTime:[J

    aget-wide v6, v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " State: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;
    invoke-static {v6}, Lcom/android/server/DockObserver;->access$1100(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$logRecent;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/DockObserver$logRecent;->report:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " UsbpdIds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 480
    # getter for: Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;
    invoke-static {v6}, Lcom/android/server/DockObserver;->access$1100(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$logRecent;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/DockObserver$logRecent;->reportUsbpdIds:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 479
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    add-int/lit8 v3, v3, 0x1

    goto :goto_18d

    .end local v3    # "i":I
    :cond_1d4
    goto :goto_1da

    .line 484
    :cond_1d5
    const-string v3, " Cannot log latest events!"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    :goto_1da
    monitor-exit v2
    :try_end_1db
    .catchall {:try_start_6f .. :try_end_1db} :catchall_1e0

    .line 510
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 511
    nop

    .line 512
    return-void

    .line 508
    :catchall_1e0
    move-exception v3

    :try_start_1e1
    monitor-exit v2
    :try_end_1e2
    .catchall {:try_start_1e1 .. :try_end_1e2} :catchall_1e0

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/DockObserver$BinderService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_1e2
    throw v3
    :try_end_1e3
    .catchall {:try_start_1e2 .. :try_end_1e3} :catchall_1e3

    .line 510
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/DockObserver$BinderService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_1e3
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 511
    throw v2
.end method
