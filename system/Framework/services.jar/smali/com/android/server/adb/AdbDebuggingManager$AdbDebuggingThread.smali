.class Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;
.super Ljava/lang/Thread;
.source "AdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdbDebuggingThread"
.end annotation


# instance fields
.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mSocket:Landroid/net/LocalSocket;

.field private mStopped:Z

.field final synthetic this$0:Lcom/android/server/adb/AdbDebuggingManager;


# direct methods
.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/adb/AdbDebuggingManager;

    .line 366
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 367
    const-string v0, "AdbDebuggingManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method private closeSocketLocked()V
    .registers 6

    .line 507
    const-string v0, "AdbDebuggingManager"

    const-string v1, "Closing socket"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v1, 0x0

    :try_start_8
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v2, :cond_13

    .line 510
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 511
    iput-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_13} :catch_14

    .line 515
    :cond_13
    goto :goto_29

    .line 513
    :catch_14
    move-exception v2

    .line 514
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed closing output stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .end local v2    # "e":Ljava/io/IOException;
    :goto_29
    :try_start_29
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_34

    .line 519
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V

    .line 520
    iput-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mSocket:Landroid/net/LocalSocket;
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_34} :catch_35

    .line 524
    :cond_34
    goto :goto_4a

    .line 522
    :catch_35
    move-exception v1

    .line 523
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed closing socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_4a
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    # getter for: Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 526
    return-void
.end method

