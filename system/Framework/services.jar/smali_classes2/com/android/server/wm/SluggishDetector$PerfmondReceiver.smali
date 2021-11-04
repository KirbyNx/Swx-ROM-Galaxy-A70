.class final Lcom/android/server/wm/SluggishDetector$PerfmondReceiver;
.super Ljava/lang/Object;
.source "SluggishDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PerfmondReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 3658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 3661
    const/4 v0, 0x0

    .line 3663
    .local v0, "retryCount":I
    const/4 v1, 0x0

    .line 3664
    .local v1, "server":Landroid/net/LocalServerSocket;
    const/4 v2, 0x0

    .line 3666
    .local v2, "receiver":Landroid/net/LocalSocket;
    const/4 v3, 0x0

    .line 3667
    .local v3, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 3668
    .local v4, "ir":Ljava/io/InputStreamReader;
    const/4 v5, 0x0

    .line 3669
    .local v5, "br":Ljava/io/BufferedReader;
    const-string v6, ""

    .line 3671
    .local v6, "incoming":Ljava/lang/String;
    # getter for: Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$600()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PERFMOND] start connect to \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/wm/SluggishDetector;->PerfmondSocketName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$9500()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\' socket, TID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3672
    # getter for: Lcom/android/server/wm/SluggishDetector;->mReceiverThread:Ljava/lang/Thread;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$9600()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3671
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3675
    :try_start_34
    new-instance v7, Landroid/net/LocalServerSocket;

    # getter for: Lcom/android/server/wm/SluggishDetector;->PerfmondSocketName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$9500()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    move-object v1, v7

    .line 3676
    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v7

    move-object v2, v7

    .line 3677
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    move-object v3, v7

    .line 3678
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v4, v7

    .line 3679
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_53} :catch_60
    .catchall {:try_start_34 .. :try_end_53} :catchall_55

    move-object v5, v7

    goto :goto_6a

    .line 3683
    :catchall_55
    move-exception v7

    .line 3684
    .local v7, "tr":Ljava/lang/Throwable;
    # getter for: Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$600()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[PERFMOND] LocalSocket receiver Exception"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 3681
    .end local v7    # "tr":Ljava/lang/Throwable;
    :catch_60
    move-exception v7

    .line 3682
    .local v7, "ex":Ljava/io/IOException;
    # getter for: Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$600()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[PERFMOND] LocalServerSocket Exception"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3685
    .end local v7    # "ex":Ljava/io/IOException;
    :goto_6a
    nop

    .line 3687
    :goto_6b
    # getter for: Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$600()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[PERFMOND] connected !!! "

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3692
    :goto_74
    const/4 v7, 0x0

    .line 3693
    .local v7, "charsRead":I
    const/16 v8, 0xa

    :try_start_77
    new-array v8, v8, [C
    :try_end_79
    .catch Ljava/lang/InterruptedException; {:try_start_77 .. :try_end_79} :catch_116
    .catchall {:try_start_77 .. :try_end_79} :catchall_10b

    .line 3694
    .local v8, "buffer":[C
    const-string v9, ""

    move-object v10, v9

    .line 3696
    .local v10, "message":Ljava/lang/String;
    :goto_7c
    :try_start_7c
    invoke-virtual {v5, v8}, Ljava/io/BufferedReader;->read([C)I

    move-result v11

    move v7, v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_ff

    .line 3698
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v11

    if-nez v11, :cond_cd

    .line 3704
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v8}, Ljava/lang/String;-><init>([C)V

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 3705
    const-string v11, "\u0000"

    invoke-virtual {v10, v11, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 3707
    # getter for: Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$600()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[PERFMOND] charsRead ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " message = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3708
    move-object v10, v9

    goto :goto_7c

    .line 3699
    :cond_cd
    # getter for: Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$600()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Thread interrupted...start to exit - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3700
    # getter for: Lcom/android/server/wm/SluggishDetector;->PerfmondSocketName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$9500()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", TID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/wm/SluggishDetector;->mReceiverThread:Ljava/lang/Thread;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$9600()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3699
    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3701
    new-instance v9, Ljava/lang/InterruptedException;

    invoke-direct {v9}, Ljava/lang/InterruptedException;-><init>()V

    .end local v0    # "retryCount":I
    .end local v1    # "server":Landroid/net/LocalServerSocket;
    .end local v2    # "receiver":Landroid/net/LocalSocket;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v6    # "incoming":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/wm/SluggishDetector$PerfmondReceiver;
    throw v9

    .line 3711
    .restart local v0    # "retryCount":I
    .restart local v1    # "server":Landroid/net/LocalServerSocket;
    .restart local v2    # "receiver":Landroid/net/LocalSocket;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "incoming":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/wm/SluggishDetector$PerfmondReceiver;
    :cond_ff
    # getter for: Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$600()Ljava/lang/String;

    move-result-object v9

    const-string v11, "[PERFMOND] read == -1 Termination for perfmond_sock"

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_108
    .catch Ljava/lang/InterruptedException; {:try_start_7c .. :try_end_108} :catch_116
    .catchall {:try_start_7c .. :try_end_108} :catchall_10b

    .line 3712
    nop

    .end local v7    # "charsRead":I
    .end local v8    # "buffer":[C
    .end local v10    # "message":Ljava/lang/String;
    goto/16 :goto_74

    .line 3715
    :catchall_10b
    move-exception v7

    .line 3716
    .local v7, "tr":Ljava/lang/Throwable;
    # getter for: Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$600()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[PERFMOND] Uncaught exception "

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_121

    .line 3713
    .end local v7    # "tr":Ljava/lang/Throwable;
    :catch_116
    move-exception v7

    .line 3714
    .local v7, "er":Ljava/lang/InterruptedException;
    # getter for: Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$600()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[PERFMOND] Thread is terminated by InterruptedException"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    .end local v7    # "er":Ljava/lang/InterruptedException;
    nop

    .line 3720
    :goto_121
    :try_start_121
    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->close()V
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_124} :catch_125

    .line 3723
    goto :goto_126

    .line 3721
    :catch_125
    move-exception v7

    .line 3724
    :goto_126
    return-void
.end method
