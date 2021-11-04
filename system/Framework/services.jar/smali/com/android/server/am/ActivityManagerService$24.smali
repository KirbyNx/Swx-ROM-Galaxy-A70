.class Lcom/android/server/am/ActivityManagerService$24;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dataFile:Ljava/io/File;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/os/DropBoxManager;)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "name"    # Ljava/lang/String;

    .line 12792
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$24;->val$report:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$24;->val$sb:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dropboxTag:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dataFile:Ljava/io/File;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$24;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dbox:Landroid/os/DropBoxManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 12795
    const-string v0, "-b"

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$24;->val$report:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 12796
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$24;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12799
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "logcat_for_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12800
    .local v1, "logcatSetting":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "max_error_bytes_for_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12801
    .local v2, "maxBytesSetting":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 12802
    .local v3, "lines":I
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 12803
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/high16 v6, 0x80000

    .line 12802
    invoke-static {v5, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 12804
    .local v5, "dropboxMaxSize":I
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$24;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int v6, v5, v6

    mul-int/lit8 v7, v3, 0x64

    sub-int/2addr v6, v7

    .line 12807
    .local v6, "maxDataFileSize":I
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dataFile:Ljava/io/File;

    const-string v8, "ActivityManager"

    if-eqz v7, :cond_84

    if-lez v6, :cond_84

    .line 12809
    :try_start_61
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$24;->val$sb:Ljava/lang/StringBuilder;

    const-string v10, "\n\n[[TRUNCATED]]"

    invoke-static {v7, v6, v10}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_6c} :catch_6d

    .line 12813
    goto :goto_84

    .line 12811
    :catch_6d
    move-exception v7

    .line 12812
    .local v7, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error reading "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dataFile:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12815
    .end local v7    # "e":Ljava/io/IOException;
    :cond_84
    :goto_84
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$24;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v7, :cond_95

    iget-object v7, v7, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v7, :cond_95

    .line 12816
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$24;->val$sb:Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$24;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v9, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12819
    :cond_95
    if-lez v3, :cond_154

    .line 12820
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$24;->val$sb:Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12823
    const/4 v7, 0x0

    .line 12825
    .local v7, "input":Ljava/io/InputStreamReader;
    :try_start_9f
    new-instance v9, Ljava/lang/ProcessBuilder;

    const/16 v10, 0x11

    new-array v10, v10, [Ljava/lang/String;

    const-string v11, "/system/bin/timeout"

    aput-object v11, v10, v4

    const-string v11, "-k"

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const/4 v11, 0x2

    const-string v13, "15s"

    aput-object v13, v10, v11

    const/4 v11, 0x3

    const-string v13, "10s"

    aput-object v13, v10, v11

    const/4 v11, 0x4

    const-string v13, "/system/bin/logcat"

    aput-object v13, v10, v11

    const/4 v11, 0x5

    const-string v13, "-v"

    aput-object v13, v10, v11

    const/4 v11, 0x6

    const-string/jumbo v13, "threadtime"

    aput-object v13, v10, v11

    const/4 v11, 0x7

    aput-object v0, v10, v11

    const/16 v11, 0x8

    const-string v13, "events"

    aput-object v13, v10, v11

    const/16 v11, 0x9

    aput-object v0, v10, v11

    const/16 v11, 0xa

    const-string/jumbo v13, "system"

    aput-object v13, v10, v11

    const/16 v11, 0xb

    aput-object v0, v10, v11

    const/16 v11, 0xc

    const-string/jumbo v13, "main"

    aput-object v13, v10, v11

    const/16 v11, 0xd

    aput-object v0, v10, v11

    const/16 v0, 0xe

    const-string v11, "crash"

    aput-object v11, v10, v0

    const/16 v0, 0xf

    const-string v11, "-t"

    aput-object v11, v10, v0

    const/16 v0, 0x10

    .line 12828
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v0

    invoke-direct {v9, v10}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 12829
    invoke-virtual {v9, v12}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_10a} :catch_13f
    .catchall {:try_start_9f .. :try_end_10a} :catchall_13d

    .line 12831
    .local v0, "logcat":Ljava/lang/Process;
    :try_start_10a
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_111} :catch_112
    .catchall {:try_start_10a .. :try_end_111} :catchall_13d

    goto :goto_113

    :catch_112
    move-exception v9

    .line 12832
    :goto_113
    :try_start_113
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_11a} :catch_11b
    .catchall {:try_start_113 .. :try_end_11a} :catchall_13d

    goto :goto_11c

    :catch_11b
    move-exception v9

    .line 12833
    :goto_11c
    :try_start_11c
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v7, v9

    .line 12836
    const/16 v9, 0x2000

    new-array v9, v9, [C

    .line 12837
    .local v9, "buf":[C
    :goto_12a
    invoke-virtual {v7, v9}, Ljava/io/InputStreamReader;->read([C)I

    move-result v10

    move v11, v10

    .local v11, "num":I
    if-lez v10, :cond_137

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$24;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9, v4, v11}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_136} :catch_13f
    .catchall {:try_start_11c .. :try_end_136} :catchall_13d

    goto :goto_12a

    .line 12841
    .end local v0    # "logcat":Ljava/lang/Process;
    .end local v9    # "buf":[C
    .end local v11    # "num":I
    :cond_137
    :try_start_137
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_13a} :catch_13b

    goto :goto_154

    :catch_13b
    move-exception v0

    goto :goto_154

    :catchall_13d
    move-exception v0

    goto :goto_14c

    .line 12838
    :catch_13f
    move-exception v0

    .line 12839
    .local v0, "e":Ljava/io/IOException;
    :try_start_140
    const-string v4, "Error running logcat"

    invoke-static {v8, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_145
    .catchall {:try_start_140 .. :try_end_145} :catchall_13d

    .line 12841
    nop

    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v7, :cond_154

    :try_start_148
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_14b} :catch_13b

    goto :goto_154

    :goto_14c
    if-eqz v7, :cond_153

    :try_start_14e
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_151} :catch_152

    goto :goto_153

    :catch_152
    move-exception v4

    .line 12842
    :cond_153
    :goto_153
    throw v0

    .line 12845
    .end local v7    # "input":Ljava/io/InputStreamReader;
    :cond_154
    :goto_154
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dropboxTag:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$24;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 12846
    return-void
.end method
