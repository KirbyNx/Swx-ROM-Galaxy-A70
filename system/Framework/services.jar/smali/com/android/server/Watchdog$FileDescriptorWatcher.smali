.class final Lcom/android/server/Watchdog$FileDescriptorWatcher;
.super Ljava/lang/Object;
.source "Watchdog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileDescriptorWatcher"
.end annotation


# static fields
.field static FD_RLIMIT:J = 0x0L

.field static final OUTPUT_FILENAME:Ljava/lang/String; = "/data/log/fd_list.txt"

.field static final PROC_FD:Ljava/lang/String; = "/proc/self/fd"

.field static final PROC_MAPS:Ljava/lang/String; = "/proc/self/maps"

.field static mDumped:Z

.field static mDumpedCount:J

.field static final mEmfileChecker:Z

.field static mThreadCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 374
    const-string/jumbo v0, "ro.build.type"

    const-string/jumbo v1, "user"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 375
    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v2, "0x4f4c"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 376
    const-string/jumbo v0, "ro.product_ship"

    const-string/jumbo v2, "true"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    move v0, v1

    :goto_33
    sput-boolean v0, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mEmfileChecker:Z

    .line 378
    const-wide/16 v2, 0x1

    sput-wide v2, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mDumpedCount:J

    .line 379
    sput-boolean v1, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mDumped:Z

    .line 380
    sput v1, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mThreadCount:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    :try_start_3
    sget v0, Landroid/system/OsConstants;->RLIMIT_NOFILE:I

    invoke-static {v0}, Landroid/system/Os;->getrlimit(I)Landroid/system/StructRlimit;

    move-result-object v0

    .line 386
    .local v0, "rlimit":Landroid/system/StructRlimit;
    iget-wide v1, v0, Landroid/system/StructRlimit;->rlim_cur:J

    sput-wide v1, Lcom/android/server/Watchdog$FileDescriptorWatcher;->FD_RLIMIT:J
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_d} :catch_e

    .line 390
    goto :goto_1a

    .line 387
    .end local v0    # "rlimit":Landroid/system/StructRlimit;
    :catch_e
    move-exception v0

    .line 388
    .local v0, "errno":Landroid/system/ErrnoException;
    const-wide/16 v1, 0x400

    sput-wide v1, Lcom/android/server/Watchdog$FileDescriptorWatcher;->FD_RLIMIT:J

    .line 389
    const-string v1, "Watchdog"

    const-string v2, "Error thrown from getrlimit(RLIMIT_NOFILE)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    .end local v0    # "errno":Landroid/system/ErrnoException;
    :goto_1a
    return-void
.end method

.method private getFdInfo(Ljava/lang/StringBuilder;[Ljava/io/File;)V
    .registers 9
    .param p1, "content"    # Ljava/lang/StringBuilder;
    .param p2, "fds"    # [Ljava/io/File;

    .line 394
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_55

    aget-object v2, p2, v1

    .line 396
    .local v2, "f":Ljava/io/File;
    :try_start_6
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    .local v3, "fdPath":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_37} :catch_39

    .line 400
    nop

    .end local v3    # "fdPath":Ljava/io/File;
    goto :goto_52

    .line 398
    :catch_39
    move-exception v3

    .line 399
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> readlink error\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 402
    :cond_55
    return-void
.end method

.method private getMapInfo(Ljava/lang/StringBuilder;)V
    .registers 6
    .param p1, "content"    # Ljava/lang/StringBuilder;

    .line 405
    const/4 v0, 0x0

    .line 409
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/self/maps"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    .line 410
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "line":Ljava/lang/String;
    const-string v2, "\n=====system_server MAPS info=====\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :goto_17
    if-eqz v1, :cond_27

    .line 413
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_25} :catch_30
    .catchall {:try_start_1 .. :try_end_25} :catchall_2e

    move-object v1, v2

    goto :goto_17

    .line 421
    .end local v1    # "line":Ljava/lang/String;
    :cond_27
    nop

    .line 422
    :try_start_28
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 424
    :cond_2b
    :goto_2b
    goto :goto_3e

    :catch_2c
    move-exception v1

    .line 425
    goto :goto_3e

    .line 420
    :catchall_2e
    move-exception v1

    goto :goto_3f

    .line 417
    :catch_30
    move-exception v1

    .line 418
    .local v1, "e":Ljava/io/IOException;
    :try_start_31
    const-string v2, "Watchdog"

    const-string v3, "Failed to write system_server MAPS info"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_2e

    .line 421
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_2b

    .line 422
    :try_start_3a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_2c

    goto :goto_2b

    .line 426
    :goto_3e
    return-void

    .line 421
    :goto_3f
    if-eqz v0, :cond_46

    .line 422
    :try_start_41
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_46

    .line 424
    :catch_45
    move-exception v2

    :cond_46
    :goto_46
    nop

    .line 425
    throw v1
