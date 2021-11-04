.class public Lcom/android/server/recoverysystem/RecoverySystemService;
.super Landroid/os/IRecoverySystem$Stub;
.source "RecoverySystemService.java"

# interfaces
.implements Lcom/android/internal/widget/RebootEscrowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;,
        Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;,
        Lcom/android/server/recoverysystem/RecoverySystemService$Injector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final INIT_SERVICE_CLEAR_BCB:Ljava/lang/String; = "init.svc.clear-bcb"

.field static final INIT_SERVICE_SETUP_BCB:Ljava/lang/String; = "init.svc.setup-bcb"

.field static final INIT_SERVICE_UNCRYPT:Ljava/lang/String; = "init.svc.uncrypt"

.field private static final SOCKET_CONNECTION_MAX_RETRY:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "RecoverySystemService"

.field private static final UNCRYPT_SOCKET:Ljava/lang/String; = "uncrypt"

.field private static final sRequestLock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

.field private mPreparedForReboot:Z

.field private mPreparedForRebootIntentSender:Landroid/content/IntentSender;

.field private mUnattendedRebootToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 161
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/recoverysystem/RecoverySystemService;-><init>(Lcom/android/server/recoverysystem/RecoverySystemService$Injector;)V

    .line 162
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/recoverysystem/RecoverySystemService$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/server/recoverysystem/RecoverySystemService$1;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/recoverysystem/RecoverySystemService$Injector;)V
    .registers 3
    .param p1, "injector"    # Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 165
    invoke-direct {p0}, Landroid/os/IRecoverySystem$Stub;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 167
    invoke-virtual {p1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    .line 168
    return-void
.end method

.method private checkAndWaitForUncryptService()Z
    .registers 9

    .line 396
    const/4 v0, 0x0

    .local v0, "retry":I
    :goto_1
    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-ge v0, v1, :cond_4e

    .line 397
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string/jumbo v3, "init.svc.uncrypt"

    invoke-virtual {v1, v3}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "uncryptService":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string/jumbo v4, "init.svc.setup-bcb"

    invoke-virtual {v3, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, "setupBcbService":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string/jumbo v5, "init.svc.clear-bcb"

    invoke-virtual {v4, v5}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 400
    .local v4, "clearBcbService":Ljava/lang/String;
    const-string/jumbo v5, "running"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_37

    .line 401
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    :cond_37
    move v2, v7

    .line 409
    .local v2, "busy":Z
    :cond_38
    if-nez v2, :cond_3b

    .line 410
    return v7

    .line 414
    :cond_3b
    :try_start_3b
    iget-object v5, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->threadSleep(J)V
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_42} :catch_43

    .line 417
    goto :goto_4b

    .line 415
    :catch_43
    move-exception v5

    .line 416
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v6, "RecoverySystemService"

    const-string v7, "Interrupted:"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    .end local v1    # "uncryptService":Ljava/lang/String;
    .end local v2    # "busy":Z
    .end local v3    # "setupBcbService":Ljava/lang/String;
    .end local v4    # "clearBcbService":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 420
    .end local v0    # "retry":I
    :cond_4e
    return v2
.end method

.method private enforceShell()V
    .registers 3

    .line 575
    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->isCallerShell()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 578
    return-void

    .line 576
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isCallerShell()Z
    .registers 3

    .line 570
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 571
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

.method private sendPreparedForRebootIntentIfNeeded()V
    .registers 8

    .line 337
    iget-object v6, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mPreparedForRebootIntentSender:Landroid/content/IntentSender;

    .line 338
    .local v6, "intentSender":Landroid/content/IntentSender;
    if-eqz v6, :cond_29

    .line 340
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    :try_start_a
    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_d
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_a .. :try_end_d} :catch_e

    .line 343
    goto :goto_29

    .line 341
    :catch_e
    move-exception v0

    .line 342
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not send intent for prepared reboot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecoverySystemService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :cond_29
    :goto_29
    return-void
.end method

