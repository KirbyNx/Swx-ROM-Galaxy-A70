.class public Lcom/android/server/power/ShutdownThread$Led;
.super Ljava/lang/Object;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Led"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Off()V
    .registers 1

    .line 986
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread$Led;->fileWriteInt(I)V

    .line 987
    return-void
.end method

.method private static On()V
    .registers 1

    .line 982
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread$Led;->fileWriteInt(I)V

    .line 983
    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .line 980
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Led;->On()V

    return-void
.end method

.method private static fileWriteInt(I)V
    .registers 8
    .param p0, "value"    # I

    .line 990
    const-string/jumbo v0, "led file close error"

    const-string v1, "ShutdownThread"

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/sec/led/led_pattern"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 991
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    const-string v4, "LED"

    if-nez v3, :cond_1a

    .line 992
    const-string v0, "!@LED File is not exist"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return-void

    .line 996
    :cond_1a
    const/4 v3, 0x0

    .line 998
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1b
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 999
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_2c} :catch_38
    .catchall {:try_start_1b .. :try_end_2c} :catchall_36

    .line 1005
    nop

    .line 1006
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    .line 1010
    :cond_30
    :goto_30
    goto :goto_44

    .line 1008
    :catch_31
    move-exception v4

    .line 1009
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1011
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_44

    .line 1004
    :catchall_36
    move-exception v4

    goto :goto_45

    .line 1000
    :catch_38
    move-exception v5

    .line 1001
    .local v5, "e":Ljava/io/IOException;
    :try_start_39
    const-string v6, "!@Exception has raised while file write"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_36

    .line 1005
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_30

    .line 1006
    :try_start_40
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_31

    goto :goto_30

    .line 1012
    :goto_44
    return-void

    .line 1005
    :goto_45
    if-eqz v3, :cond_50

    .line 1006
    :try_start_47
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_50

    .line 1008
    :catch_4b
    move-exception v5

    .line 1009
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51

    .line 1010
    .end local v5    # "e":Ljava/io/IOException;
    :cond_50
    :goto_50
    nop

    .line 1011
    :goto_51
    throw v4
.end method
