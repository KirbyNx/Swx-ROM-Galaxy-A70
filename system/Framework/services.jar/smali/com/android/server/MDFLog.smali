.class public Lcom/android/server/MDFLog;
.super Ljava/lang/Object;
.source "MDFLog.java"


# static fields
.field private static final LOG_FILE_PATH:Ljava/lang/String; = "/data/log/mdf_log"

.field private static final MAX_FILE_LENGTH:J = 0x100000L

.field private static TAG:Ljava/lang/String;

.field private static sLogMsg:Lcom/android/server/MDFLog;


# instance fields
.field private outputContents:Ljava/lang/StringBuffer;

.field private sdfNow:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const-string v0, "MDFLog"

    sput-object v0, Lcom/android/server/MDFLog;->TAG:Ljava/lang/String;

    .line 14
    new-instance v0, Lcom/android/server/MDFLog;

    invoke-direct {v0}, Lcom/android/server/MDFLog;-><init>()V

    sput-object v0, Lcom/android/server/MDFLog;->sLogMsg:Lcom/android/server/MDFLog;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/server/MDFLog;->outputContents:Ljava/lang/StringBuffer;

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/MDFLog;->sdfNow:Ljava/text/SimpleDateFormat;

    .line 34
    sget-object v0, Lcom/android/server/MDFLog;->TAG:Ljava/lang/String;

    const-string v1, "----------------------StartLogs-------------------------"

    invoke-direct {p0, v0, v1}, Lcom/android/server/MDFLog;->outFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private exists()Z
    .registers 3

    .line 82
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/mdf_log"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private flush()V
    .registers 9

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "file":Ljava/io/File;
    const-wide/16 v1, 0x0

    .line 51
    .local v1, "fileLength":J
    const/4 v3, 0x0

    .line 53
    .local v3, "fos":Ljava/io/OutputStreamWriter;
    :try_start_4
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/log/mdf_log"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    move-wide v1, v4

    .line 56
    const-wide/32 v4, 0x100000

    cmp-long v4, v1, v4

    if-lez v4, :cond_23

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 58
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/log/mdf_log"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 60
    :cond_23
    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v7, "UTF-8"

    invoke-direct {v4, v5, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object v3, v4

    .line 62
    iget-object v4, p0, Lcom/android/server/MDFLog;->outputContents:Ljava/lang/StringBuffer;

    monitor-enter v4
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_34} :catch_57
    .catchall {:try_start_4 .. :try_end_34} :catchall_55

    .line 63
    :try_start_34
    iget-object v5, p0, Lcom/android/server/MDFLog;->outputContents:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 64
    iget-object v5, p0, Lcom/android/server/MDFLog;->outputContents:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 65
    monitor-exit v4
    :try_end_44
    .catchall {:try_start_34 .. :try_end_44} :catchall_52

    .line 66
    :try_start_44
    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_57
    .catchall {:try_start_44 .. :try_end_47} :catchall_55

    .line 72
    :try_start_47
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 77
    :cond_4a
    :goto_4a
    goto :goto_63

    .line 74
    :catch_4b
    move-exception v4

    .line 76
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/MDFLog;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_63

    .line 65
    :catchall_52
    move-exception v5

    :try_start_53
    monitor-exit v4
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileLength":J
    .end local v3    # "fos":Ljava/io/OutputStreamWriter;
    .end local p0    # "this":Lcom/android/server/MDFLog;
    :try_start_54
    throw v5
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_55} :catch_57
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    .line 70
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "fileLength":J
    .restart local v3    # "fos":Ljava/io/OutputStreamWriter;
    .restart local p0    # "this":Lcom/android/server/MDFLog;
    :catchall_55
    move-exception v4

    goto :goto_64

    .line 67
    :catch_57
    move-exception v4

    .line 68
    .local v4, "e":Ljava/lang/Exception;
    :try_start_58
    sget-object v5, Lcom/android/server/MDFLog;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_55

    .line 72
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_4a

    :try_start_5f
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_4b

    goto :goto_4a

    .line 79
    :goto_63
    return-void

    .line 72
    :goto_64
    if-eqz v3, :cond_71

    :try_start_66
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_71

    .line 74
    :catch_6a
    move-exception v5

    .line 76
    .local v5, "e":Ljava/io/IOException;
    sget-object v6, Lcom/android/server/MDFLog;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_72

    .line 77
    .end local v5    # "e":Ljava/io/IOException;
    :cond_71
    :goto_71
    nop

    .line 78
    :goto_72
    throw v4
.end method

.method public static isExists()Z
    .registers 1

    .line 27
    sget-object v0, Lcom/android/server/MDFLog;->sLogMsg:Lcom/android/server/MDFLog;

    invoke-direct {v0}, Lcom/android/server/MDFLog;->exists()Z

    move-result v0

    return v0
.end method

.method public static out(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/android/server/MDFLog;->sLogMsg:Lcom/android/server/MDFLog;

    sget-object v1, Lcom/android/server/MDFLog;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/server/MDFLog;->outFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static out(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/android/server/MDFLog;->sLogMsg:Lcom/android/server/MDFLog;

    invoke-direct {v0, p0, p1}, Lcom/android/server/MDFLog;->outFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method private outFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 39
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/MDFLog;->sdfNow:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "strNow":Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v3, p0, Lcom/android/server/MDFLog;->outputContents:Ljava/lang/StringBuffer;

    monitor-enter v3

    .line 43
    :try_start_15
    iget-object v4, p0, Lcom/android/server/MDFLog;->outputContents:Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_15 .. :try_end_3c} :catchall_40

    .line 45
    invoke-direct {p0}, Lcom/android/server/MDFLog;->flush()V

    .line 46
    return-void

    .line 44
    :catchall_40
    move-exception v4

    :try_start_41
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v4
.end method
