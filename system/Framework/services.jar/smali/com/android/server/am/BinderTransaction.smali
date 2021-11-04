.class public Lcom/android/server/am/BinderTransaction;
.super Ljava/lang/Object;
.source "BinderTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    }
.end annotation


# static fields
.field static final BINDER_PROCS_COLLECTOR_TIMEOUT:J = 0x7530L

.field private static final BINDER_TRANSACTION_GROUP_DIRECTION:I = 0x1

.field private static final BINDER_TRANSACTION_GROUP_TO_PID:I = 0x6

.field private static LOG_ERROR_HEADER:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_BINDER_PROC_FILE_IO_ERROR:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_BINDER_PROC_FILE_IS_NOT_READABLE:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_EXIST:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_FOUND:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_COULD_NOT_GET_THE_PID_OF_ZYGOTE:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_COULD_NOT_GET_THE_PROCESS_TYPE:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_FAILED_TO_GET_THE_BINDER_TRANSACTION:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_FAILED_TO_GET_THE_PROCESS_TYPES:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_FAILED_TO_GET_WHOLE_BINDER_TRANSACTION_INFO:Ljava/lang/String; = null

.field private static final PID_PROC_NATIVE:I = 0x1

.field private static final PID_PROC_UNKNOWN:I = -0x1

.field private static final PID_PROC_VM:I = 0x0

.field private static final REGEX_BINDER_TRANSACTION:Ljava/lang/String; = "\\s*(outgoing|incoming|pending)\\s+transaction\\s+(-?\\d+):\\s+(-?\\w+)\\s+from\\s+(-?\\d+):(-?\\d+)\\s+to\\s+(-?\\d+):(-?\\d+)"

.field static final TAG:Ljava/lang/String; = "BinderTransaction"

