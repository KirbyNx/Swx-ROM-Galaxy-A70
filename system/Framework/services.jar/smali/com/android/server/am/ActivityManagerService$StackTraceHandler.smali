.class Lcom/android/server/am/ActivityManagerService$StackTraceHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StackTraceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 25195
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$StackTraceHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 25196
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25197
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 20
    .param p1, "msg"    # Landroid/os/Message;

    .line 25201
    move-object/from16 v1, p1

    iget v0, v1, Landroid/os/Message;->what:I

    const/16 v2, 0xbe

    if-eq v0, v2, :cond_d

    .line 25232
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_7d

    .line 25203
    :cond_d
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcom/android/server/am/ProcessRecord;

    .line 25204
    .local v14, "proc":Lcom/android/server/am/ProcessRecord;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binder Timeout. so get process\'s stackTrace please check dropbox.txt (system_app_binder_timeout) proc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25206
    if-eqz v14, :cond_7d

    iget v0, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_7d

    .line 25207
    const-string v15, "binder_timeout"

    .line 25208
    .local v15, "errMessage":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/anr"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    .line 25209
    .local v13, "tracesDir":Ljava/io/File;
    const/4 v3, 0x0

    .line 25211
    .local v3, "tracesFile":Ljava/io/File;
    :try_start_39
    const-string v0, "binder_timeout"

    const/4 v4, 0x0

    invoke-static {v0, v4, v13}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v11
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_40} :catch_71

    .line 25216
    .end local v3    # "tracesFile":Ljava/io/File;
    .local v11, "tracesFile":Ljava/io/File;
    nop

    .line 25217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25218
    .local v0, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v2, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25219
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v4, v4}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/Pair;

    .line 25225
    move-object/from16 v12, p0

    iget-object v2, v12, Lcom/android/server/am/ActivityManagerService$StackTraceHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v3, v15

    move-object v4, v14

    move-object/from16 v12, v16

    move-object/from16 v16, v13

    .end local v13    # "tracesDir":Ljava/io/File;
    .local v16, "tracesDir":Ljava/io/File;
    move-object/from16 v13, v17

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/util/ArrayList;)V

    .line 25228
    .end local v0    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "tracesFile":Ljava/io/File;
    .end local v15    # "errMessage":Ljava/lang/String;
    .end local v16    # "tracesDir":Ljava/io/File;
    goto :goto_7d

    .line 25212
    .restart local v3    # "tracesFile":Ljava/io/File;
    .restart local v13    # "tracesDir":Ljava/io/File;
    .restart local v15    # "errMessage":Ljava/lang/String;
    :catch_71
    move-exception v0

    move-object/from16 v16, v13

    .line 25213
    .end local v13    # "tracesDir":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "tracesDir":Ljava/io/File;
    const-string v4, "failed to make stacTrace dump file."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25214
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 25215
    return-void

    .line 25235
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "tracesFile":Ljava/io/File;
    .end local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "errMessage":Ljava/lang/String;
    .end local v16    # "tracesDir":Ljava/io/File;
    :cond_7d
    :goto_7d
    return-void
.end method
