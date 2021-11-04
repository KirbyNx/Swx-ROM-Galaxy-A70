.class final Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;
.super Landroid/print/IPrintSpoolerClient$Stub;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrintSpoolerClient"
.end annotation


# instance fields
.field private final mWeakSpooler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/print/RemotePrintSpooler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler;)V
    .registers 3
    .param p1, "spooler"    # Lcom/android/server/print/RemotePrintSpooler;

    .line 915
    invoke-direct {p0}, Landroid/print/IPrintSpoolerClient$Stub;-><init>()V

    .line 916
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    .line 917
    return-void
.end method


# virtual methods
.method public onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "printService"    # Landroid/content/ComponentName;

    .line 934
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintSpooler;

    .line 935
    .local v0, "spooler":Lcom/android/server/print/RemotePrintSpooler;
    if-eqz v0, :cond_1e

    .line 936
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 938
    .local v1, "identity":J
    :try_start_e
    # getter for: Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->access$1300(Lcom/android/server/print/RemotePrintSpooler;)Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;->onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 940
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 941
    goto :goto_1e

    .line 940
    :catchall_19
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 941
    throw v3

    .line 943
    .end local v1    # "identity":J
    :cond_1e
    :goto_1e
    return-void
.end method

.method public onAllPrintJobsHandled()V
    .registers 5

    .line 947
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintSpooler;

    .line 948
    .local v0, "spooler":Lcom/android/server/print/RemotePrintSpooler;
    if-eqz v0, :cond_1a

    .line 949
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 951
    .local v1, "identity":J
    :try_start_e
    # invokes: Lcom/android/server/print/RemotePrintSpooler;->onAllPrintJobsHandled()V
    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->access$1400(Lcom/android/server/print/RemotePrintSpooler;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_15

    .line 953
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 954
    goto :goto_1a

    .line 953
    :catchall_15
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 954
    throw v3

    .line 956
    .end local v1    # "identity":J
    :cond_1a
    :goto_1a
    return-void
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .registers 6
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .line 921
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintSpooler;

    .line 922
    .local v0, "spooler":Lcom/android/server/print/RemotePrintSpooler;
    if-eqz v0, :cond_1e

    .line 923
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 925
    .local v1, "identity":J
    :try_start_e
    # getter for: Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->access$1300(Lcom/android/server/print/RemotePrintSpooler;)Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 927
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 928
    goto :goto_1e

    .line 927
    :catchall_19
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 928
    throw v3

    .line 930
    .end local v1    # "identity":J
    :cond_1e
    :goto_1e
    return-void
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .registers 6
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .line 960
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintSpooler;

    .line 961
    .local v0, "spooler":Lcom/android/server/print/RemotePrintSpooler;
    if-eqz v0, :cond_1a

    .line 962
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 964
    .local v1, "identity":J
    :try_start_e
    # invokes: Lcom/android/server/print/RemotePrintSpooler;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    invoke-static {v0, p1}, Lcom/android/server/print/RemotePrintSpooler;->access$1500(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/PrintJobInfo;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_15

    .line 966
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 967
    goto :goto_1a

    .line 966
    :catchall_15
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 967
    throw v3

    .line 969
    .end local v1    # "identity":J
    :cond_1a
    :goto_1a
    return-void
.end method