.method private setupOrClearBcb(ZLjava/lang/String;)Z
    .registers 10
    .param p1, "isSetup"    # Z
    .param p2, "command"    # Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECOVERY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->checkAndWaitForUncryptService()Z

    move-result v0

    .line 427
    .local v0, "available":Z
    const/4 v1, 0x0

    const-string v2, "RecoverySystemService"

    if-nez v0, :cond_18

    .line 428
    const-string/jumbo v3, "uncrypt service is unavailable."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return v1

    .line 432
    :cond_18
    const-string v3, "ctl.start"

    if-eqz p1, :cond_25

    .line 433
    iget-object v4, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string/jumbo v5, "setup-bcb"

    invoke-virtual {v4, v3, v5}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 435
    :cond_25
    iget-object v4, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string v5, "clear-bcb"

    invoke-virtual {v4, v3, v5}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :goto_2c
    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->connectService()Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;

    move-result-object v3

    .line 440
    .local v3, "socket":Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;
    if-nez v3, :cond_3a

    .line 441
    const-string v4, "Failed to connect to uncrypt socket"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return v1

    .line 447
    :cond_3a
    if-eqz p1, :cond_3f

    .line 448
    :try_start_3c
    invoke-virtual {v3, p2}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->sendCommand(Ljava/lang/String;)V

    .line 452
    :cond_3f
    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->getPercentageUncrypted()I

    move-result v4

    .line 456
    .local v4, "status":I
    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->sendAck()V

    .line 458
    const/16 v5, 0x64

    if-ne v4, v5, :cond_72

    .line 459
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uncrypt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5b

    const-string/jumbo v6, "setup"

    goto :goto_5d

    :cond_5b
    const-string v6, "clear"

    :goto_5d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " bcb successfully finished."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_6c} :catch_8e
    .catchall {:try_start_3c .. :try_end_6c} :catchall_8c

    .line 470
    .end local v4    # "status":I
    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 471
    nop

    .line 473
    const/4 v1, 0x1

    return v1

    .line 463
    .restart local v4    # "status":I
    :cond_72
    :try_start_72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uncrypt failed with status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_87} :catch_8e
    .catchall {:try_start_72 .. :try_end_87} :catchall_8c

    .line 464
    nop

    .line 470
    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 464
    return v1

    .line 470
    .end local v4    # "status":I
    :catchall_8c
    move-exception v1

    goto :goto_99

    .line 466
    :catch_8e
    move-exception v4

    .line 467
    .local v4, "e":Ljava/io/IOException;
    :try_start_8f
    const-string v5, "IOException when communicating with uncrypt:"

    invoke-static {v2, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_94
    .catchall {:try_start_8f .. :try_end_94} :catchall_8c

    .line 468
    nop

    .line 470
    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 468
    return v1

    .line 470
    .end local v4    # "e":Ljava/io/IOException;
    :goto_99
    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 471
    throw v1
.end method


# virtual methods
.method public clearBcb()Z
    .registers 4

    .line 262
    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_5
    invoke-direct {p0, v1, v2}, Lcom/android/server/recoverysystem/RecoverySystemService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 264
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public clearLskf()Z
    .registers 4

    .line 349
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECOVERY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mPreparedForReboot:Z

    .line 352
    iput-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mUnattendedRebootToken:Ljava/lang/String;

    .line 353
    iput-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mPreparedForRebootIntentSender:Landroid/content/IntentSender;

    .line 355
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 357
    .local v0, "origId":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v2}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getLockSettingsService()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockSettingsInternal;->clearRebootEscrow()V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_22

    .line 359
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 360
    nop

    .line 362
    const/4 v2, 0x1

    return v2

    .line 359
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 360
    throw v2
.end method

