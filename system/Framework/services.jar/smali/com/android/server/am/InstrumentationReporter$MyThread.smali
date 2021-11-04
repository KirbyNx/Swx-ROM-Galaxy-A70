.class final Lcom/android/server/am/InstrumentationReporter$MyThread;
.super Ljava/lang/Thread;
.source "InstrumentationReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/InstrumentationReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/InstrumentationReporter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/InstrumentationReporter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/InstrumentationReporter;

    .line 41
    iput-object p1, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    .line 42
    const-string v0, "InstrumentationReporter"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 49
    const/4 v0, 0x0

    .line 52
    .local v0, "waited":Z
    :goto_5
    iget-object v1, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    iget-object v1, v1, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_a
    iget-object v2, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    iget-object v2, v2, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    .line 54
    .local v2, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/InstrumentationReporter$Report;>;"
    iget-object v3, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    .line 55
    if-eqz v2, :cond_6e

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_6e

    .line 70
    :cond_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_84

    .line 72
    const/4 v0, 0x0

    .line 74
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6d

    .line 75
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/InstrumentationReporter$Report;

    .line 77
    .local v3, "rep":Lcom/android/server/am/InstrumentationReporter$Report;
    :try_start_2b
    iget v4, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mType:I

    if-nez v4, :cond_3b

    .line 81
    iget-object v4, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v5, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    iget v6, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mResultCode:I

    iget-object v7, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    invoke-interface {v4, v5, v6, v7}, Landroid/app/IInstrumentationWatcher;->instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V

    goto :goto_46

    .line 87
    :cond_3b
    iget-object v4, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v5, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    iget v6, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mResultCode:I

    iget-object v7, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    invoke-interface {v4, v5, v6, v7}, Landroid/app/IInstrumentationWatcher;->instrumentationFinished(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_46} :catch_47

    .line 93
    :goto_46
    goto :goto_6a

    .line 90
    :catch_47
    move-exception v4

    .line 91
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure reporting to instrumentation watcher: comp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " results="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v3    # "rep":Lcom/android/server/am/InstrumentationReporter$Report;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 95
    .end local v1    # "i":I
    .end local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/InstrumentationReporter$Report;>;"
    :cond_6d
    goto :goto_5

    .line 56
    .restart local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/InstrumentationReporter$Report;>;"
    :cond_6e
    :goto_6e
    if-nez v0, :cond_7e

    .line 59
    :try_start_70
    iget-object v3, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    iget-object v3, v3, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_79
    .catch Ljava/lang/InterruptedException; {:try_start_70 .. :try_end_79} :catch_7a
    .catchall {:try_start_70 .. :try_end_79} :catchall_84

    .line 61
    goto :goto_7b

    .line 60
    :catch_7a
    move-exception v3

    .line 62
    :goto_7b
    const/4 v0, 0x1

    .line 63
    :try_start_7c
    monitor-exit v1

    goto :goto_5

    .line 65
    :cond_7e
    iget-object v3, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    iput-object v4, v3, Lcom/android/server/am/InstrumentationReporter;->mThread:Ljava/lang/Thread;

    .line 67
    monitor-exit v1

    return-void

    .line 70
    .end local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/InstrumentationReporter$Report;>;"
    :catchall_84
    move-exception v2

    monitor-exit v1
    :try_end_86
    .catchall {:try_start_7c .. :try_end_86} :catchall_84

    throw v2
.end method