.end method

.method private getProcessInfo(Ljava/lang/StringBuilder;)V
    .registers 7
    .param p1, "content"    # Ljava/lang/StringBuilder;

    .line 429
    const/4 v0, 0x0

    .line 433
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string/jumbo v2, "ps -A -o PID -o NAME"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 434
    .local v1, "p":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 435
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v2

    .line 436
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, "line":Ljava/lang/String;
    const-string v3, "\n=====all Process Status info (\'ps -A -o PID -o NAME\')=====\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    :goto_27
    if-eqz v2, :cond_37

    .line 439
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_35} :catch_40
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_35} :catch_40
    .catchall {:try_start_1 .. :try_end_35} :catchall_3e

    move-object v2, v3

    goto :goto_27

    .line 447
    .end local v2    # "line":Ljava/lang/String;
    :cond_37
    nop

    .line 448
    :try_start_38
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 450
    goto :goto_51

    :catch_3c
    move-exception v2

    .line 451
    goto :goto_51

    .line 446
    .end local v1    # "p":Ljava/lang/Process;
    :catchall_3e
    move-exception v1

    goto :goto_52

    .line 443
    :catch_40
    move-exception v1

    .line 444
    .local v1, "e":Ljava/lang/Exception;
    :try_start_41
    const-string v2, "Watchdog"

    const-string v3, "Failed to write all Process Status info"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_3e

    .line 447
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_50

    .line 448
    :try_start_4a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_50

    .line 450
    :catch_4e
    move-exception v1

    .line 451
    goto :goto_51

    .line 450
    :cond_50
    :goto_50
    nop

    .line 452
    :goto_51
    return-void

    .line 447
    :goto_52
    if-eqz v0, :cond_59

    .line 448
    :try_start_54
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_59

    .line 450
    :catch_58
    move-exception v2

    :cond_59
    :goto_59
    nop

    .line 451
    throw v1
.end method