.method public onPreparedForReboot(Z)V
    .registers 4
    .param p1, "ready"    # Z

    .line 326
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mUnattendedRebootToken:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 327
    const-string v0, "RecoverySystemService"

    const-string/jumbo v1, "onPreparedForReboot called when mUnattendedRebootToken is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_c
    iput-boolean p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mPreparedForReboot:Z

    .line 331
    if-eqz p1, :cond_13

    .line 332
    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->sendPreparedForRebootIntentIfNeeded()V

    .line 334
    :cond_13
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 19
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 583
    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->enforceShell()V

    .line 584
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 586
    .local v1, "origId":J
    :try_start_7
    new-instance v3, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_21

    move-object v11, p0

    :try_start_a
    invoke-direct {v3, p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;-><init>(Lcom/android/server/recoverysystem/RecoverySystemService;)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_1f

    .line 589
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 590
    nop

    .line 591
    return-void

    .line 589
    :catchall_1f
    move-exception v0

    goto :goto_23

    :catchall_21
    move-exception v0

    move-object v11, p0

    :goto_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 590
    throw v0
.end method

.method onSystemServicesReady()V
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getLockSettingsService()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockSettingsInternal;->setRebootEscrowListener(Lcom/android/internal/widget/RebootEscrowListener;)V

    .line 173
    return-void
.end method

.method public rebootRecoveryWithCommand(Ljava/lang/String;)V
    .registers 7
    .param p1, "command"    # Ljava/lang/String;

    .line 278
    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    const/4 v1, 0x1

    :try_start_4
    invoke-direct {p0, v1, p1}, Lcom/android/server/recoverysystem/RecoverySystemService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 280
    monitor-exit v0

    return-void

    .line 284
    :cond_c
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v1

    .line 286
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v2, "RecoverySystemService"

    const-string v3, "!@[reset tracking] rebootRecoveryWithCommand write to recovery_cause"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_52

    .line 287
    :try_start_19
    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/sys/class/sec/sec_debug/recovery_cause"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_20} :catch_42
    .catchall {:try_start_19 .. :try_end_20} :catchall_52

    .line 288
    .local v2, "rebootDescr":Ljava/io/FileWriter;
    :try_start_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RecoverySystemService rebootRecoveryWithCommand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_38

    .line 289
    :try_start_34
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_42
    .catchall {:try_start_34 .. :try_end_37} :catchall_52

    .line 291
    .end local v2    # "rebootDescr":Ljava/io/FileWriter;
    goto :goto_4a

    .line 287
    .restart local v2    # "rebootDescr":Ljava/io/FileWriter;
    :catchall_38
    move-exception v3

    :try_start_39
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception v4

    :try_start_3e
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "pm":Landroid/os/PowerManager;
    .end local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .end local p1    # "command":Ljava/lang/String;
    :goto_41
    throw v3
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_42} :catch_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_52

    .line 289
    .end local v2    # "rebootDescr":Ljava/io/FileWriter;
    .restart local v1    # "pm":Landroid/os/PowerManager;
    .restart local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .restart local p1    # "command":Ljava/lang/String;
    :catch_42
    move-exception v2

    .line 290
    .local v2, "e":Ljava/io/IOException;
    :try_start_43
    const-string v3, "RecoverySystemService"

    const-string v4, "IOException when writing /sys/class/sec/sec_debug/recovery_cause:"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    .end local v2    # "e":Ljava/io/IOException;
    :goto_4a
    const-string/jumbo v2, "recovery"

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 294
    .end local v1    # "pm":Landroid/os/PowerManager;
    monitor-exit v0

    .line 295
    return-void

    .line 294
    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_43 .. :try_end_54} :catchall_52

    throw v1
.end method

