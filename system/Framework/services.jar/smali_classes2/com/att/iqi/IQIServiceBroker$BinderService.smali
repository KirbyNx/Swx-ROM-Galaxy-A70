.class Lcom/att/iqi/IQIServiceBroker$BinderService;
.super Lcom/att/iqi/IIQIBroker$Stub;
.source "IQIServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IQIServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/IQIServiceBroker;


# direct methods
.method private constructor <init>(Lcom/att/iqi/IQIServiceBroker;)V
    .registers 2

    .line 290
    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-direct {p0}, Lcom/att/iqi/IIQIBroker$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IQIServiceBroker$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/att/iqi/IQIServiceBroker;
    .param p2, "x1"    # Lcom/att/iqi/IQIServiceBroker$1;

    .line 290
    invoke-direct {p0, p1}, Lcom/att/iqi/IQIServiceBroker$BinderService;-><init>(Lcom/att/iqi/IQIServiceBroker;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 494
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/IQIServiceBroker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IQIServiceBroker"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 496
    :cond_f
    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    .line 498
    :cond_16
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, "opti":I
    :goto_1d
    array-length v1, p3

    if-ge v0, v1, :cond_6d

    .line 501
    aget-object v1, p3, v0

    .line 502
    .local v1, "arg":Ljava/lang/String;
    const-string v2, "-h"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 503
    # invokes: Lcom/att/iqi/IQIServiceBroker;->dumpHelp(Ljava/io/PrintWriter;)V
    invoke-static {p2}, Lcom/att/iqi/IQIServiceBroker;->access$1600(Ljava/io/PrintWriter;)V

    goto :goto_45

    .line 504
    :cond_2e
    const-string v2, "--concierge"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 505
    # invokes: Lcom/att/iqi/IQIServiceBroker;->printConciergeVersion(Ljava/io/PrintWriter;)V
    invoke-static {p2}, Lcom/att/iqi/IQIServiceBroker;->access$1700(Ljava/io/PrintWriter;)V

    goto :goto_45

    .line 506
    :cond_3a
    const-string v2, "-v"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 507
    # invokes: Lcom/att/iqi/IQIServiceBroker;->printArtifactsVersion(Ljava/io/PrintWriter;)V
    invoke-static {p2}, Lcom/att/iqi/IQIServiceBroker;->access$1800(Ljava/io/PrintWriter;)V

    .line 514
    :goto_45
    nop

    .end local v1    # "arg":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 515
    goto :goto_1d

    .line 508
    .restart local v1    # "arg":Ljava/lang/String;
    :cond_49
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6d

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_6d

    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    return-void

    .line 517
    .end local v0    # "opti":I
    .end local v1    # "arg":Ljava/lang/String;
    :cond_6d
    return-void
.end method

.method public getTimestamp()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v0

    invoke-interface {v0}, Lcom/att/iqi/IIQIService;->getTimestamp()J

    move-result-wide v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-wide v0

    .line 453
    :catch_b
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "IQIServiceBroker"

    const-string/jumbo v2, "getTimestamp failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    :cond_1a
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V
    .registers 9
    .param p1, "metricId"    # Lcom/att/iqi/lib/Metric$ID;
    .param p2, "callback"    # Lcom/att/iqi/IMetricQueryCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "needRegister":Z
    :try_start_1
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1100(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_4d

    .line 319
    :try_start_8
    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    .line 320
    # getter for: Lcom/att/iqi/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/att/iqi/IQIServiceBroker;->access$1100(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 322
    .local v2, "remoteCallbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/att/iqi/IMetricQueryCallback;>;"
    if-nez v2, :cond_2d

    .line 323
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v2, v3

    .line 324
    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/att/iqi/IQIServiceBroker;->access$1100(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 326
    :cond_2d
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v3

    .line 327
    .local v3, "count":I
    invoke-virtual {v2, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 330
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    if-ne v4, v5, :cond_3d

    .line 331
    const/4 v0, 0x1

    .line 333
    .end local v2    # "remoteCallbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/att/iqi/IMetricQueryCallback;>;"
    .end local v3    # "count":I
    :cond_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_8 .. :try_end_3e} :catchall_4a

    .line 334
    if-eqz v0, :cond_49

    .line 335
    :try_start_40
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v1}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/att/iqi/IIQIService;->registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_49} :catch_4d

    .line 340
    .end local v0    # "needRegister":Z
    :cond_49
    goto :goto_5c

    .line 333
    .restart local v0    # "needRegister":Z
    :catchall_4a
    move-exception v2

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    .end local p0    # "this":Lcom/att/iqi/IQIServiceBroker$BinderService;
    .end local p1    # "metricId":Lcom/att/iqi/lib/Metric$ID;
    .end local p2    # "callback":Lcom/att/iqi/IMetricQueryCallback;
    :try_start_4c
    throw v2
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4d} :catch_4d

    .line 337
    .end local v0    # "needRegister":Z
    .restart local p0    # "this":Lcom/att/iqi/IQIServiceBroker$BinderService;
    .restart local p1    # "metricId":Lcom/att/iqi/lib/Metric$ID;
    .restart local p2    # "callback":Lcom/att/iqi/IMetricQueryCallback;
    :catch_4d
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_5c

    const-string v1, "IQIServiceBroker"

    const-string/jumbo v2, "registerMetricQueryCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5c
    :goto_5c
    return-void