.method private recordResult(Ljava/lang/StringBuilder;)V
    .registers 14
    .param p1, "content"    # Ljava/lang/StringBuilder;

    .line 455
    const-string v0, "Watchdog"

    const-string v1, "chmod 640 /data/log/fd_list.txt"

    const-string v2, "chown system:log /data/log/fd_list.txt"

    const/4 v3, 0x0

    .line 456
    .local v3, "bw":Ljava/io/BufferedWriter;
    const/4 v4, 0x0

    .line 457
    .local v4, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 458
    .local v5, "b64os":Landroid/util/Base64OutputStream;
    const/4 v6, 0x0

    .line 461
    .local v6, "gzipos":Ljava/util/zip/GZIPOutputStream;
    :try_start_a
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/log/fd_list.txt"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_22

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    move-result v8

    if-nez v8, :cond_22

    .line 463
    const-string v8, "Failed to create fd_list.txt"

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_22
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v4, v8

    .line 467
    new-instance v8, Landroid/util/Base64OutputStream;

    const/4 v9, 0x0

    invoke-direct {v8, v4, v9}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v5, v8

    .line 468
    new-instance v8, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v8, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v6, v8

    .line 469
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "UTF-8"

    invoke-virtual {v8, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 471
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 472
    invoke-virtual {v5}, Landroid/util/Base64OutputStream;->close()V

    .line 473
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 475
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FD_LIST_INFO **********\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\nFD_LIST_INFO **********\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 476
    .local v8, "contentToString":Ljava/lang/String;
    new-instance v10, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/FileWriter;

    invoke-direct {v11, v7, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v10, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v3, v10

    .line 477
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v3, v8, v9, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 478
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_7a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_7a} :catch_91
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_7a} :catch_91
    .catchall {:try_start_a .. :try_end_7a} :catchall_8f

    .line 483
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "contentToString":Ljava/lang/String;
    nop

    .line 484
    :try_start_7b
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 485
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 486
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_8c} :catch_8d

    .line 488
    :cond_8c
    :goto_8c
    goto :goto_ab

    :catch_8d
    move-exception v0

    .line 489
    goto :goto_ab

    .line 482
    :catchall_8f
    move-exception v0

    goto :goto_ac

    .line 479
    :catch_91
    move-exception v7

    .line 480
    .local v7, "e":Ljava/lang/Exception;
    :try_start_92
    const-string v8, "Failed to write contens in fd_list.txt"

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_92 .. :try_end_97} :catchall_8f

    .line 483
    .end local v7    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_8c

    .line 484
    :try_start_99
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 485
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 486
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_aa} :catch_8d

    goto :goto_8c

    .line 490
    :goto_ab
    return-void

    .line 483
    :goto_ac
    if-eqz v3, :cond_c1

    .line 484
    :try_start_ae
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 485
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 486
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_bf} :catch_c0

    goto :goto_c1

    .line 488
    :catch_c0
    move-exception v1

    :cond_c1
    :goto_c1
    nop

    .line 489
    throw v0
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 495
    sget v0, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mThreadCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mThreadCount:I

    .line 496
    new-instance v0, Ljava/io/File;

    const-string v2, "/proc/self/fd"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 497
    .local v0, "fds":[Ljava/io/File;
    if-eqz v0, :cond_15

    array-length v2, v0

    goto :goto_16

    :cond_15
    const/4 v2, -0x1

    .line 499
    .local v2, "fdCount":I
    :goto_16
    int-to-long v3, v2

    const-wide/16 v5, 0x400

    sget-wide v7, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mDumpedCount:J

    mul-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-lez v3, :cond_10b

    sget-boolean v3, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mEmfileChecker:Z

    const-wide/16 v4, 0x1

    if-eqz v3, :cond_2a

    cmp-long v3, v7, v4

    if-nez v3, :cond_10b

    .line 500
    :cond_2a
    sget-wide v6, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mDumpedCount:J

    add-long/2addr v6, v4

    sput-wide v6, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mDumpedCount:J

    .line 501
    const/4 v3, 0x0

    .line 502
    .local v3, "bw":Ljava/io/BufferedWriter;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 504
    .local v4, "content":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "===== fd_list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Length: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-direct {p0, v4, v0}, Lcom/android/server/Watchdog$FileDescriptorWatcher;->getFdInfo(Ljava/lang/StringBuilder;[Ljava/io/File;)V

    .line 507
    invoke-direct {p0, v4}, Lcom/android/server/Watchdog$FileDescriptorWatcher;->getMapInfo(Ljava/lang/StringBuilder;)V

    .line 508
    invoke-direct {p0, v4}, Lcom/android/server/Watchdog$FileDescriptorWatcher;->getProcessInfo(Ljava/lang/StringBuilder;)V

    .line 509
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@ The number of fd in system_server is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", so we make fd_list.txt file for debugging."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Watchdog"

    invoke-static {v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-direct {p0, v4}, Lcom/android/server/Watchdog$FileDescriptorWatcher;->recordResult(Ljava/lang/StringBuilder;)V

    .line 512
    sget-boolean v5, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mEmfileChecker:Z

    if-nez v5, :cond_10b

    sget-boolean v5, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mDumped:Z

    if-nez v5, :cond_10b

    sget-wide v8, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mDumpedCount:J

    const-wide/16 v10, 0x2

    cmp-long v5, v8, v10

    if-lez v5, :cond_10b

    .line 513
    sput-boolean v1, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mDumped:Z

    .line 514
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", so we ran dumpstate for debugging."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    new-instance v5, Landroid/os/BugreportParams;

    const/16 v6, 0xb

    invoke-direct {v5, v6}, Landroid/os/BugreportParams;-><init>(I)V

    .line 516
    .local v5, "sys_watchdog":Landroid/os/BugreportParams;
    # getter for: Lcom/android/server/Watchdog;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/Watchdog;->access$000()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "system_server"

    invoke-static {v5, v7, v6}, Landroid/os/Debug;->saveDump(Landroid/os/BugreportParams;Ljava/lang/String;Landroid/content/Context;)V

    .line 517
    const/16 v6, 0x14

    .line 518
    .local v6, "count":I
    :goto_d9
    add-int/lit8 v7, v6, -0x1

    .end local v6    # "count":I
    .local v7, "count":I
    if-lez v6, :cond_f7

    .line 520
    const-wide/16 v8, 0x3e8

    :try_start_df
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e2
    .catch Ljava/lang/InterruptedException; {:try_start_df .. :try_end_e2} :catch_e3

    .line 522
    goto :goto_e4

    .line 521
    :catch_e3
    move-exception v6

    .line 523
    :goto_e4
    const-string/jumbo v6, "init.svc.compact_dump"

    const-string/jumbo v8, "stopped"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f5

    .line 524
    goto :goto_f7

    .line 523
    :cond_f5
    move v6, v7

    goto :goto_d9

    .line 526
    :cond_f7
    :goto_f7
    const-string v6, "P|WD"

    const-string/jumbo v8, "sys_emfile"

    invoke-static {v6, v8}, Landroid/os/Debug;->saveResetReason(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    .line 528
    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 531
    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "content":Ljava/lang/StringBuilder;
    .end local v5    # "sys_watchdog":Landroid/os/BugreportParams;
    .end local v7    # "count":I
    :cond_10b
    sget v3, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mThreadCount:I

    sub-int/2addr v3, v1

    sput v3, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mThreadCount:I

    .line 532
    return-void
.end method
