.class Lcom/android/server/notification/sec/DisplayToast$1;
.super Ljava/lang/Thread;
.source "DisplayToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/sec/DisplayToast;->dump()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/sec/DisplayToast;


# direct methods
.method constructor <init>(Lcom/android/server/notification/sec/DisplayToast;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/notification/sec/DisplayToast;

    .line 110
    iput-object p1, p0, Lcom/android/server/notification/sec/DisplayToast$1;->this$0:Lcom/android/server/notification/sec/DisplayToast;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 113
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/ToastLog.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "file":Ljava/io/File;
    :try_start_7
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_4b

    .line 116
    .local v1, "osw":Ljava/io/OutputStreamWriter;
    :try_start_14
    iget-object v2, p0, Lcom/android/server/notification/sec/DisplayToast$1;->this$0:Lcom/android/server/notification/sec/DisplayToast;

    # getter for: Lcom/android/server/notification/sec/DisplayToast;->logList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/notification/sec/DisplayToast;->access$000(Lcom/android/server/notification/sec/DisplayToast;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_41

    .line 117
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/notification/sec/DisplayToast$1;->this$0:Lcom/android/server/notification/sec/DisplayToast;

    # getter for: Lcom/android/server/notification/sec/DisplayToast;->logList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/notification/sec/DisplayToast;->access$000(Lcom/android/server/notification/sec/DisplayToast;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 118
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 119
    .end local v5    # "str":Ljava/lang/String;
    goto :goto_25

    .line 120
    :cond_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_1b .. :try_end_36} :catchall_3e

    .line 121
    const/4 v2, 0x1

    :try_start_37
    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_41

    .line 122
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_4b

    .line 124
    .end local v1    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_51

    .line 120
    .restart local v1    # "osw":Ljava/io/OutputStreamWriter;
    :catchall_3e
    move-exception v3

    :try_start_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "osw":Ljava/io/OutputStreamWriter;
    .end local p0    # "this":Lcom/android/server/notification/sec/DisplayToast$1;
    :try_start_40
    throw v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    .line 114
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "osw":Ljava/io/OutputStreamWriter;
    .restart local p0    # "this":Lcom/android/server/notification/sec/DisplayToast$1;
    :catchall_41
    move-exception v2

    :try_start_42
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_4a

    :catchall_46
    move-exception v3

    :try_start_47
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/notification/sec/DisplayToast$1;
    :goto_4a
    throw v2
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4b} :catch_4b

    .line 122
    .end local v1    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v0    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/notification/sec/DisplayToast$1;
    :catch_4b
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ToastLog"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_51
    return-void
.end method
