.class public Lcom/android/server/backup/internal/BackupHandler;
.super Landroid/os/Handler;
.source "BackupHandler.java"


# static fields
.field public static final MSG_BACKUP_OPERATION_TIMEOUT:I = 0x11

.field public static final MSG_BACKUP_RESTORE_STEP:I = 0x14

.field public static final MSG_FULL_CONFIRMATION_TIMEOUT:I = 0x9

.field public static final MSG_OP_COMPLETE:I = 0x15

.field public static final MSG_REQUEST_BACKUP:I = 0xf

.field public static final MSG_RESTORE_OPERATION_TIMEOUT:I = 0x12

.field public static final MSG_RESTORE_SESSION_TIMEOUT:I = 0x8

.field public static final MSG_RETRY_CLEAR:I = 0xc

.field public static final MSG_RUN_ADB_BACKUP:I = 0x2

.field public static final MSG_RUN_ADB_RESTORE:I = 0xa

.field public static final MSG_RUN_BACKUP:I = 0x1

.field public static final MSG_RUN_CLEAR:I = 0x4

.field public static final MSG_RUN_GET_RESTORE_SETS:I = 0x6

.field public static final MSG_RUN_RESTORE:I = 0x3

.field public static final MSG_SCHEDULE_BACKUP_PACKAGE:I = 0x10

.field public static final MSG_SEP_TIMEOUT:I = 0x65

.field public static final MSG_STOP:I = 0x16


# instance fields
.field private final backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private final mBackupThread:Landroid/os/HandlerThread;

.field volatile mIsStopping:Z


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/HandlerThread;)V
    .registers 5
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "backupThread"    # Landroid/os/HandlerThread;

    .line 96
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    .line 97
    iput-object p2, p0, Lcom/android/server/backup/internal/BackupHandler;->mBackupThread:Landroid/os/HandlerThread;

    .line 98
    iput-object p1, p0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 99
    nop

    .line 100
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    .line 99
    const-string v1, "Timeout parameters cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 102
    return-void
.end method

