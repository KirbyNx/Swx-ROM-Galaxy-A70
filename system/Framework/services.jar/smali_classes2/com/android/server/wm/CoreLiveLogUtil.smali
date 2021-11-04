.class public Lcom/android/server/wm/CoreLiveLogUtil;
.super Ljava/lang/Object;
.source "CoreLiveLogUtil.java"


# static fields
.field static final BASE_DIR:Ljava/lang/String; = "/data/log/wmLog/"

.field private static final DEBUG_LEVEL_LOW:Ljava/lang/String; = "0x4f4c"

.field private static EVENT_ID:Ljava/lang/String; = null

.field public static final ISSUE_TRACKER:Ljava/lang/String; = "com.salab.issuetracker"

.field public static final PBS_ADDRESS:Ljava/lang/String;

.field private static final REPORT_AGREEMENT:Ljava/lang/String; = "samsung_errorlog_agree"

.field private static final REPORT_ERROR_INTENT:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.REPORT_ERROR_V2"

.field private static final SERVICE_ID:Ljava/lang/String; = "4F4-399-995755"

.field private static final TAG:Ljava/lang/String; = "CoreLiveLog"

.field private static final UPLOAD_MO:Ljava/lang/String; = "uploadMO"

.field public static final WM_REPORT_DIRECTORY:Ljava/lang/String; = "/data/log/wmLog"

.field public static final WM_REPORT_NAME:Ljava/lang/String; = "WmRawLogs"

.field private static final ZIP_EXTENSION:Ljava/lang/String; = ".zip"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    sput-object v0, Lcom/android/server/wm/CoreLiveLogUtil;->EVENT_ID:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "ro.omc.build.id"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/CoreLiveLogUtil;->PBS_ADDRESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static archiveFiles(Ljava/util/List;Ljava/lang/String;)V
    .registers 12
    .param p1, "zipOutputPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 99
    .local p0, "filesList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const-string v0, "CoreLiveLog"

    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 100
    .local v1, "buffer":[B
    const/4 v2, 0x0

    :try_start_7
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_86
    .catchall {:try_start_7 .. :try_end_11} :catchall_84

    .line 102
    .local v3, "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :try_start_11
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_6d

    .line 103
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 104
    .local v5, "reportFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_46

    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t find file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    goto :goto_1b

    .line 108
    :cond_46
    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 109
    .local v6, "fileInputStream":Ljava/io/FileInputStream;
    new-instance v7, Ljava/util/zip/ZipEntry;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 110
    .local v7, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v3, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 113
    :goto_5b
    invoke-virtual {v6, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    move v9, v8

    .local v9, "length":I
    if-lez v8, :cond_66

    .line 114
    invoke-virtual {v3, v1, v2, v9}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_5b

    .line 117
    :cond_66
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 118
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6c
    .catchall {:try_start_11 .. :try_end_6c} :catchall_7a

    .line 119
    .end local v5    # "reportFile":Ljava/io/File;
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v9    # "length":I
    goto :goto_1b

    .line 121
    :cond_6d
    :try_start_6d
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_86
    .catchall {:try_start_6d .. :try_end_70} :catchall_84

    .line 126
    .end local v3    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :try_start_70
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_79} :catch_99

    goto :goto_98

    .line 100
    .restart local v3    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :catchall_7a
    move-exception v4

    :try_start_7b
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_7f

    goto :goto_83

    :catchall_7f
    move-exception v5

    :try_start_80
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "buffer":[B
    .end local p0    # "filesList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local p1    # "zipOutputPath":Ljava/lang/String;
    :goto_83
    throw v4
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_84} :catch_86
    .catchall {:try_start_80 .. :try_end_84} :catchall_84

    .line 125
    .end local v3    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "buffer":[B
    .restart local p0    # "filesList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local p1    # "zipOutputPath":Ljava/lang/String;
    :catchall_84
    move-exception v0

    goto :goto_9f

    .line 121
    :catch_86
    move-exception v3

    .line 122
    .local v3, "e":Ljava/lang/Exception;
    :try_start_87
    const-string v4, "Failed to compress"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8f
    .catchall {:try_start_87 .. :try_end_8f} :catchall_84

    .line 126
    .end local v3    # "e":Ljava/lang/Exception;
    :try_start_8f
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_98} :catch_99

    .line 129
    :goto_98
    goto :goto_9e

    .line 127
    :catch_99
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 131
    :goto_9e
    return-void

    .line 126
    :goto_9f
    :try_start_9f
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a8} :catch_a9

    .line 129
    goto :goto_ad

    .line 127
    :catch_a9
    move-exception v2

    .line 128
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_ad
    throw v0