.field static sBinderPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const-string v0, "\\s*(outgoing|incoming|pending)\\s+transaction\\s+(-?\\d+):\\s+(-?\\w+)\\s+from\\s+(-?\\d+):(-?\\d+)\\s+to\\s+(-?\\d+):(-?\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BinderTransaction;->sBinderPattern:Ljava/util/regex/Pattern;

    .line 59
    const-string v0, "ERROR: "

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_HEADER:Ljava/lang/String;

    .line 60
    const-string v0, "failed to get the binder transaction info of pid "

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_THE_BINDER_TRANSACTION:Ljava/lang/String;

    .line 62
    const-string v0, "failed to get the process types, stack traces will not be added"

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_THE_PROCESS_TYPES:Ljava/lang/String;

    .line 64
    const-string v0, "failed to get whole binder transaction info from pid "

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_WHOLE_BINDER_TRANSACTION_INFO:Ljava/lang/String;

    .line 66
    const-string v0, "binder proc file not exist. drop pid "

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_EXIST:Ljava/lang/String;

    .line 68
    const-string v0, "binder proc file is not readable. drop pid "

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_IS_NOT_READABLE:Ljava/lang/String;

    .line 70
    const-string v0, "binder proc file not found. drop pid "

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_FOUND:Ljava/lang/String;

    .line 72
    const-string v0, "binder proc file io error. drop pid "

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_IO_ERROR:Ljava/lang/String;

    .line 74
    const-string v0, "could not get the pid of zygote"

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_COULD_NOT_GET_THE_PID_OF_ZYGOTE:Ljava/lang/String;

    .line 76
    const-string v0, "could not get the process type. drop pid "

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_COULD_NOT_GET_THE_PROCESS_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/BinderTransaction;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/BinderTransaction;
    .param p1, "x1"    # I

    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsLogHeader(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/BinderTransaction;ILjava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)Z
    .registers 6
    .param p0, "x0"    # Lcom/android/server/am/BinderTransaction;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/LinkedList;
    .param p3, "x3"    # Ljava/util/LinkedList;
    .param p4, "x4"    # Ljava/util/ArrayList;

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BinderTransaction;->findBinderTransactions(ILjava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 37
    sget-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_THE_BINDER_TRANSACTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/BinderTransaction;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/BinderTransaction;
    .param p1, "x1"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/BinderTransaction;Ljava/util/LinkedList;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/BinderTransaction;
    .param p1, "x1"    # Ljava/util/LinkedList;
    .param p2, "x2"    # Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BinderTransaction;->separatePidsByProcessType(Ljava/util/LinkedList;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .line 37
    sget-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_THE_PROCESS_TYPES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/BinderTransaction;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/BinderTransaction;
    .param p1, "x1"    # I

    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsLogFooter(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private findBinderTransactions(ILjava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)Z
    .registers 22
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 190
    .local p2, "targetPids":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .local p3, "scannedPids":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .local p4, "rawInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 191
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 194
    :cond_17
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BinderTransaction;->getBinderProcFileName(I)Ljava/lang/String;

    move-result-object v10

    .line 195
    .local v10, "procFileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 196
    .local v11, "binderProcFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const-string v12, "BinderTransaction"

    if-nez v0, :cond_4c

    .line 197
    const-string v0, "Binder proc file not exist."

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_EXIST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-direct {v7, v0}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    return v1

    .line 202
    :cond_4c
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_197

    invoke-virtual {v11}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_5a

    goto/16 :goto_197

    .line 209
    :cond_5a
    const/4 v13, 0x0

    .line 210
    .local v13, "error":Z
    const/4 v1, 0x0

    .line 211
    .local v1, "rawInputStream":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 212
    .local v2, "rawReader":Ljava/io/InputStreamReader;
    const/4 v3, 0x0

    .line 214
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_5e
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_63
    .catch Ljava/io/FileNotFoundException; {:try_start_5e .. :try_end_63} :catch_145
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_63} :catch_10c
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_63} :catch_ea
    .catchall {:try_start_5e .. :try_end_63} :catchall_e6

    move-object v14, v0

    .line 215
    .end local v1    # "rawInputStream":Ljava/io/FileInputStream;
    .local v14, "rawInputStream":Ljava/io/FileInputStream;
    :try_start_64
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_69
    .catch Ljava/io/FileNotFoundException; {:try_start_64 .. :try_end_69} :catch_e2
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_69} :catch_df
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_69} :catch_dc
    .catchall {:try_start_64 .. :try_end_69} :catchall_d7

    move-object v15, v0

    .line 216
    .end local v2    # "rawReader":Ljava/io/InputStreamReader;
    .local v15, "rawReader":Ljava/io/InputStreamReader;
    :try_start_6a
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6f
    .catch Ljava/io/FileNotFoundException; {:try_start_6a .. :try_end_6f} :catch_d2
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6f} :catch_ce
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6f} :catch_ca
    .catchall {:try_start_6a .. :try_end_6f} :catchall_c4

    move-object/from16 v16, v0

    .line 219
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v16, "reader":Ljava/io/BufferedReader;
    :goto_71
    :try_start_71
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .local v6, "line":Ljava/lang/String;
    if-eqz v0, :cond_92

    .line 220
    invoke-direct {v7, v6}, Lcom/android/server/am/BinderTransaction;->matchBinderTransactionLine(Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 221
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 222
    move-object/from16 v1, p0

    move-object v3, v6

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v0, v6

    .end local v6    # "line":Ljava/lang/String;
    .local v0, "line":Ljava/lang/String;
    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BinderTransaction;->parseBinderTransactionLine(Ljava/util/regex/Matcher;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)V
    :try_end_8f
    .catch Ljava/io/FileNotFoundException; {:try_start_71 .. :try_end_8f} :catch_bd
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_8f} :catch_b6
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_8f} :catch_b0
    .catchall {:try_start_71 .. :try_end_8f} :catchall_a8

    goto :goto_91

    .line 221
    .end local v0    # "line":Ljava/lang/String;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_90
    move-object v0, v6

    .line 224
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v0    # "line":Ljava/lang/String;
    :goto_91
    goto :goto_71

    .line 219
    .end local v0    # "line":Ljava/lang/String;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_92
    move-object v0, v6

    .line 240
    .end local v6    # "line":Ljava/lang/String;
    nop

    .line 241
    :try_start_94
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_98

    goto :goto_99

    :catch_98
    move-exception v0

    .line 243
    :goto_99
    nop

    .line 244
    :try_start_9a
    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e

    goto :goto_9f

    :catch_9e
    move-exception v0

    .line 246
    :goto_9f
    nop

    .line 247
    :try_start_a0
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_a5

    goto/16 :goto_17e

    :catch_a5
    move-exception v0

    goto/16 :goto_17e

    .line 240
    :catchall_a8
    move-exception v0

    move-object v4, v0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    goto/16 :goto_181

    .line 235
    :catch_b0
    move-exception v0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    goto :goto_eb

    .line 230
    :catch_b6
    move-exception v0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    goto/16 :goto_10d

    .line 225
    :catch_bd
    move-exception v0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    goto/16 :goto_146

    .line 240
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_c4
    move-exception v0

    move-object v4, v0

    move-object v1, v14

    move-object v2, v15

    goto/16 :goto_181

    .line 235
    :catch_ca
    move-exception v0

    move-object v1, v14

    move-object v2, v15

    goto :goto_eb

    .line 230
    :catch_ce
    move-exception v0

    move-object v1, v14

    move-object v2, v15

    goto :goto_10d

    .line 225
    :catch_d2
    move-exception v0

    move-object v1, v14

    move-object v2, v15

    goto/16 :goto_146

    .line 240
    .end local v15    # "rawReader":Ljava/io/InputStreamReader;
    .local v2, "rawReader":Ljava/io/InputStreamReader;
    :catchall_d7
    move-exception v0

    move-object v4, v0

    move-object v1, v14

    goto/16 :goto_181

    .line 235
    :catch_dc
    move-exception v0

    move-object v1, v14

    goto :goto_eb

    .line 230
    :catch_df
    move-exception v0

    move-object v1, v14

    goto :goto_10d

    .line 225
    :catch_e2
    move-exception v0

    move-object v1, v14

    goto/16 :goto_146

    .line 240
    .end local v14    # "rawInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "rawInputStream":Ljava/io/FileInputStream;
    :catchall_e6
    move-exception v0

    move-object v4, v0

    goto/16 :goto_181

    .line 235
    :catch_ea
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    :goto_eb
    :try_start_eb
    const-string v4, "Unexpected error during binder proc file processing."

    invoke-static {v12, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f0
    .catchall {:try_start_eb .. :try_end_f0} :catchall_e6

    .line 238
    const/4 v13, 0x1

    .line 240
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_f8

    .line 241
    :try_start_f3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_f6} :catch_f7

    goto :goto_f8

    :catch_f7
    move-exception v0

    .line 243
    :cond_f8
    :goto_f8
    if-eqz v2, :cond_ff

    .line 244
    :try_start_fa
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_fd} :catch_fe

    goto :goto_ff

    :catch_fe
    move-exception v0

    .line 246
    :cond_ff
    :goto_ff
    if-eqz v1, :cond_106

    .line 247
    :try_start_101
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_105

    goto :goto_106

    :catch_105
    move-exception v0

    .line 251
    :cond_106
    :goto_106
    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v3

    goto/16 :goto_17e

    .line 230
    :catch_10c
    move-exception v0

    .line 231
    .local v0, "e":Ljava/io/IOException;
    :goto_10d
    :try_start_10d
    const-string v4, "Binder proc file read io error."

    invoke-static {v12, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_IO_ERROR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 232
    invoke-direct {v7, v4}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12e
    .catchall {:try_start_10d .. :try_end_12e} :catchall_e6

    .line 234
    const/4 v13, 0x1

    .line 240
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_136

    .line 241
    :try_start_131
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_134
    .catch Ljava/io/IOException; {:try_start_131 .. :try_end_134} :catch_135

    goto :goto_136

    :catch_135
    move-exception v0

    .line 243
    :cond_136
    :goto_136
    if-eqz v2, :cond_13d

    .line 244
    :try_start_138
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_13b} :catch_13c

    goto :goto_13d

    :catch_13c
    move-exception v0

    .line 246
    :cond_13d
    :goto_13d
    if-eqz v1, :cond_106

    .line 247
    :try_start_13f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_142} :catch_143

    goto :goto_106

    :catch_143
    move-exception v0

    goto :goto_106

    .line 225
    :catch_145
    move-exception v0

    .line 226
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_146
    :try_start_146
    const-string v4, "Binder proc file not found. "

    invoke-static {v12, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_FOUND:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 227
    invoke-direct {v7, v4}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_167
    .catchall {:try_start_146 .. :try_end_167} :catchall_e6

    .line 229
    const/4 v13, 0x1

    .line 240
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_16f

    .line 241
    :try_start_16a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_16d
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_16d} :catch_16e

    goto :goto_16f

    :catch_16e
    move-exception v0

    .line 243
    :cond_16f
    :goto_16f
    if-eqz v2, :cond_176

    .line 244
    :try_start_171
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_174
    .catch Ljava/io/IOException; {:try_start_171 .. :try_end_174} :catch_175

    goto :goto_176

    :catch_175
    move-exception v0

    .line 246
    :cond_176
    :goto_176
    if-eqz v1, :cond_106

    .line 247
    :try_start_178
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_17b
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_17b} :catch_17c

    goto :goto_106

    :catch_17c
    move-exception v0

    goto :goto_106

    .line 251
    .end local v1    # "rawInputStream":Ljava/io/FileInputStream;
    .end local v2    # "rawReader":Ljava/io/InputStreamReader;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "rawInputStream":Ljava/io/FileInputStream;
    .restart local v15    # "rawReader":Ljava/io/InputStreamReader;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    :goto_17e
    xor-int/lit8 v0, v13, 0x1

    return v0

    .line 240
    .end local v14    # "rawInputStream":Ljava/io/FileInputStream;
    .end local v15    # "rawReader":Ljava/io/InputStreamReader;
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "rawInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "rawReader":Ljava/io/InputStreamReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_181
    if-eqz v3, :cond_188

    .line 241
    :try_start_183
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_186} :catch_187

    goto :goto_188

    :catch_187
    move-exception v0

    .line 243
    :cond_188
    :goto_188
    if-eqz v2, :cond_18f

    .line 244
    :try_start_18a
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_18d
    .catch Ljava/io/IOException; {:try_start_18a .. :try_end_18d} :catch_18e

    goto :goto_18f

    :catch_18e
    move-exception v0

    .line 246
    :cond_18f
    :goto_18f
    if-eqz v1, :cond_196

    .line 247
    :try_start_191
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_194
    .catch Ljava/io/IOException; {:try_start_191 .. :try_end_194} :catch_195

    goto :goto_196

    :catch_195
    move-exception v0

    .line 249
    :cond_196
    :goto_196
    throw v4

    .line 203
    .end local v1    # "rawInputStream":Ljava/io/FileInputStream;
    .end local v2    # "rawReader":Ljava/io/InputStreamReader;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v13    # "error":Z
    :cond_197
    :goto_197
    const-string v0, "Binder proc file is not readable."

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_IS_NOT_READABLE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-direct {v7, v0}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    return v1
.end method