.method static synthetic lambda$handleMessage$0(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .registers 3
    .param p0, "transportManager"    # Lcom/android/server/backup/TransportManager;
    .param p1, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "caller"    # Ljava/lang/String;

    .line 213
    nop

    .line 214
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 213
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 117
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/internal/BackupHandler;->dispatchMessageInternal(Landroid/os/Message;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 124
    goto :goto_9

    .line 118
    :catch_4
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v1, p0, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    if-eqz v1, :cond_a

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9
    return-void

    .line 122
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_a
    throw v0
.end method

.method dispatchMessageInternal(Landroid/os/Message;)V
    .registers 2
    .param p1, "message"    # Landroid/os/Message;

    .line 129
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 130
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 25
    .param p1, "msg"    # Landroid/os/Message;

    .line 133
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/16 v3, 0x16

    if-ne v0, v3, :cond_1f

    .line 134
    const-string v0, "BackupManagerService"

    const-string v3, "Stopping backup handler"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->quit()V

    .line 136
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->mBackupThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 139
    :cond_1f
    iget-boolean v0, v1, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    if-eqz v0, :cond_24

    .line 141
    return-void

    .line 144
    :cond_24
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v3

    .line 145
    .local v3, "transportManager":Lcom/android/server/backup/TransportManager;
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_3d5

    const/4 v6, 0x2

    if-eq v0, v6, :cond_38e

    const/4 v6, 0x3

    const/16 v7, 0x14

    if-eq v0, v6, :cond_312

    const/4 v6, 0x4

    if-eq v0, v6, :cond_2fc

    const/4 v6, 0x6

    if-eq v0, v6, :cond_216

    const/16 v6, 0xc

    if-eq v0, v6, :cond_207

    const/16 v6, 0x65

    if-eq v0, v6, :cond_1ba

    if-eq v0, v7, :cond_196

    const/16 v6, 0x15

    if-eq v0, v6, :cond_166

    packed-switch v0, :pswitch_data_4f4

    packed-switch v0, :pswitch_data_4fe

    goto/16 :goto_4eb

    .line 399
    :pswitch_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout message received for token="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "BackupManagerService"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v5, v4}, Lcom/android/server/backup/UserBackupManagerService;->handleCancel(IZ)V

    .line 401
    goto/16 :goto_4eb

    .line 502
    :pswitch_79
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 506
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 507
    goto/16 :goto_4eb

    .line 479
    .end local v0    # "pkgName":Ljava/lang/String;
    :pswitch_84
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/BackupParams;

    .line 483
    .local v0, "params":Lcom/android/server/backup/params/BackupParams;
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->setBackupRunning(Z)V

    .line 484
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 486
    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v6, v0, Lcom/android/server/backup/params/BackupParams;->transportClient:Lcom/android/server/backup/transport/TransportClient;

    iget-object v7, v0, Lcom/android/server/backup/params/BackupParams;->dirName:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/backup/params/BackupParams;->kvPackages:Ljava/util/ArrayList;

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/android/server/backup/params/BackupParams;->observer:Landroid/app/backup/IBackupObserver;

    iget-object v11, v0, Lcom/android/server/backup/params/BackupParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v12, v0, Lcom/android/server/backup/params/BackupParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    iget-object v13, v0, Lcom/android/server/backup/params/BackupParams;->fullPackages:Ljava/util/ArrayList;

    const/4 v14, 0x1

    iget-boolean v15, v0, Lcom/android/server/backup/params/BackupParams;->nonIncrementalBackup:Z

    invoke-static/range {v5 .. v15}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->start(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZ)Lcom/android/server/backup/keyvalue/KeyValueBackupTask;

    .line 498
    goto/16 :goto_4eb

    .line 329
    .end local v0    # "params":Lcom/android/server/backup/params/BackupParams;
    :pswitch_af
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/AdbRestoreParams;

    .line 330
    .local v0, "params":Lcom/android/server/backup/params/AdbRestoreParams;
    new-instance v12, Lcom/android/server/backup/restore/PerformAdbRestoreTask;

    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v6, v0, Lcom/android/server/backup/params/AdbRestoreParams;->fd:Landroid/os/ParcelFileDescriptor;

    iget-object v7, v0, Lcom/android/server/backup/params/AdbRestoreParams;->curPassword:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/backup/params/AdbRestoreParams;->encryptPassword:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/backup/params/AdbRestoreParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    iget-object v10, v0, Lcom/android/server/backup/params/AdbRestoreParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v11, v0, Lcom/android/server/backup/params/AdbRestoreParams;->privilegeApp:Z

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    .line 335
    .local v4, "task":Lcom/android/server/backup/restore/PerformAdbRestoreTask;
    new-instance v5, Ljava/lang/Thread;

    const-string v6, "adb-restore"

    invoke-direct {v5, v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 336
    goto/16 :goto_4eb

    .line 422
    .end local v0    # "params":Lcom/android/server/backup/params/AdbRestoreParams;
    .end local v4    # "task":Lcom/android/server/backup/restore/PerformAdbRestoreTask;
    :pswitch_d3
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    .line 423
    :try_start_da
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v0

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/params/AdbParams;

    move-object v5, v0

    .line 425
    .local v5, "params":Lcom/android/server/backup/params/AdbParams;
    if-eqz v5, :cond_10e

    .line 426
    const-string v0, "BackupManagerService"

    const-string v6, "Full backup/restore timed out waiting for user confirmation"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/backup/UserBackupManagerService;->signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V

    .line 432
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v0

    iget v6, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->delete(I)V

    .line 435
    iget-object v0, v5, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_104
    .catchall {:try_start_da .. :try_end_104} :catchall_129

    if-eqz v0, :cond_126

    .line 437
    :try_start_106
    iget-object v0, v5, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v0}, Landroid/app/backup/IFullBackupRestoreObserver;->onTimeout()V
    :try_end_10b
    .catch Landroid/os/RemoteException; {:try_start_106 .. :try_end_10b} :catch_10c
    .catchall {:try_start_106 .. :try_end_10b} :catchall_129

    goto :goto_10d

    .line 438
    :catch_10c
    move-exception v0

    .line 440
    :goto_10d
    goto :goto_126

    .line 443
    :cond_10e
    :try_start_10e
    const-string v0, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t find params for token "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .end local v5    # "params":Lcom/android/server/backup/params/AdbParams;
    :cond_126
    :goto_126
    monitor-exit v4

    .line 446
    goto/16 :goto_4eb

    .line 445
    :catchall_129
    move-exception v0

    monitor-exit v4
    :try_end_12b
    .catchall {:try_start_10e .. :try_end_12b} :catchall_129

    throw v0

    .line 405
    :pswitch_12c
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    monitor-enter v4

    .line 406
    :try_start_12f
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v0

    if-eqz v0, :cond_160

    .line 411
    const-string v0, "BackupManagerService"

    const-string v5, "Restore session timed out; aborting"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/restore/ActiveRestoreSession;->markTimedOut()V

    .line 413
    new-instance v0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;

    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v7, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 415
    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v7

    invoke-direct {v0, v5, v6, v7}, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/restore/ActiveRestoreSession;)V

    .line 413
    invoke-virtual {v1, v0}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 417
    :cond_160
    monitor-exit v4

    .line 418
    goto/16 :goto_4eb

    .line 417
    :catchall_163
    move-exception v0

    monitor-exit v4
    :try_end_165
    .catchall {:try_start_12f .. :try_end_165} :catchall_163

    throw v0

    .line 265
    :cond_166
    :try_start_166
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 267
    .local v0, "taskWithResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupRestoreTask;Ljava/lang/Long;>;"
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/backup/BackupRestoreTask;

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/android/server/backup/BackupRestoreTask;->operationComplete(J)V
    :try_end_179
    .catch Ljava/lang/ClassCastException; {:try_start_166 .. :try_end_179} :catch_17b

    .line 270
    .end local v0    # "taskWithResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupRestoreTask;Ljava/lang/Long;>;"
    goto/16 :goto_4eb

    .line 268
    :catch_17b
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid completion in flight, obj="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BackupManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v0    # "e":Ljava/lang/ClassCastException;
    goto/16 :goto_4eb

    .line 252
    :cond_196
    :try_start_196
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/BackupRestoreTask;

    .line 256
    .local v0, "task":Lcom/android/server/backup/BackupRestoreTask;
    invoke-interface {v0}, Lcom/android/server/backup/BackupRestoreTask;->execute()V
    :try_end_19d
    .catch Ljava/lang/ClassCastException; {:try_start_196 .. :try_end_19d} :catch_19f

    .line 259
    .end local v0    # "task":Lcom/android/server/backup/BackupRestoreTask;
    goto/16 :goto_4eb

    .line 257
    :catch_19f
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid backup/restore task in flight, obj="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BackupManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v0    # "e":Ljava/lang/ClassCastException;
    goto/16 :goto_4eb

    .line 452
    :cond_1ba
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/server/backup/params/AdbParams;

    .line 454
    .restart local v5    # "params":Lcom/android/server/backup/params/AdbParams;
    if-eqz v5, :cond_1fd

    .line 455
    const-string v0, "BackupManagerService"

    const-string/jumbo v6, "sep backup/restore timed out waiting for success"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/backup/UserBackupManagerService;->signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V

    .line 459
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1f0

    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getSepWakeLock()Z

    move-result v0

    if-eqz v0, :cond_1f0

    .line 460
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 461
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock(Z)V

    .line 465
    :cond_1f0
    iget-object v0, v5, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v0, :cond_4eb

    .line 467
    :try_start_1f4
    iget-object v0, v5, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v0}, Landroid/app/backup/IFullBackupRestoreObserver;->onTimeout()V
    :try_end_1f9
    .catch Landroid/os/RemoteException; {:try_start_1f4 .. :try_end_1f9} :catch_1fa

    goto :goto_1fb

    .line 468
    :catch_1fa
    move-exception v0

    .line 470
    :goto_1fb
    goto/16 :goto_4eb

    .line 473
    :cond_1fd
    const-string v0, "BackupManagerService"

    const-string/jumbo v4, "params is null"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    goto/16 :goto_4eb

    .line 353
    .end local v5    # "params":Lcom/android/server/backup/params/AdbParams;
    :cond_207
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/ClearRetryParams;

    .line 354
    .local v0, "params":Lcom/android/server/backup/params/ClearRetryParams;
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, v0, Lcom/android/server/backup/params/ClearRetryParams;->transportName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/backup/params/ClearRetryParams;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    goto/16 :goto_4eb

    .line 360
    .end local v0    # "params":Lcom/android/server/backup/params/ClearRetryParams;
    :cond_216
    const/4 v5, 0x0

    .line 361
    .local v5, "sets":[Landroid/app/backup/RestoreSet;
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/server/backup/params/RestoreGetSetsParams;

    .line 362
    .local v6, "params":Lcom/android/server/backup/params/RestoreGetSetsParams;
    const-string v7, "BH/MSG_RUN_GET_RESTORE_SETS"

    .line 364
    .local v7, "callerLogString":Ljava/lang/String;
    const/16 v8, 0x8

    :try_start_220
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->transportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 365
    invoke-virtual {v0, v7}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    move-object v9, v0

    .line 366
    .local v9, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v9}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v0

    move-object v5, v0

    .line 368
    iget-object v10, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    monitor-enter v10
    :try_end_22f
    .catch Ljava/lang/Exception; {:try_start_220 .. :try_end_22f} :catch_284
    .catchall {:try_start_220 .. :try_end_22f} :catchall_281

    .line 369
    :try_start_22f
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    invoke-virtual {v0, v5}, Lcom/android/server/backup/restore/ActiveRestoreSession;->setRestoreSets([Landroid/app/backup/RestoreSet;)V

    .line 370
    monitor-exit v10
    :try_end_235
    .catchall {:try_start_22f .. :try_end_235} :catchall_27e

    .line 371
    if-nez v5, :cond_23e

    .line 372
    const/16 v0, 0xb0f

    :try_start_239
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_23e
    .catch Ljava/lang/Exception; {:try_start_239 .. :try_end_23e} :catch_284
    .catchall {:try_start_239 .. :try_end_23e} :catchall_281

    .line 377
    .end local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_23e
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_26c

    .line 379
    :try_start_242
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-interface {v0, v5}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_247
    .catch Landroid/os/RemoteException; {:try_start_242 .. :try_end_247} :catch_264
    .catch Ljava/lang/Exception; {:try_start_242 .. :try_end_247} :catch_248

    goto :goto_26c

    .line 382
    :catch_248
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_24e
    const-string v9, "Restore observer threw: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "BackupManagerService"

    invoke-static {v9, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26c

    .line 380
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_264
    move-exception v0

    .line 381
    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "BackupManagerService"

    const-string v9, "Unable to report listing to observer"

    invoke-static {v4, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_26c
    :goto_26c
    invoke-virtual {v1, v8}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 389
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 390
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v9

    .line 389
    invoke-virtual {v1, v8, v9, v10}, Lcom/android/server/backup/internal/BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 392
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v0, v7}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 393
    goto :goto_2ba

    .line 370
    .restart local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_27e
    move-exception v0

    :try_start_27f
    monitor-exit v10
    :try_end_280
    .catchall {:try_start_27f .. :try_end_280} :catchall_27e

    .end local v3    # "transportManager":Lcom/android/server/backup/TransportManager;
    .end local v5    # "sets":[Landroid/app/backup/RestoreSet;
    .end local v6    # "params":Lcom/android/server/backup/params/RestoreGetSetsParams;
    .end local v7    # "callerLogString":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/backup/internal/BackupHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_280
    throw v0
    :try_end_281
    .catch Ljava/lang/Exception; {:try_start_280 .. :try_end_281} :catch_284
    .catchall {:try_start_280 .. :try_end_281} :catchall_281

    .line 377
    .end local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v3    # "transportManager":Lcom/android/server/backup/TransportManager;
    .restart local v5    # "sets":[Landroid/app/backup/RestoreSet;
    .restart local v6    # "params":Lcom/android/server/backup/params/RestoreGetSetsParams;
    .restart local v7    # "callerLogString":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/backup/internal/BackupHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_281
    move-exception v0

    move-object v4, v0

    goto :goto_2bc

    .line 374
    :catch_284
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    :try_start_285
    const-string v4, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error from transport getting set list: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29f
    .catchall {:try_start_285 .. :try_end_29f} :catchall_281

    .line 377
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_26c

    .line 379
    :try_start_2a4
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-interface {v0, v5}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_2a9
    .catch Landroid/os/RemoteException; {:try_start_2a4 .. :try_end_2a9} :catch_2b1
    .catch Ljava/lang/Exception; {:try_start_2a4 .. :try_end_2a9} :catch_2aa

    goto :goto_26c

    .line 382
    :catch_2aa
    move-exception v0

    .line 383
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_24e

    .line 380
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2b1
    move-exception v0

    .line 381
    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "BackupManagerService"

    const-string v9, "Unable to report listing to observer"

    invoke-static {v4, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "re":Landroid/os/RemoteException;
    goto :goto_26c

    .line 394
    :goto_2ba
    goto/16 :goto_4eb

    .line 377
    :goto_2bc
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_2ea

    .line 379
    :try_start_2c0
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-interface {v0, v5}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_2c5
    .catch Landroid/os/RemoteException; {:try_start_2c0 .. :try_end_2c5} :catch_2e2
    .catch Ljava/lang/Exception; {:try_start_2c0 .. :try_end_2c5} :catch_2c6

    goto :goto_2ea

    .line 382
    :catch_2c6
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Restore observer threw: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "BackupManagerService"

    invoke-static {v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2ea

    .line 380
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2e2
    move-exception v0

    .line 381
    .local v0, "re":Landroid/os/RemoteException;
    const-string v9, "BackupManagerService"

    const-string v10, "Unable to report listing to observer"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2ea
    :goto_2ea
    invoke-virtual {v1, v8}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 389
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 390
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v9

    .line 389
    invoke-virtual {v1, v8, v9, v10}, Lcom/android/server/backup/internal/BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 392
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v0, v7}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 393
    throw v4

    .line 340
    .end local v5    # "sets":[Landroid/app/backup/RestoreSet;
    .end local v6    # "params":Lcom/android/server/backup/params/RestoreGetSetsParams;
    .end local v7    # "callerLogString":Ljava/lang/String;
    :cond_2fc
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/ClearParams;

    .line 341
    .local v0, "params":Lcom/android/server/backup/params/ClearParams;
    new-instance v4, Lcom/android/server/backup/internal/PerformClearTask;

    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v6, v0, Lcom/android/server/backup/params/ClearParams;->transportClient:Lcom/android/server/backup/transport/TransportClient;

    iget-object v7, v0, Lcom/android/server/backup/params/ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v0, Lcom/android/server/backup/params/ClearParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/server/backup/internal/PerformClearTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    .line 347
    .local v4, "task":Ljava/lang/Runnable;
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 348
    goto/16 :goto_4eb

    .line 290
    .end local v0    # "params":Lcom/android/server/backup/params/ClearParams;
    .end local v4    # "task":Ljava/lang/Runnable;
    :cond_312
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/server/backup/params/RestoreParams;

    .line 291
    .local v4, "params":Lcom/android/server/backup/params/RestoreParams;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_RUN_RESTORE observer="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "BackupManagerService"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v9, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v10, v4, Lcom/android/server/backup/params/RestoreParams;->transportClient:Lcom/android/server/backup/transport/TransportClient;

    iget-object v11, v4, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    iget-object v12, v4, Lcom/android/server/backup/params/RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-wide v13, v4, Lcom/android/server/backup/params/RestoreParams;->token:J

    iget-object v15, v4, Lcom/android/server/backup/params/RestoreParams;->packageInfo:Landroid/content/pm/PackageInfo;

    iget v6, v4, Lcom/android/server/backup/params/RestoreParams;->pmToken:I

    iget-boolean v8, v4, Lcom/android/server/backup/params/RestoreParams;->isSystemRestore:Z

    iget-object v7, v4, Lcom/android/server/backup/params/RestoreParams;->filterSet:[Ljava/lang/String;

    iget-object v5, v4, Lcom/android/server/backup/params/RestoreParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    move/from16 v17, v8

    move-object v8, v0

    move/from16 v16, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v5

    invoke-direct/range {v8 .. v19}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    move-object v5, v0

    .line 306
    .local v5, "task":Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v6

    monitor-enter v6

    .line 307
    :try_start_359
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->isRestoreInProgress()Z

    move-result v0

    if-eqz v0, :cond_372

    .line 309
    const-string v0, "BackupManagerService"

    const-string v7, "Restore in progress, queueing."

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_388

    .line 316
    :cond_372
    const-string v0, "BackupManagerService"

    const-string v7, "Starting restore."

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/android/server/backup/UserBackupManagerService;->setRestoreInProgress(Z)V

    .line 319
    const/16 v0, 0x14

    invoke-virtual {v1, v0, v5}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 320
    .local v0, "restoreMsg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 322
    .end local v0    # "restoreMsg":Landroid/os/Message;
    :goto_388
    monitor-exit v6

    .line 323
    goto/16 :goto_4eb

    .line 322
    :catchall_38b
    move-exception v0

    monitor-exit v6
    :try_end_38d
    .catchall {:try_start_359 .. :try_end_38d} :catchall_38b

    throw v0

    .line 277
    .end local v4    # "params":Lcom/android/server/backup/params/RestoreParams;
    .end local v5    # "task":Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
    :cond_38e
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/AdbBackupParams;

    .line 278
    .local v0, "params":Lcom/android/server/backup/params/AdbBackupParams;
    new-instance v22, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;

    move-object/from16 v4, v22

    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v6, v0, Lcom/android/server/backup/params/AdbBackupParams;->fd:Landroid/os/ParcelFileDescriptor;

    iget-object v7, v0, Lcom/android/server/backup/params/AdbBackupParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    iget-boolean v8, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeApks:Z

    iget-boolean v9, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeObbs:Z

    iget-boolean v10, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeShared:Z

    iget-boolean v11, v0, Lcom/android/server/backup/params/AdbBackupParams;->doWidgets:Z

    iget-object v12, v0, Lcom/android/server/backup/params/AdbBackupParams;->curPassword:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/backup/params/AdbBackupParams;->encryptPassword:Ljava/lang/String;

    iget-boolean v14, v0, Lcom/android/server/backup/params/AdbBackupParams;->allApps:Z

    iget-boolean v15, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeSystem:Z

    iget-boolean v2, v0, Lcom/android/server/backup/params/AdbBackupParams;->doCompress:Z

    move/from16 v16, v2

    iget-boolean v2, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeKeyValue:Z

    move/from16 v17, v2

    iget-object v2, v0, Lcom/android/server/backup/params/AdbBackupParams;->packages:[Ljava/lang/String;

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/android/server/backup/params/AdbBackupParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v2

    iget-boolean v2, v0, Lcom/android/server/backup/params/AdbBackupParams;->privilegeApp:Z

    move/from16 v20, v2

    iget v2, v0, Lcom/android/server/backup/params/AdbBackupParams;->extraFlag:I

    move/from16 v21, v2

    invoke-direct/range {v4 .. v21}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;ZI)V

    move-object/from16 v2, v22

    .line 285
    .local v2, "task":Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
    new-instance v4, Ljava/lang/Thread;

    const-string v5, "adb-backup"

    invoke-direct {v4, v2, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 286
    goto/16 :goto_4eb

    .line 147
    .end local v0    # "params":Lcom/android/server/backup/params/AdbBackupParams;
    .end local v2    # "task":Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
    :cond_3d5
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->setLastBackupPass(J)V

    .line 149
    const-string v2, "BH/MSG_RUN_BACKUP"

    .line 150
    .local v2, "callerLogString":Ljava/lang/String;
    nop

    .line 151
    invoke-virtual {v3, v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v15

    .line 153
    .local v15, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    const/4 v0, 0x0

    if-eqz v15, :cond_3ed

    .line 154
    invoke-virtual {v15, v2}, Lcom/android/server/backup/transport/TransportClient;->connect(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v5

    goto :goto_3ee

    .line 155
    :cond_3ed
    move-object v5, v0

    :goto_3ee
    move-object/from16 v16, v5

    .line 156
    .local v16, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v16, :cond_401

    .line 157
    if-eqz v15, :cond_3f8

    .line 158
    nop

    .line 159
    invoke-virtual {v3, v15, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 161
    :cond_3f8
    const-string v0, "BackupManagerService"

    const-string v4, "Backup requested but no transport available"

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    goto/16 :goto_4eb

    .line 166
    :cond_401
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v5

    .line 167
    .local v14, "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->getJournal()Lcom/android/server/backup/DataChangedJournal;

    move-result-object v17

    .line 168
    .local v17, "oldJournal":Lcom/android/server/backup/DataChangedJournal;
    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 170
    :try_start_414
    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->isBackupRunning()Z

    move-result v6
    :try_end_41a
    .catchall {:try_start_414 .. :try_end_41a} :catchall_4ec

    if-eqz v6, :cond_42b

    .line 171
    :try_start_41c
    const-string v0, "BackupManagerService"

    const-string v4, "Backup time but one already running"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    monitor-exit v5
    :try_end_424
    .catchall {:try_start_41c .. :try_end_424} :catchall_425

    return-void

    .line 200
    :catchall_425
    move-exception v0

    move-object/from16 v20, v14

    move-object v4, v15

    goto/16 :goto_4f0

    .line 176
    :cond_42b
    :try_start_42b
    const-string v6, "BackupManagerService"

    const-string v7, "Running a backup pass"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->setBackupRunning(Z)V

    .line 182
    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 187
    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6
    :try_end_44b
    .catchall {:try_start_42b .. :try_end_44b} :catchall_4ec

    if-lez v6, :cond_483

    .line 188
    :try_start_44d
    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_45b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_46e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/backup/keyvalue/BackupRequest;

    .line 189
    .local v7, "b":Lcom/android/server/backup/keyvalue/BackupRequest;
    iget-object v8, v7, Lcom/android/server/backup/keyvalue/BackupRequest;->packageName:Ljava/lang/String;

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    nop

    .end local v7    # "b":Lcom/android/server/backup/keyvalue/BackupRequest;
    goto :goto_45b

    .line 192
    :cond_46e
    const-string v6, "BackupManagerService"

    const-string v7, "clearing pending backups"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 197
    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6, v0}, Lcom/android/server/backup/UserBackupManagerService;->setJournal(Lcom/android/server/backup/DataChangedJournal;)V
    :try_end_483
    .catchall {:try_start_44d .. :try_end_483} :catchall_425

    .line 200
    :cond_483
    :try_start_483
    monitor-exit v5
    :try_end_484
    .catchall {:try_start_483 .. :try_end_484} :catchall_4ec

    .line 207
    const/16 v18, 0x1

    .line 208
    .local v18, "staged":Z
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4bf

    .line 211
    :try_start_48c
    new-instance v12, Lcom/android/server/backup/internal/-$$Lambda$BackupHandler$TJcRazGYTaUxjeiX6mPLlipfZUI;

    invoke-direct {v12, v3, v15}, Lcom/android/server/backup/internal/-$$Lambda$BackupHandler$TJcRazGYTaUxjeiX6mPLlipfZUI;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;)V

    .line 215
    .local v12, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 218
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 224
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13
    :try_end_49d
    .catch Ljava/lang/Exception; {:try_start_48c .. :try_end_49d} :catch_4b1

    const/4 v0, 0x0

    const/16 v19, 0x0

    .line 215
    move-object v6, v15

    move-object v8, v14

    move-object/from16 v9, v17

    move-object/from16 v20, v14

    .end local v14    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v20, "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v14, v0

    move-object v4, v15

    .end local v15    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .local v4, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    move/from16 v15, v19

    :try_start_4aa
    invoke-static/range {v5 .. v15}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->start(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZ)Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    :try_end_4ad
    .catch Ljava/lang/Exception; {:try_start_4aa .. :try_end_4ad} :catch_4af

    .line 233
    nop

    .end local v12    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    goto :goto_4cb

    .line 227
    :catch_4af
    move-exception v0

    goto :goto_4b5

    .end local v4    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .end local v20    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    :catch_4b1
    move-exception v0

    move-object/from16 v20, v14

    move-object v4, v15

    .line 230
    .end local v14    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .restart local v20    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_4b5
    const-string v5, "BackupManagerService"

    const-string v6, "Transport became unavailable attempting backup or error initializing backup task"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    const/16 v18, 0x0

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_4cb

    .line 235
    .end local v4    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .end local v20    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    :cond_4bf
    move-object/from16 v20, v14

    move-object v4, v15

    .end local v14    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .restart local v4    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .restart local v20    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "BackupManagerService"

    const-string v5, "Backup requested but nothing pending"

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/16 v18, 0x0

    .line 239
    :goto_4cb
    if-nez v18, :cond_4eb

    .line 240
    invoke-virtual {v3, v4, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 242
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 243
    :try_start_4d7
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/server/backup/UserBackupManagerService;->setBackupRunning(Z)V

    .line 244
    monitor-exit v5
    :try_end_4de
    .catchall {:try_start_4d7 .. :try_end_4de} :catchall_4e8

    .line 245
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    goto :goto_4eb

    .line 244
    :catchall_4e8
    move-exception v0

    :try_start_4e9
    monitor-exit v5
    :try_end_4ea
    .catchall {:try_start_4e9 .. :try_end_4ea} :catchall_4e8

    throw v0

    .line 510
    .end local v2    # "callerLogString":Ljava/lang/String;
    .end local v4    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .end local v16    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v17    # "oldJournal":Lcom/android/server/backup/DataChangedJournal;
    .end local v18    # "staged":Z
    .end local v20    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4eb
    :goto_4eb
    return-void

    .line 200
    .restart local v2    # "callerLogString":Ljava/lang/String;
    .restart local v14    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .restart local v16    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v17    # "oldJournal":Lcom/android/server/backup/DataChangedJournal;
    :catchall_4ec
    move-exception v0

    move-object/from16 v20, v14

    move-object v4, v15

    .end local v14    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .restart local v4    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .restart local v20    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_4f0
    :try_start_4f0
    monitor-exit v5
    :try_end_4f1
    .catchall {:try_start_4f0 .. :try_end_4f1} :catchall_4f2

    throw v0

    :catchall_4f2
    move-exception v0

    goto :goto_4f0

    :pswitch_data_4f4
    .packed-switch 0x8
        :pswitch_12c
        :pswitch_d3
        :pswitch_af
    .end packed-switch

    :pswitch_data_4fe
    .packed-switch 0xf
        :pswitch_84
        :pswitch_79
        :pswitch_54
        :pswitch_54
    .end packed-switch
.end method

.method public stop()V
    .registers 2

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    .line 111
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 112
    return-void
.end method