.end method

.method private static getCurTime()Ljava/lang/String;
    .registers 4

    .line 134
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 135
    .local v0, "now":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "temp":Ljava/lang/String;
    return-object v1
.end method

.method public static getLogFile(Ljava/lang/String;)Ljava/io/File;
    .registers 8
    .param p0, "msg"    # Ljava/lang/String;

    .line 72
    const-string v0, "CoreLiveLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/log/wmLog/WmRawLogs_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/wm/CoreLiveLogUtil;->getCurTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "fname":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    :try_start_22
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_56

    .line 80
    nop

    .line 81
    :try_start_26
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_3d

    .line 82
    .local v4, "pr":Ljava/io/PrintWriter;
    :try_start_2b
    invoke-virtual {v4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_33

    .line 83
    :try_start_2e
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_3d

    .line 87
    .end local v4    # "pr":Ljava/io/PrintWriter;
    nop

    .line 88
    return-object v2

    .line 81
    .restart local v4    # "pr":Ljava/io/PrintWriter;
    :catchall_33
    move-exception v5

    :try_start_34
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception v6

    :try_start_39
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "fname":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local p0    # "msg":Ljava/lang/String;
    :goto_3c
    throw v5
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3d} :catch_3d

    .line 83
    .end local v4    # "pr":Ljava/io/PrintWriter;
    .restart local v1    # "fname":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    .restart local p0    # "msg":Ljava/lang/String;
    :catch_3d
    move-exception v4

    .line 84
    .local v4, "ee":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot open file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 86
    return-object v3

    .line 76
    .end local v4    # "ee":Ljava/io/IOException;
    :catch_56
    move-exception v4

    .line 77
    .restart local v4    # "ee":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot create file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-object v3
.end method

