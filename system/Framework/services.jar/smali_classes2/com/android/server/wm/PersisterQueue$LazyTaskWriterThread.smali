.class Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;
.super Ljava/lang/Thread;
.source "PersisterQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PersisterQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyTaskWriterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/PersisterQueue;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/PersisterQueue;Ljava/lang/String;)V
    .registers 3
    .param p2, "name"    # Ljava/lang/String;

    .line 280
    iput-object p1, p0, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->this$0:Lcom/android/server/wm/PersisterQueue;

    .line 281
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/PersisterQueue;Ljava/lang/String;Lcom/android/server/wm/PersisterQueue$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/wm/PersisterQueue;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/android/server/wm/PersisterQueue$1;

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;-><init>(Lcom/android/server/wm/PersisterQueue;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 286
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 290
    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->this$0:Lcom/android/server/wm/PersisterQueue;

    monitor-enter v0
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_3c

    .line 291
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->this$0:Lcom/android/server/wm/PersisterQueue;

    # getter for: Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/wm/PersisterQueue;->access$100(Lcom/android/server/wm/PersisterQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    .line 292
    .local v1, "probablyDone":Z
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_39

    .line 294
    :try_start_13
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->this$0:Lcom/android/server/wm/PersisterQueue;

    # getter for: Lcom/android/server/wm/PersisterQueue;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/wm/PersisterQueue;->access$200(Lcom/android/server/wm/PersisterQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1f
    if-ltz v0, :cond_33

    .line 295
    iget-object v2, p0, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->this$0:Lcom/android/server/wm/PersisterQueue;

    # getter for: Lcom/android/server/wm/PersisterQueue;->mListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/wm/PersisterQueue;->access$200(Lcom/android/server/wm/PersisterQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/PersisterQueue$Listener;

    invoke-interface {v2, v1}, Lcom/android/server/wm/PersisterQueue$Listener;->onPreProcessItem(Z)V

    .line 294
    add-int/lit8 v0, v0, -0x1

    goto :goto_1f

    .line 298
    .end local v0    # "i":I
    :cond_33
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->this$0:Lcom/android/server/wm/PersisterQueue;

    # invokes: Lcom/android/server/wm/PersisterQueue;->processNextItem()V
    invoke-static {v0}, Lcom/android/server/wm/PersisterQueue;->access$300(Lcom/android/server/wm/PersisterQueue;)V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_38} :catch_3c

    .line 299
    .end local v1    # "probablyDone":Z
    goto :goto_5

    .line 292
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    .end local p0    # "this":Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;
    :try_start_3b
    throw v1
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3c} :catch_3c

    .line 300
    .restart local p0    # "this":Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;
    :catch_3c
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "PersisterQueue"

    const-string v2, "Persister thread is exiting. Should never happen in prod, butit\'s OK in tests."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .end local v0    # "e":Ljava/lang/InterruptedException;
    return-void
.end method
