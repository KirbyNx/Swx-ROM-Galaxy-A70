.class final Lcom/android/server/aod/AODManagerService$BinderService;
.super Lcom/samsung/android/aod/IAODManager$Stub;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .registers 2

    .line 1197
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Lcom/samsung/android/aod/IAODManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p2, "x1"    # Lcom/android/server/aod/AODManagerService$1;

    .line 1197
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService$BinderService;-><init>(Lcom/android/server/aod/AODManagerService;)V

    return-void
.end method

.method private enforceShell()V
    .registers 3

    .line 1472
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService$BinderService;->isCallerShell()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1475
    return-void

    .line 1473
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isCallerShell()Z
    .registers 3

    .line 1467
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1468
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_d

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x1

    :goto_e
    return v1
.end method


# virtual methods
.method public acquireDoze(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1416
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUidOrSystemApp()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3300(Lcom/android/server/aod/AODManagerService;)V

    .line 1417
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1418
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1419
    .local v7, "pid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1421
    .local v8, "ident":J
    :try_start_11
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, v0

    move v6, v7

    # invokes: Lcom/android/server/aod/AODManagerService;->acquireDozeInternal(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/aod/AODManagerService;->access$4400(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_20

    .line 1423
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1424
    nop

    .line 1425
    return-void

    .line 1423
    :catchall_20
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1424
    throw v1
.end method

.method public addLogText(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1349
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUid()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3000(Lcom/android/server/aod/AODManagerService;)V

    .line 1350
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1352
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->addLogTextInternal(Ljava/util/List;)V
    invoke-static {v2, p1}, Lcom/android/server/aod/AODManagerService;->access$3800(Lcom/android/server/aod/AODManagerService;Ljava/util/List;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    .line 1354
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1355
    nop

    .line 1356
    return-void

    .line 1354
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1355
    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1451
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$1700(Lcom/android/server/aod/AODManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3b

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump AODManagerService from from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " without permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1453
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1456
    return-void

    .line 1458
    :cond_3b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1460
    .local v0, "ident":J
    :try_start_3f
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    invoke-static {v2, p2}, Lcom/android/server/aod/AODManagerService;->access$4700(Lcom/android/server/aod/AODManagerService;Ljava/io/PrintWriter;)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_49

    .line 1462
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1463
    nop

    .line 1464
    return-void

    .line 1462
    :catchall_49
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1463
    throw v2
.end method

.method public getActiveImageInfo()Ljava/lang/String;
    .registers 4

    .line 1223
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1225
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->getActiveImageInfoInternal()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$2800(Lcom/android/server/aod/AODManagerService;)Ljava/lang/String;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1227
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1225
    return-object v2

    .line 1227
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1228
    throw v2
.end method

.method public isAODState()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1233
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1235
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$2900(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/aod/AODSettingHelper;->isAODShowState()Z

    move-result v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 1237
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1235
    return v2

    .line 1237
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1238
    throw v2
.end method

.method public isSViewCoverBrightnessHigh()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1291
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUid()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3000(Lcom/android/server/aod/AODManagerService;)V

    .line 1292
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1294
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mCoverController:Lcom/android/server/aod/AODSCoverController;
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$2000(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODSCoverController;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mCoverController:Lcom/android/server/aod/AODSCoverController;
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$2000(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODSCoverController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/aod/AODSCoverController;->isSViewCoverBrightnessHigh()Z

    move-result v2
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_24

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    .line 1296
    :goto_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1294
    return v2

    .line 1296
    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1297
    throw v2
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 19
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1481
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService$BinderService;->enforceShell()V

    .line 1482
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1484
    .local v1, "origId":J
    :try_start_7
    new-instance v3, Lcom/android/server/aod/AODManagerShellCommand;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_27

    move-object v11, p0

    :try_start_a
    iget-object v0, v11, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$1700(Lcom/android/server/aod/AODManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/server/aod/AODManagerShellCommand;-><init>(Landroid/content/Context;)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/aod/AODManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_25

    .line 1487
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1488
    nop

    .line 1489
    return-void

    .line 1487
    :catchall_25
    move-exception v0

    goto :goto_29

    :catchall_27
    move-exception v0

    move-object v11, p0

    :goto_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1488
    throw v0
.end method

.method public readyToScreenTurningOn()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1361
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUid()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3000(Lcom/android/server/aod/AODManagerService;)V

    .line 1362
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1364
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->readyToScreenTurningOnInternal()V
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$3900(Lcom/android/server/aod/AODManagerService;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    .line 1366
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1367
    nop

    .line 1368
    return-void

    .line 1366
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1367
    throw v2
.end method

.method public registerAODDozeCallback(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1394
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUid()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3000(Lcom/android/server/aod/AODManagerService;)V

    .line 1395
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1397
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->registerAODDozeCallbackInternal(Landroid/os/IBinder;)V
    invoke-static {v2, p1}, Lcom/android/server/aod/AODManagerService;->access$4200(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    .line 1399
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1400
    nop

    .line 1401
    return-void

    .line 1399
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1400
    throw v2
.end method

.method public registerAODListener(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1372
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUid()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3000(Lcom/android/server/aod/AODManagerService;)V

    .line 1373
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1375
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->registerAODListenerInternal(Landroid/os/IBinder;)V
    invoke-static {v2, p1}, Lcom/android/server/aod/AODManagerService;->access$4000(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    .line 1377
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1378
    nop

    .line 1379
    return-void

    .line 1377
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1378
    throw v2
.end method

.method public releaseDoze(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1429
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUidOrSystemApp()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3300(Lcom/android/server/aod/AODManagerService;)V

    .line 1430
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1432
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->releaseDozeInternal(Landroid/os/IBinder;)V
    invoke-static {v2, p1}, Lcom/android/server/aod/AODManagerService;->access$4500(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    .line 1434
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1435
    nop

    .line 1436
    return-void

    .line 1434
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1435
    throw v2
.end method

.method public requestAODToast(Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "toast"    # Lcom/samsung/android/aod/AODToast;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1440
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUidOrSystemApp()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3300(Lcom/android/server/aod/AODManagerService;)V

    .line 1441
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1443
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->requestAODToastInternal(Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V
    invoke-static {v2, p1, p2}, Lcom/android/server/aod/AODManagerService;->access$4600(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    .line 1445
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1446
    nop

    .line 1447
    return-void

    .line 1445
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1446
    throw v2
.end method

.method public requestExpandNotificationPanel(Landroid/service/notification/StatusBarNotification;)V
    .registers 5
    .param p1, "statusBarNotification"    # Landroid/service/notification/StatusBarNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1302
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUid()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3000(Lcom/android/server/aod/AODManagerService;)V

    .line 1303
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1305
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->requestExpandNotificationPanelInternal(Landroid/service/notification/StatusBarNotification;)V
    invoke-static {v2, p1}, Lcom/android/server/aod/AODManagerService;->access$3500(Lcom/android/server/aod/AODManagerService;Landroid/service/notification/StatusBarNotification;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    .line 1307
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1308
    nop

    .line 1309
    return-void

    .line 1307
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1308
    throw v2
.end method

.method public setLiveClockCommand(III[I)I
    .registers 12
    .param p1, "nodeType"    # I
    .param p2, "cmd"    # I
    .param p3, "dataSize"    # I
    .param p4, "dataArray"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1331
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1332
    .local v0, "ident":J
    const/4 v2, -0x1

    .line 1333
    .local v2, "result":I
    if-nez p4, :cond_12

    .line 1334
    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "setLiveClockCommand dataArray is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    return v2

    .line 1338
    :cond_12
    :try_start_12
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->setLiveClockCommandInternal(III[I)I
    invoke-static {v3, p1, p2, p3, p4}, Lcom/android/server/aod/AODManagerService;->access$3700(Lcom/android/server/aod/AODManagerService;III[I)I

    move-result v3
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_20
    .catchall {:try_start_12 .. :try_end_18} :catchall_1e

    move v2, v3

    .line 1342
    nop

    :goto_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1343
    goto :goto_3b

    .line 1342
    :catchall_1e
    move-exception v3

    goto :goto_3c

    .line 1339
    :catch_20
    move-exception v3

    .line 1340
    .local v3, "e":Ljava/lang/Exception;
    :try_start_21
    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed setLiveClockCommand = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_21 .. :try_end_39} :catchall_1e

    .line 1342
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_1a

    .line 1344
    :goto_3b
    return v2

    .line 1342
    :goto_3c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1343
    throw v3
.end method

.method public setLiveClockImage(II[BLjava/lang/String;)I
    .registers 12
    .param p1, "nodeType"    # I
    .param p2, "clockType"    # I
    .param p3, "img_buf"    # [B
    .param p4, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1313
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1314
    .local v0, "ident":J
    const/4 v2, -0x1

    .line 1315
    .local v2, "result":I
    if-nez p3, :cond_12

    .line 1316
    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "setLiveClockImage img_buf is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    return v2

    .line 1320
    :cond_12
    :try_start_12
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->setLiveClockImageInternal(II[BLjava/lang/String;)I
    invoke-static {v3, p1, p2, p3, p4}, Lcom/android/server/aod/AODManagerService;->access$3600(Lcom/android/server/aod/AODManagerService;II[BLjava/lang/String;)I

    move-result v3
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_20
    .catchall {:try_start_12 .. :try_end_18} :catchall_1e

    move v2, v3

    .line 1324
    nop

    :goto_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1325
    goto :goto_3b

    .line 1324
    :catchall_1e
    move-exception v3

    goto :goto_3c

    .line 1321
    :catch_20
    move-exception v3

    .line 1322
    .local v3, "e":Ljava/lang/Exception;
    :try_start_21
    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed setLiveClockImage = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_21 .. :try_end_39} :catchall_1e

    .line 1324
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_1a

    .line 1326
    :goto_3b
    return v2

    .line 1324
    :goto_3c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1325
    throw v3
.end method

.method public setLiveClockInfo(IJJJJJJJJ)I
    .registers 41
    .param p1, "type"    # I
    .param p2, "en"    # J
    .param p4, "interval"    # J
    .param p6, "hour"    # J
    .param p8, "min"    # J
    .param p10, "second"    # J
    .param p12, "ms"    # J
    .param p14, "pos_x"    # J
    .param p16, "pos_y"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1201
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1202
    .local v1, "ident":J
    const/4 v3, -0x1

    .line 1204
    .local v3, "result":I
    move-object/from16 v4, p0

    :try_start_7
    iget-object v5, v4, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move/from16 v6, p1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    move-wide/from16 v13, p8

    move-wide/from16 v15, p10

    move-wide/from16 v17, p12

    move-wide/from16 v19, p14

    move-wide/from16 v21, p16

    # invokes: Lcom/android/server/aod/AODManagerService;->setLiveClockInfoInternal(IJJJJJJJJ)I
    invoke-static/range {v5 .. v22}, Lcom/android/server/aod/AODManagerService;->access$2600(Lcom/android/server/aod/AODManagerService;IJJJJJJJJ)I

    move-result v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_24

    .line 1206
    .end local v3    # "result":I
    .local v0, "result":I
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1207
    nop

    .line 1208
    return v0

    .line 1206
    .end local v0    # "result":I
    .restart local v3    # "result":I
    :catchall_24
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1207
    throw v0
.end method

.method public setLiveClockNeedle([B)V
    .registers 5
    .param p1, "img_buf"    # [B

    .line 1213
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1215
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->setLiveClockNeedleInternal([B)V
    invoke-static {v2, p1}, Lcom/android/server/aod/AODManagerService;->access$2700(Lcom/android/server/aod/AODManagerService;[B)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 1217
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1218
    nop

    .line 1219
    return-void

    .line 1217
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1218
    throw v2
.end method

.method public unregisterAODDozeCallback(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1405
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUid()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3000(Lcom/android/server/aod/AODManagerService;)V

    .line 1406
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1408
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->unregisterAODDozeCallbackInternal(Landroid/os/IBinder;)V
    invoke-static {v2, p1}, Lcom/android/server/aod/AODManagerService;->access$4300(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    .line 1410
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1411
    nop

    .line 1412
    return-void

    .line 1410
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1411
    throw v2
.end method

.method public unregisterAODListener(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1383
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUid()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3000(Lcom/android/server/aod/AODManagerService;)V

    .line 1384
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1386
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->unregisterAODListenerInternal(Landroid/os/IBinder;)V
    invoke-static {v2, p1}, Lcom/android/server/aod/AODManagerService;->access$4100(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    .line 1388
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1389
    nop

    .line 1390
    return-void

    .line 1388
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1389
    throw v2
.end method

.method public updateAODTspRect(IIII)V
    .registers 14
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1278
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUidOrSystemApp()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3300(Lcom/android/server/aod/AODManagerService;)V

    .line 1279
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1280
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1282
    .local v7, "ident":J
    :try_start_d
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, v0

    # invokes: Lcom/android/server/aod/AODManagerService;->updateAODTspRectInternal(IIIII)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/aod/AODManagerService;->access$3400(Lcom/android/server/aod/AODManagerService;IIIII)V
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_1c

    .line 1284
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1285
    nop

    .line 1286
    return-void

    .line 1284
    :catchall_1c
    move-exception v1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1285
    throw v1
.end method

.method public writeAODCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/String;
    .param p4, "arg2"    # Ljava/lang/String;
    .param p5, "arg3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1243
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUid()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$3000(Lcom/android/server/aod/AODManagerService;)V

    .line 1244
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1256
    .local v0, "ident":J
    const/4 v2, 0x0

    .line 1257
    .local v2, "needToUpdateSingeTouchMode":Z
    :try_start_a
    sget-boolean v3, Lcom/android/server/aod/AODManagerService;->SUPPORT_DUAL_DISPLAY:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_26

    .line 1258
    const-string v3, "/sys/class/sec/tsp1/input/enabled"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string v3, "/sys/class/sec/tsp2/input/enabled"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_23

    :cond_21
    move v3, v4

    goto :goto_24

    :cond_23
    :goto_23
    move v3, v5

    :goto_24
    move v2, v3

    goto :goto_2d

    .line 1260
    :cond_26
    const-string v3, "/sys/class/sec/tsp/input/enabled"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v2, v3

    .line 1263
    :goto_2d
    if-eqz v2, :cond_42

    .line 1264
    const-string v3, "0"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1265
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # setter for: Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z
    invoke-static {v3, v4}, Lcom/android/server/aod/AODManagerService;->access$3102(Lcom/android/server/aod/AODManagerService;Z)Z

    goto :goto_42

    .line 1267
    :cond_3d
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # setter for: Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z
    invoke-static {v3, v5}, Lcom/android/server/aod/AODManagerService;->access$3102(Lcom/android/server/aod/AODManagerService;Z)Z

    .line 1270
    :cond_42
    :goto_42
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    # invokes: Lcom/android/server/aod/AODManagerService;->writeAODCommandInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v3 .. v8}, Lcom/android/server/aod/AODManagerService;->access$3200(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_a .. :try_end_4c} :catchall_51

    .line 1272
    .end local v2    # "needToUpdateSingeTouchMode":Z
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1273
    nop

    .line 1274
    return-void

    .line 1272
    :catchall_51
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1273
    throw v2
.end method