.method public static isDebug()Z
    .registers 1

    .line 145
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-nez v0, :cond_6

    .line 146
    const/4 v0, 0x1

    return v0

    .line 148
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public static isUserTrial(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 155
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 156
    return v0

    .line 158
    :cond_4
    const-string/jumbo v1, "ro.boot.debug_level"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "state":Ljava/lang/String;
    :try_start_d
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    return v0

    .line 161
    :cond_14
    const-string v2, "0x4f4c"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    return v0

    .line 162
    :cond_1d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 164
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "com.salab.issuetracker"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_28} :catch_2a

    .line 165
    const/4 v0, 0x1

    return v0

    .line 166
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_2a
    move-exception v2

    .line 167
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method static synthetic lambda$sendLogAsync$0(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "inst"    # Ljava/lang/Runnable;

    .line 66
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 67
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 68
    return-void
.end method

.method public static sendLogAsync(Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "inst"    # Ljava/lang/Runnable;

    .line 65
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$CoreLiveLogUtil$jUX4zzSoaH7FOO2eXjeda_9xUnc;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$CoreLiveLogUtil$jUX4zzSoaH7FOO2eXjeda_9xUnc;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 68
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 69
    return-void
.end method

.method public static sendToDiagmon(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .registers 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logFile"    # Ljava/io/File;
    .param p2, "errorCode"    # Ljava/lang/String;

    .line 174
    move-object/from16 v1, p1

    const-string v2, "1"

    const-string v3, "IntentOnly"

    const-string v4, "Ext"

    const-string v5, "CFailLogUpload"

    const-string v6, "DiagMon"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v7, "samsung_errorlog_agree"

    const/4 v8, 0x0

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 177
    .local v7, "errorlog_agree":I
    const/4 v0, 0x1

    if-ne v7, v0, :cond_1c8

    .line 178
    if-nez v1, :cond_1e

    return-void

    .line 179
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "send broadcast intent to diagmon : "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "CoreLiveLog"

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/android/server/wm/CoreLiveLogUtil;->PBS_ADDRESS:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/wm/CoreLiveLogUtil;->getCurTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/CoreLiveLogUtil;->EVENT_ID:Ljava/lang/String;

    .line 182
    if-nez p2, :cond_63

    const-string/jumbo v0, "test_error_code"

    goto :goto_65

    :cond_63
    move-object/from16 v0, p2

    :goto_65
    move-object v9, v0

    .line 184
    .local v9, "RESULT_CODE":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v10, "com.sec.android.diagmonagent.intent.REPORT_ERROR_V2"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 185
    .local v10, "i":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v11, v0

    .line 186
    .local v11, "uploadMO":Landroid/os/Bundle;
    const/16 v12, 0x20

    invoke-virtual {v10, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 188
    if-nez v1, :cond_80

    .line 189
    const-string v0, "fail to create file : "

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 192
    .local v13, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-static {v13, v9}, Lcom/android/server/wm/CoreLiveLogUtil;->zipping(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 195
    .local v14, "LOG_FILE":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_91
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/io/File;

    .line 197
    .local v16, "f":Ljava/io/File;
    :try_start_9f
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a2} :catch_a3

    .line 200
    goto :goto_ab

    .line 198
    :catch_a3
    move-exception v0

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "f":Ljava/io/File;
    :goto_ab
    goto :goto_91

    .line 205
    :cond_ac
    :try_start_ac
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v11, v6, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 207
    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v5, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 208
    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v15, "ServiceID"

    const-string v12, "4F4-399-995755"

    invoke-virtual {v0, v15, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v4, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 212
    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v12, "ClientV"

    sget-object v15, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 213
    invoke-virtual {v0, v12, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v12, "UiMode"

    const-string v15, "0"

    .line 215
    invoke-virtual {v0, v12, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v12, "ResultCode"

    .line 217
    invoke-virtual {v0, v12, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v12, "WifiOnlyFeature"

    .line 219
    invoke-virtual {v0, v12, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "EventID"

    sget-object v12, Lcom/android/server/wm/CoreLiveLogUtil;->EVENT_ID:Ljava/lang/String;

    .line 221
    invoke-virtual {v0, v4, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 225
    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "IntentOnlyMode"

    .line 226
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "Agree"

    const-string v4, "D"

    .line 228
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "LogPath"

    .line 230
    invoke-virtual {v0, v2, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string/jumbo v0, "uploadMO"

    invoke-virtual {v10, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 233
    const/16 v2, 0x20

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 234
    const-string v0, "com.sec.android.diagmonagent"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_18f} :catch_1bf

    .line 236
    move-object/from16 v2, p0

    :try_start_191
    invoke-virtual {v2, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " send intent : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " bundle: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bc
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_1bc} :catch_1bd

    .line 242
    goto :goto_1ca

    .line 239
    :catch_1bd
    move-exception v0

    goto :goto_1c2

    :catch_1bf
    move-exception v0

    move-object/from16 v2, p0

    .line 240
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_1c2
    const-string v3, "Exception while sending a bug report."

    invoke-static {v8, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    return-void

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "RESULT_CODE":Ljava/lang/String;
    .end local v10    # "i":Landroid/content/Intent;
    .end local v11    # "uploadMO":Landroid/os/Bundle;
    .end local v13    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v14    # "LOG_FILE":Ljava/lang/String;
    :cond_1c8
    move-object/from16 v2, p0

    .line 245
    :goto_1ca
    return-void
.end method

.method public static zipping(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 93
    .local p0, "reports":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/log/wmLog/WmRawLogs_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "zipOutputPath":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/server/wm/CoreLiveLogUtil;->archiveFiles(Ljava/util/List;Ljava/lang/String;)V

    .line 95
    return-object v0
.end method