.method public rebootWithLskf(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "updateToken"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 367
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECOVERY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-boolean v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mPreparedForReboot:Z

    const/4 v1, 0x0

    const-string v2, "RecoverySystemService"

    if-nez v0, :cond_15

    .line 370
    const-string v0, "Reboot requested before prepare completed"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return v1

    .line 374
    :cond_15
    if-eqz p1, :cond_25

    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mUnattendedRebootToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 375
    const-string v0, "Reboot requested after preparation, but with mismatching token"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return v1

    .line 379
    :cond_25
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getLockSettingsService()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockSettingsInternal;->armRebootEscrow()Z

    move-result v0

    if-nez v0, :cond_37

    .line 380
    const-string v0, "Failure to escrow key for reboot"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return v1

    .line 384
    :cond_37
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    .line 385
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0, p2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 386
    const/4 v1, 0x1

    return v1
.end method

.method public requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z
    .registers 7
    .param p1, "updateToken"    # Ljava/lang/String;
    .param p2, "intentSender"    # Landroid/content/IntentSender;

    .line 299
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECOVERY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 302
    return v0

    .line 306
    :cond_c
    iget-boolean v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mPreparedForReboot:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mUnattendedRebootToken:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 307
    return v2

    .line 310
    :cond_1a
    iput-boolean v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mPreparedForReboot:Z

    .line 311
    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mUnattendedRebootToken:Ljava/lang/String;

    .line 312
    iput-object p2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mPreparedForRebootIntentSender:Landroid/content/IntentSender;

    .line 314
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 316
    .local v0, "origId":J
    :try_start_24
    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getLockSettingsService()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockSettingsInternal;->prepareRebootEscrow()V
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_32

    .line 318
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 319
    nop

    .line 321
    return v2

    .line 318
    :catchall_32
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 319
    throw v2
.end method

.method public setupBcb(Ljava/lang/String;)Z
    .registers 4
    .param p1, "command"    # Ljava/lang/String;

    .line 270
    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    const/4 v1, 0x1

    :try_start_4
    invoke-direct {p0, v1, p1}, Lcom/android/server/recoverysystem/RecoverySystemService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 272
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .registers 12
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/IRecoverySystemProgressListener;

    .line 179
    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_3
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECOVERY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->checkAndWaitForUncryptService()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    .line 183
    const-string v1, "RecoverySystemService"

    const-string/jumbo v3, "uncrypt service is unavailable."

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    monitor-exit v0

    return v2

    .line 189
    :cond_1c
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->uncryptPackageFileDelete()Z
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_110

    .line 191
    :try_start_21
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getUncryptPackageFileWriter()Ljava/io/FileWriter;

    move-result-object v1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_27} :catch_ec
    .catchall {:try_start_21 .. :try_end_27} :catchall_110

    .line 192
    .local v1, "uncryptFile":Ljava/io/FileWriter;
    :try_start_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_27 .. :try_end_3b} :catchall_e0

    .line 193
    if-eqz v1, :cond_40

    :try_start_3d
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_ec
    .catchall {:try_start_3d .. :try_end_40} :catchall_110

    .line 197
    .end local v1    # "uncryptFile":Ljava/io/FileWriter;
    :cond_40
    nop

    .line 200
    :try_start_41
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string v3, "ctl.start"

    const-string/jumbo v4, "uncrypt"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->connectService()Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;

    move-result-object v1

    .line 204
    .local v1, "socket":Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;
    if-nez v1, :cond_5c

    .line 205
    const-string v3, "RecoverySystemService"

    const-string v4, "Failed to connect to uncrypt socket"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_41 .. :try_end_5b} :catchall_110

    return v2

    .line 211
    :cond_5c
    const/high16 v3, -0x80000000

    .line 213
    .local v3, "lastStatus":I
    :goto_5e
    :try_start_5e
    invoke-virtual {v1}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->getPercentageUncrypted()I

    move-result v4

    .line 215
    .local v4, "status":I
    if-ne v4, v3, :cond_69

    const/high16 v5, -0x80000000

    if-eq v3, v5, :cond_69

    .line 216
    goto :goto_5e

    .line 218
    :cond_69
    move v3, v4

    .line 220
    if-ltz v4, :cond_ab

    const/16 v5, 0x64

    if-gt v4, v5, :cond_ab

    .line 222
    const-string v6, "RecoverySystemService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uncrypt read status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_87} :catch_cd
    .catchall {:try_start_5e .. :try_end_87} :catchall_cb

    .line 223
    if-eqz p2, :cond_95

    .line 225
    :try_start_89
    invoke-interface {p2, v4}, Landroid/os/IRecoverySystemProgressListener;->onProgress(I)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_8c} :catch_8d
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_cd
    .catchall {:try_start_89 .. :try_end_8c} :catchall_cb

    .line 228
    goto :goto_95

    .line 226
    :catch_8d
    move-exception v6

    .line 227
    .local v6, "ignored":Landroid/os/RemoteException;
    :try_start_8e
    const-string v7, "RecoverySystemService"

    const-string v8, "RemoteException when posting progress"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v6    # "ignored":Landroid/os/RemoteException;
    :cond_95
    :goto_95
    if-ne v4, v5, :cond_aa

    .line 231
    const-string v5, "RecoverySystemService"

    const-string/jumbo v6, "uncrypt successfully finished."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {v1}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->sendAck()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_a2} :catch_cd
    .catchall {:try_start_8e .. :try_end_a2} :catchall_cb

    .line 236
    nop

    .line 252
    .end local v3    # "lastStatus":I
    .end local v4    # "status":I
    :try_start_a3
    invoke-virtual {v1}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 253
    nop

    .line 255
    const/4 v2, 0x1

    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_a3 .. :try_end_a9} :catchall_110

    return v2

    .line 247
    .restart local v3    # "lastStatus":I
    :cond_aa
    goto :goto_5e

    .line 240
    .restart local v4    # "status":I
    :cond_ab
    :try_start_ab
    const-string v5, "RecoverySystemService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uncrypt failed with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v1}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->sendAck()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_c5} :catch_cd
    .catchall {:try_start_ab .. :try_end_c5} :catchall_cb

    .line 245
    nop

    .line 252
    :try_start_c6
    invoke-virtual {v1}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    monitor-exit v0
    :try_end_ca
    .catchall {:try_start_c6 .. :try_end_ca} :catchall_110

    .line 245
    return v2

    .line 252
    .end local v3    # "lastStatus":I
    .end local v4    # "status":I
    :catchall_cb
    move-exception v2

    goto :goto_db

    .line 248
    :catch_cd
    move-exception v3

    .line 249
    .local v3, "e":Ljava/io/IOException;
    :try_start_ce
    const-string v4, "RecoverySystemService"

    const-string v5, "IOException when reading status: "

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d5
    .catchall {:try_start_ce .. :try_end_d5} :catchall_cb

    .line 250
    nop

    .line 252
    :try_start_d6
    invoke-virtual {v1}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    monitor-exit v0

    .line 250
    return v2

    .line 252
    .end local v3    # "e":Ljava/io/IOException;
    :goto_db
    invoke-virtual {v1}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 253
    nop

    .end local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .end local p1    # "filename":Ljava/lang/String;
    .end local p2    # "listener":Landroid/os/IRecoverySystemProgressListener;
    throw v2
    :try_end_e0
    .catchall {:try_start_d6 .. :try_end_e0} :catchall_110

    .line 191
    .local v1, "uncryptFile":Ljava/io/FileWriter;
    .restart local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .restart local p1    # "filename":Ljava/lang/String;
    .restart local p2    # "listener":Landroid/os/IRecoverySystemProgressListener;
    :catchall_e0
    move-exception v3

    if-eqz v1, :cond_eb

    :try_start_e3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_e6
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_e7

    goto :goto_eb

    :catchall_e7
    move-exception v4

    :try_start_e8
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .end local p1    # "filename":Ljava/lang/String;
    .end local p2    # "listener":Landroid/os/IRecoverySystemProgressListener;
    :cond_eb
    :goto_eb
    throw v3
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_ec} :catch_ec
    .catchall {:try_start_e8 .. :try_end_ec} :catchall_110

    .line 193
    .end local v1    # "uncryptFile":Ljava/io/FileWriter;
    .restart local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .restart local p1    # "filename":Ljava/lang/String;
    .restart local p2    # "listener":Landroid/os/IRecoverySystemProgressListener;
    :catch_ec
    move-exception v1

    .line 194
    .local v1, "e":Ljava/io/IOException;
    :try_start_ed
    const-string v3, "RecoverySystemService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException when writing \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 195
    invoke-virtual {v5}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getUncryptPackageFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    monitor-exit v0

    return v2

    .line 256
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_110
    move-exception v1

    monitor-exit v0
    :try_end_112
    .catchall {:try_start_ed .. :try_end_112} :catchall_110

    throw v1
.end method