.end method

.method public registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V
    .registers 9
    .param p1, "metricId"    # Lcom/att/iqi/lib/Metric$ID;
    .param p2, "callback"    # Lcom/att/iqi/IMetricSourcingCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    const/4 v0, 0x0

    .line 367
    .local v0, "needRegister":Z
    :try_start_1
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1200(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_4d

    .line 368
    :try_start_8
    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    .line 369
    # getter for: Lcom/att/iqi/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/att/iqi/IQIServiceBroker;->access$1200(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 371
    .local v2, "remoteCallbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/att/iqi/IMetricSourcingCallback;>;"
    if-nez v2, :cond_2d

    .line 372
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v2, v3

    .line 373
    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/att/iqi/IQIServiceBroker;->access$1200(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 375
    :cond_2d
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v3

    .line 376
    .local v3, "count":I
    invoke-virtual {v2, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 379
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    if-ne v4, v5, :cond_3d

    .line 380
    const/4 v0, 0x1

    .line 382
    .end local v2    # "remoteCallbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/att/iqi/IMetricSourcingCallback;>;"
    .end local v3    # "count":I
    :cond_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_8 .. :try_end_3e} :catchall_4a

    .line 383
    if-eqz v0, :cond_49

    .line 384
    :try_start_40
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v1}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/att/iqi/IIQIService;->registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_49} :catch_4d

    .line 389
    .end local v0    # "needRegister":Z
    :cond_49
    goto :goto_5c

    .line 382
    .restart local v0    # "needRegister":Z
    :catchall_4a
    move-exception v2

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    .end local p0    # "this":Lcom/att/iqi/IQIServiceBroker$BinderService;
    .end local p1    # "metricId":Lcom/att/iqi/lib/Metric$ID;
    .end local p2    # "callback":Lcom/att/iqi/IMetricSourcingCallback;
    :try_start_4c
    throw v2
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4d} :catch_4d

    .line 386
    .end local v0    # "needRegister":Z
    .restart local p0    # "this":Lcom/att/iqi/IQIServiceBroker$BinderService;
    .restart local p1    # "metricId":Lcom/att/iqi/lib/Metric$ID;
    .restart local p2    # "callback":Lcom/att/iqi/IMetricSourcingCallback;
    :catch_4d
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_5c

    const-string v1, "IQIServiceBroker"

    const-string/jumbo v2, "registerMetricSourcingCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5c
    :goto_5c
    return-void
.end method