.method private listenToSocket()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    const/high16 v0, 0x10000

    :try_start_2
    new-array v0, v0, [B

    .line 419
    .local v0, "buffer":[B
    :goto_4
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 422
    .local v1, "count":I
    const/4 v2, 0x2

    if-ge v1, v2, :cond_25

    .line 423
    const-string v2, "AdbDebuggingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read failed with count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    goto/16 :goto_23b

    .line 427
    :cond_25
    const/4 v3, 0x0

    aget-byte v4, v0, v3

    const/16 v5, 0x50

    const/16 v6, 0x4b

    const/4 v7, 0x1

    if-ne v4, v5, :cond_6c

    aget-byte v4, v0, v7

    if-ne v4, v6, :cond_6c

    .line 428
    new-instance v3, Ljava/lang/String;

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    move-object v2, v3

    .line 429
    .local v2, "key":Ljava/lang/String;
    const-string v3, "AdbDebuggingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received public key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    # getter for: Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 432
    .local v3, "msg":Landroid/os/Message;
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 433
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    # getter for: Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 434
    nop

    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    goto/16 :goto_219

    :cond_6c
    aget-byte v4, v0, v3

    const/16 v5, 0x44

    const/4 v8, 0x7

    const/16 v9, 0x43

    if-ne v4, v5, :cond_b1

    aget-byte v4, v0, v7

    if-ne v4, v9, :cond_b1

    .line 435
    new-instance v3, Ljava/lang/String;

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    move-object v2, v3

    .line 436
    .restart local v2    # "key":Ljava/lang/String;
    const-string v3, "AdbDebuggingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received disconnected message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    # getter for: Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 439
    .restart local v3    # "msg":Landroid/os/Message;
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 440
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    # getter for: Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 441
    nop

    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    goto/16 :goto_219

    :cond_b1
    aget-byte v4, v0, v3

    const/16 v5, 0xa

    if-ne v4, v9, :cond_f3

    aget-byte v4, v0, v7

    if-ne v4, v6, :cond_f3

    .line 442
    new-instance v3, Ljava/lang/String;

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    move-object v2, v3

    .line 443
    .restart local v2    # "key":Ljava/lang/String;
    const-string v3, "AdbDebuggingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received connected key message: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    # getter for: Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 446
    .restart local v3    # "msg":Landroid/os/Message;
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 447
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    # getter for: Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 448
    nop

    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    goto/16 :goto_219

    :cond_f3
    aget-byte v4, v0, v3

    const/4 v6, 0x3

    const/16 v9, 0x57

    if-ne v4, v9, :cond_188

    aget-byte v4, v0, v7

    const/16 v10, 0x45

    if-ne v4, v10, :cond_188

    .line 451
    aget-byte v2, v0, v2

    .line 452
    .local v2, "transportType":B
    new-instance v3, Ljava/lang/String;

    invoke-static {v0, v6, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 453
    .local v3, "key":Ljava/lang/String;
    if-nez v2, :cond_13a

    .line 454
    const-string v4, "AdbDebuggingManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received USB TLS connected key message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    # getter for: Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 457
    .local v4, "msg":Landroid/os/Message;
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 458
    iget-object v5, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    # getter for: Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 459
    nop

    .end local v4    # "msg":Landroid/os/Message;
    goto :goto_186

    :cond_13a
    if-ne v2, v7, :cond_16b

    .line 460
    const-string v4, "AdbDebuggingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received WIFI TLS connected key message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    # getter for: Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x16

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 463
    .restart local v4    # "msg":Landroid/os/Message;
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 464
    iget-object v5, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    # getter for: Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 465
    nop

    .end local v4    # "msg":Landroid/os/Message;
    goto :goto_186

    .line 466
    :cond_16b
    const-string v4, "AdbDebuggingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got unknown transport type from adbd ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    .end local v2    # "transportType":B
    .end local v3    # "key":Ljava/lang/String;
    :goto_186
    goto/16 :goto_219

    :cond_188
    aget-byte v4, v0, v3

    if-ne v4, v9, :cond_21b

    aget-byte v4, v0, v7

    const/16 v5, 0x46

    if-ne v4, v5, :cond_21b

    .line 470
    aget-byte v2, v0, v2

    .line 471
    .restart local v2    # "transportType":B
    new-instance v3, Ljava/lang/String;

    invoke-static {v0, v6, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 472
    .restart local v3    # "key":Ljava/lang/String;
    if-nez v2, :cond_1cc

    .line 473
    const-string v4, "AdbDebuggingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received USB TLS disconnect message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    # getter for: Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 476
    .restart local v4    # "msg":Landroid/os/Message;
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 477
    iget-object v5, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    # getter for: Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 478
    nop

    .end local v4    # "msg":Landroid/os/Message;
    goto :goto_218

    :cond_1cc
    if-ne v2, v7, :cond_1fd

    .line 479
    const-string v4, "AdbDebuggingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received WIFI TLS disconnect key message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    # getter for: Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x17

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 482
    .restart local v4    # "msg":Landroid/os/Message;
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 483
    iget-object v5, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    # getter for: Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 484
    nop

    .end local v4    # "msg":Landroid/os/Message;
    goto :goto_218

    .line 485
    :cond_1fd
    const-string v4, "AdbDebuggingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got unknown transport type from adbd ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .end local v2    # "transportType":B
    .end local v3    # "key":Ljava/lang/String;
    :goto_218
    nop

    .line 493
    .end local v1    # "count":I
    :goto_219
    goto/16 :goto_4

    .line 489
    .restart local v1    # "count":I
    :cond_21b
    const-string v4, "AdbDebuggingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    .line 490
    invoke-static {v0, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 489
    invoke-static {v4, v2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_23a} :catch_247
    .catchall {:try_start_2 .. :try_end_23a} :catchall_245

    .line 491
    nop

    .line 500
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :goto_23b
    monitor-enter p0

    .line 501
    :try_start_23c
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->closeSocketLocked()V

    .line 502
    monitor-exit p0

    .line 503
    nop

    .line 504
    return-void

    .line 502
    :catchall_242
    move-exception v0

    monitor-exit p0
    :try_end_244
    .catchall {:try_start_23c .. :try_end_244} :catchall_242

    throw v0

    .line 500
    :catchall_245
    move-exception v0

    goto :goto_251

    .line 495
    :catch_247
    move-exception v0

    .line 496
    .local v0, "ex":Ljava/io/IOException;
    :try_start_248
    const-string v1, "AdbDebuggingManager"

    const-string v2, "Communication error: "

    invoke-static {v1, v2, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 497
    nop

    .end local p0    # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;
    throw v0
    :try_end_251
    .catchall {:try_start_248 .. :try_end_251} :catchall_245

    .line 500
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;
    :goto_251
    monitor-enter p0

    .line 501
    :try_start_252
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->closeSocketLocked()V

    .line 502
    monitor-exit p0
    :try_end_256
    .catchall {:try_start_252 .. :try_end_256} :catchall_257

    .line 503
    throw v0

    .line 502
    :catchall_257
    move-exception v0

    :try_start_258
    monitor-exit p0
    :try_end_259
    .catchall {:try_start_258 .. :try_end_259} :catchall_257

    throw v0
.end method

.method private openSocketLocked()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    const-string v0, "AdbDebuggingManager"

    :try_start_2
    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string v2, "adbd"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 399
    .local v1, "address":Landroid/net/LocalSocketAddress;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mInputStream:Ljava/io/InputStream;

    .line 401
    const-string v2, "Creating socket"

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v2, Landroid/net/LocalSocket;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/net/LocalSocket;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    .line 403
    invoke-virtual {v2, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 405
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    .line 406
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mInputStream:Ljava/io/InputStream;

    .line 407
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    # getter for: Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_39} :catch_3b

    .line 412
    nop

    .line 413
    .end local v1    # "address":Landroid/net/LocalSocketAddress;
    return-void

    .line 408
    :catch_3b
    move-exception v1

    .line 409
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught an exception opening the socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->closeSocketLocked()V

    .line 411
    throw v1
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 372
    const-string v0, "AdbDebuggingManager"

    const-string v1, "Entering thread"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_7
    monitor-enter p0

    .line 375
    :try_start_8
    iget-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mStopped:Z

    if-eqz v0, :cond_15

    .line 376
    const-string v0, "AdbDebuggingManager"

    const-string v1, "Exiting thread"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_29

    return-void

    .line 380
    :cond_15
    const-wide/16 v0, 0x3e8

    :try_start_17
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->openSocketLocked()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1b
    .catchall {:try_start_17 .. :try_end_1a} :catchall_29

    .line 384
    goto :goto_1f

    .line 381
    :catch_1b
    move-exception v2

    .line 383
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1c
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 385
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_29

    .line 387
    :try_start_20
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->listenToSocket()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_24

    .line 391
    :goto_23
    goto :goto_7

    .line 388
    :catch_24
    move-exception v2

    .line 390
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_23

    .line 385
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method sendResponse(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 537
    monitor-enter p0

    .line 538
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mStopped:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1d

    if-eqz v0, :cond_1b

    .line 540
    :try_start_9
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_13
    .catchall {:try_start_9 .. :try_end_12} :catchall_1d

    .line 543
    goto :goto_1b

    .line 541
    :catch_13
    move-exception v0

    .line 542
    .local v0, "ex":Ljava/io/IOException;
    :try_start_14
    const-string v1, "AdbDebuggingManager"

    const-string v2, "Failed to write response:"

    invoke-static {v1, v2, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 545
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_1b
    :goto_1b
    monitor-exit p0

    .line 546
    return-void

    .line 545
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method stopListening()V
    .registers 2

    .line 530
    monitor-enter p0

    .line 531
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mStopped:Z

    .line 532
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->closeSocketLocked()V

    .line 533
    monitor-exit p0

    .line 534
    return-void

    .line 533
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method