.method private getProcessTypeOfPid(I[I)I
    .registers 8
    .param p1, "pid"    # I
    .param p2, "zygotePids"    # [I

    .line 309
    invoke-virtual {p0, p1}, Lcom/android/server/am/BinderTransaction;->getParentPid(I)I

    move-result v0

    .line 310
    .local v0, "ppid":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_16

    .line 311
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_14

    aget v4, p2, v3

    .line 312
    .local v4, "zygotePid":I
    if-ne v0, v4, :cond_11

    .line 313
    return v2

    .line 311
    .end local v4    # "zygotePid":I
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 316
    :cond_14
    const/4 v1, 0x1

    return v1

    .line 318
    :cond_16
    return v1
.end method

.method private makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "string"    # Ljava/lang/String;

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_HEADER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makeBinderTransactionsLogFooter(I)Ljava/lang/String;
    .registers 4
    .param p1, "pid"    # I

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "----- end binder transactions "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    const-string v1, " -----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makeBinderTransactionsLogHeader(I)Ljava/lang/String;
    .registers 4
    .param p1, "pid"    # I

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "----- binder transactions from pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v1, " -----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private matchBinderTransactionLine(Ljava/lang/String;)Ljava/util/regex/Matcher;
    .registers 3
    .param p1, "line"    # Ljava/lang/String;

    .line 255
    sget-object v0, Lcom/android/server/am/BinderTransaction;->sBinderPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method private parseBinderTransactionLine(Ljava/util/regex/Matcher;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)V
    .registers 9
    .param p1, "matcher"    # Ljava/util/regex/Matcher;
    .param p2, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Matcher;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 262
    .local p3, "targetPids":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .local p4, "scannedPids":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .local p5, "rawInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "direction":Ljava/lang/String;
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 267
    .local v1, "toPid":Ljava/lang/Integer;
    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_33

    const-string/jumbo v2, "outgoing"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 271
    invoke-virtual {p4, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 272
    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 275
    :cond_33
    return-void
.end method

.method private separatePidsByProcessType(Ljava/util/LinkedList;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)Z
    .registers 12
    .param p2, "resultInfo"    # Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/am/BinderTransaction$BinderProcsInfo;",
            ")Z"
        }
    .end annotation

    .line 281
    .local p1, "srcPids":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    const-string/jumbo v0, "zygote"

    const-string/jumbo v1, "zygote64"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "zygoteCmd":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/am/BinderTransaction;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    .line 283
    .local v1, "zygotePids":[I
    const-string v2, "BinderTransaction"

    if-eqz v1, :cond_78

    array-length v3, v1

    if-gtz v3, :cond_16

    goto :goto_78

    .line 291
    :cond_16
    const/4 v3, -0x1

    .line 292
    .local v3, "ret":I
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_77

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 293
    .local v5, "pid":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7, v1}, Lcom/android/server/am/BinderTransaction;->getProcessTypeOfPid(I[I)I

    move-result v3

    .line 294
    if-nez v3, :cond_38

    .line 295
    iget-object v6, p2, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->javaPids:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_76

    .line 296
    :cond_38
    if-ne v3, v6, :cond_40

    .line 297
    iget-object v6, p2, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->nativePids:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_76

    .line 300
    :cond_40
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not get the process type. drop pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v6, p2, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_COULD_NOT_GET_THE_PROCESS_TYPE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 301
    invoke-direct {p0, v7}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .end local v5    # "pid":Ljava/lang/Integer;
    :goto_76
    goto :goto_1b

    .line 305
    :cond_77
    return v6

    .line 284
    .end local v3    # "ret":I
    :cond_78
    :goto_78
    const-string v3, "Could not get the pid of zygote."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v2, p2, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_COULD_NOT_GET_THE_PID_OF_ZYGOTE:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method protected getBinderProcFileName(I)Ljava/lang/String;
    .registers 4
    .param p1, "pid"    # I

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/kernel/debug/binder/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInfo(I)Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    .registers 9
    .param p1, "startPid"    # I

    .line 109
    const-string v0, "BinderTransaction"

    new-instance v1, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    invoke-direct {v1}, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;-><init>()V

    .line 110
    .local v1, "workInfo":Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    const/4 v2, 0x0

    .line 111
    .local v2, "isBinderProcsCollectorCompleted":Z
    new-instance v3, Lcom/android/server/am/BinderTransaction$1;

    const-string v4, "BinderProcsCollector"

    invoke-direct {v3, p0, v4, v1, p1}, Lcom/android/server/am/BinderTransaction$1;-><init>(Lcom/android/server/am/BinderTransaction;Ljava/lang/String;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;I)V

    .line 148
    .local v3, "binderProcThread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 151
    const-wide/16 v4, 0x7530

    :try_start_14
    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V

    .line 152
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 154
    const-string v4, "ERROR! binderProc thread timed out! failed to get binder info."

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_22} :catch_28
    .catchall {:try_start_14 .. :try_end_22} :catchall_26

    goto :goto_25

    .line 157
    :cond_23
    const/4 v0, 0x1

    move v2, v0

    .line 162
    :goto_25
    goto :goto_2f

    .line 161
    :catchall_26
    move-exception v0

    goto :goto_69

    .line 159
    :catch_28
    move-exception v4

    .line 160
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_29
    const-string v5, "ERROR! binderProc thread has interrupted!"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_26

    .line 162
    nop

    .line 166
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_2f
    if-eqz v2, :cond_33

    .line 169
    move-object v0, v1

    .local v0, "resultInfo":Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    goto :goto_68

    .line 173
    .end local v0    # "resultInfo":Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    :cond_33
    new-instance v0, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    invoke-direct {v0}, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;-><init>()V

    .line 176
    .restart local v0    # "resultInfo":Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    iget-object v4, v0, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsLogHeader(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v4, v0, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_WHOLE_BINDER_TRANSACTION_INFO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 178
    invoke-direct {p0, v5}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v4, v0, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsLogFooter(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :goto_68
    return-object v0

    .line 162
    .end local v0    # "resultInfo":Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    :goto_69
    throw v0
.end method

.method protected getParentPid(I)I
    .registers 3
    .param p1, "pid"    # I

    .line 353
    invoke-static {p1}, Landroid/os/Process;->getParentPid(I)I

    move-result v0

    return v0
.end method

.method protected getPidsForCommands([Ljava/lang/String;)[I
    .registers 3
    .param p1, "cmds"    # [Ljava/lang/String;

    .line 349
    invoke-static {p1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method