.method public registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    .registers 7
    .param p1, "callback"    # Lcom/att/iqi/IProfileChangedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, "needRegister":Z
    :try_start_1
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1300(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_3a

    .line 417
    :try_start_8
    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;
    invoke-static {v2}, Lcom/att/iqi/IQIServiceBroker;->access$1300(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    .line 418
    .local v2, "count":I
    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/att/iqi/IQIServiceBroker;->access$1300(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 421
    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/att/iqi/IQIServiceBroker;->access$1300(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    if-ne v3, v4, :cond_2a

    .line 422
    const/4 v0, 0x1

    .line 425
    .end local v2    # "count":I
    :cond_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_37

    .line 426
    if-eqz v0, :cond_36

    .line 427
    :try_start_2d
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v1}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/att/iqi/IIQIService;->registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_36} :catch_3a

    .line 432
    .end local v0    # "needRegister":Z
    :cond_36
    goto :goto_49

    .line 425
    .restart local v0    # "needRegister":Z
    :catchall_37
    move-exception v2

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    .end local p0    # "this":Lcom/att/iqi/IQIServiceBroker$BinderService;
    .end local p1    # "callback":Lcom/att/iqi/IProfileChangedCallback;
    :try_start_39
    throw v2
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3a} :catch_3a

    .line 429
    .end local v0    # "needRegister":Z
    .restart local p0    # "this":Lcom/att/iqi/IQIServiceBroker$BinderService;
    .restart local p1    # "callback":Lcom/att/iqi/IProfileChangedCallback;
    :catch_3a
    move-exception v0

    .line 431
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_49

    const-string v1, "IQIServiceBroker"

    const-string/jumbo v2, "registerProfileChangedCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_49
    :goto_49
    return-void
.end method

.method public registerServiceChangedCallback(Lcom/att/iqi/IServiceStateChangeCallback;)V
    .registers 7
    .param p1, "callback"    # Lcom/att/iqi/IServiceStateChangeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "needNotify":Z
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mServiceStateChangeList:Landroid/util/ArraySet;
    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1400(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/ArraySet;

    move-result-object v1

    monitor-enter v1

    .line 466
    :try_start_8
    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mServiceStateChangeList:Landroid/util/ArraySet;
    invoke-static {v2}, Lcom/att/iqi/IQIServiceBroker;->access$1400(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_18
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    if-eqz v2, :cond_15

    .line 468
    const/4 v0, 0x1

    .line 472
    :cond_15
    goto :goto_27

    .line 473
    :catchall_16
    move-exception v2

    goto :goto_56

    .line 470
    :catch_18
    move-exception v2

    .line 471
    .local v2, "e":Ljava/lang/Exception;
    :try_start_19
    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v3

    if-eqz v3, :cond_27

    const-string v3, "IQIServiceBroker"

    const-string/jumbo v4, "registerServiceChangedCallback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 473
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_27
    :goto_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_16

    .line 474
    if-eqz v0, :cond_55

    .line 475
    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "IQIServiceBroker"

    const-string v2, "Call service changed callback now"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_37
    :try_start_37
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;
    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1500(Lcom/att/iqi/IQIServiceBroker;)Lcom/att/iqi/IIQIService;

    move-result-object v1

    if-eqz v1, :cond_41

    const/4 v1, 0x1

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    :goto_42
    invoke-interface {p1, v1}, Lcom/att/iqi/IServiceStateChangeCallback;->onServiceChange(Z)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_45} :catch_46

    .line 480
    goto :goto_55

    .line 478
    :catch_46
    move-exception v1

    .line 479
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v2

    if-eqz v2, :cond_55

    const-string v2, "IQIServiceBroker"

    const-string/jumbo v3, "notifyServiceState failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_55
    :goto_55
    return-void

    .line 473
    :goto_56
    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_16

    throw v2
.end method

.method public shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z
    .registers 5
    .param p1, "metricId"    # Lcom/att/iqi/lib/Metric$ID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/att/iqi/IIQIService;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 296
    :catch_b
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "IQIServiceBroker"

    const-string/jumbo v2, "shouldSubmitMetric failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method public submitMetric(Lcom/att/iqi/lib/Metric;)V
    .registers 5
    .param p1, "metric"    # Lcom/att/iqi/lib/Metric;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/att/iqi/IIQIService;->submitMetric(Lcom/att/iqi/lib/Metric;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 310
    goto :goto_19

    .line 307
    :catch_a
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "IQIServiceBroker"

    const-string/jumbo v2, "submitMetric failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_19
    :goto_19
    return-void
.end method

.method public unregisterMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V
    .registers 6
    .param p1, "metricId"    # Lcom/att/iqi/lib/Metric$ID;
    .param p2, "callback"    # Lcom/att/iqi/IMetricQueryCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/att/iqi/IIQIService;->unregisterMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    .line 349
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$1100(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_2a

    .line 350
    :try_start_10
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    .line 351
    # getter for: Lcom/att/iqi/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1100(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 352
    .local v1, "remoteCallbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/att/iqi/IMetricQueryCallback;>;"
    if-eqz v1, :cond_25

    .line 353
    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 355
    .end local v1    # "remoteCallbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/att/iqi/IMetricQueryCallback;>;"
    :cond_25
    monitor-exit v0

    .line 359
    goto :goto_39

    .line 355
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_27

    .end local p0    # "this":Lcom/att/iqi/IQIServiceBroker$BinderService;
    .end local p1    # "metricId":Lcom/att/iqi/lib/Metric$ID;
    .end local p2    # "callback":Lcom/att/iqi/IMetricQueryCallback;
    :try_start_29
    throw v1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2a} :catch_2a

    .line 356
    .restart local p0    # "this":Lcom/att/iqi/IQIServiceBroker$BinderService;
    .restart local p1    # "metricId":Lcom/att/iqi/lib/Metric$ID;
    .restart local p2    # "callback":Lcom/att/iqi/IMetricQueryCallback;
    :catch_2a
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, "IQIServiceBroker"

    const-string/jumbo v2, "unregisterMetricQueryCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_39
    :goto_39
    return-void
.end method

.method public unregisterMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V
    .registers 6
    .param p1, "metricId"    # Lcom/att/iqi/lib/Metric$ID;
    .param p2, "callback"    # Lcom/att/iqi/IMetricSourcingCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/att/iqi/IIQIService;->unregisterMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    .line 398
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$1200(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_2a

    .line 399
    :try_start_10
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    .line 400
    # getter for: Lcom/att/iqi/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1200(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 401
    .local v1, "remoteCallbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/att/iqi/IMetricSourcingCallback;>;"
    if-eqz v1, :cond_25

    .line 402
    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 404
    .end local v1    # "remoteCallbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/att/iqi/IMetricSourcingCallback;>;"
    :cond_25
    monitor-exit v0

    .line 408
    goto :goto_39

    .line 404
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_27

    .end local p0    # "this":Lcom/att/iqi/IQIServiceBroker$BinderService;
    .end local p1    # "metricId":Lcom/att/iqi/lib/Metric$ID;
    .end local p2    # "callback":Lcom/att/iqi/IMetricSourcingCallback;
    :try_start_29
    throw v1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2a} :catch_2a

    .line 405
    .restart local p0    # "this":Lcom/att/iqi/IQIServiceBroker$BinderService;
    .restart local p1    # "metricId":Lcom/att/iqi/lib/Metric$ID;
    .restart local p2    # "callback":Lcom/att/iqi/IMetricSourcingCallback;
    :catch_2a
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, "IQIServiceBroker"

    const-string/jumbo v2, "unregisterMetricSourcingCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_39
    :goto_39
    return-void
.end method

.method public unregisterProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/att/iqi/IProfileChangedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/att/iqi/IIQIService;->unregisterProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V

    .line 440
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$1300(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    monitor-enter v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_1e

    .line 441
    :try_start_10
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1300(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 442
    monitor-exit v0

    .line 446
    goto :goto_2d

    .line 442
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1b

    .end local p0    # "this":Lcom/att/iqi/IQIServiceBroker$BinderService;
    .end local p1    # "callback":Lcom/att/iqi/IProfileChangedCallback;
    :try_start_1d
    throw v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1e} :catch_1e

    .line 443
    .restart local p0    # "this":Lcom/att/iqi/IQIServiceBroker$BinderService;
    .restart local p1    # "callback":Lcom/att/iqi/IProfileChangedCallback;
    :catch_1e
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "IQIServiceBroker"

    const-string/jumbo v2, "unregisterProfileChangedCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2d
    :goto_2d
    return-void
.end method

.method public unregisterServiceChangedCallback(Lcom/att/iqi/IServiceStateChangeCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/att/iqi/IServiceStateChangeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 487
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mServiceStateChangeList:Landroid/util/ArraySet;
    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$1400(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/ArraySet;

    move-result-object v0

    monitor-enter v0

    .line 488
    :try_start_7
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mServiceStateChangeList:Landroid/util/ArraySet;
    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$1400(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 489
    monitor-exit v0

    .line 490
    return-void

    .line 489
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1
.end method
