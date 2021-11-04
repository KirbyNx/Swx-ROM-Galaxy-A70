.class final Lcom/android/server/SdpManagerService$VirtualLockClient;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VirtualLockClient"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SdpManagerService.VirtualLock"


# instance fields
.field mSdpManagerService:Lcom/android/server/SdpManagerService;

.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService;)V
    .registers 3
    .param p2, "service"    # Lcom/android/server/SdpManagerService;

    .line 467
    iput-object p1, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput-object p2, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    .line 469
    return-void
.end method

.method static synthetic lambda$clearLock$1(ILcom/android/internal/widget/ILockSettings;)V
    .registers 4
    .param p0, "userId"    # I
    .param p1, "service"    # Lcom/android/internal/widget/ILockSettings;

    .line 578
    nop

    .line 579
    :try_start_1
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 580
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    .line 578
    invoke-interface {p1, v0, v1, p0}, Lcom/android/internal/widget/ILockSettings;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_d

    .line 584
    goto :goto_11

    .line 582
    :catch_d
    move-exception v0

    .line 583
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 585
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method static synthetic lambda$setPassword$0(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/widget/ILockSettings;)V
    .registers 6
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "savedPassword"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "service"    # Lcom/android/internal/widget/ILockSettings;

    .line 544
    nop

    .line 545
    :try_start_1
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 546
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    .line 544
    invoke-interface {p3, v0, v1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_d

    .line 550
    goto :goto_11

    .line 548
    :catch_d
    move-exception v0

    .line 549
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 551
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method static synthetic lambda$setPasswordWithToken$2(Ljava/lang/String;J[BILcom/android/internal/widget/LockSettingsInternal;)Ljava/lang/Boolean;
    .registers 12
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "tokenHandle"    # J
    .param p3, "token"    # [B
    .param p4, "userId"    # I
    .param p5, "service"    # Lcom/android/internal/widget/LockSettingsInternal;

    .line 628
    nop

    .line 630
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    .line 629
    move-object v0, p5

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockSettingsInternal;->setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result v0

    .line 628
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method changePassword(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedPassword"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change password for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService.VirtualLock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-static {p3}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 561
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 564
    :cond_1f
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/SdpManagerService$VirtualLockClient;->setPassword(Ljava/lang/String;Ljava/lang/String;I)V

    .line 565
    invoke-virtual {p0, p1, p3}, Lcom/android/server/SdpManagerService$VirtualLockClient;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method changeToken([BJ[BJI)Z
    .registers 18
    .param p1, "newToken"    # [B
    .param p2, "newHandle"    # J
    .param p4, "oldToken"    # [B
    .param p5, "oldHandle"    # J
    .param p7, "userId"    # I

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change token for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SdpManagerService.VirtualLock"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-static/range {p7 .. p7}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 650
    const/4 v0, 0x0

    return v0

    .line 652
    :cond_20
    move-object v0, p0

    iget-object v2, v0, Lcom/android/server/SdpManagerService$VirtualLockClient;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-wide v7, p5

    move/from16 v9, p7

    # invokes: Lcom/android/server/SdpManagerService;->changeToken([BJ[BJI)Z
    invoke-static/range {v2 .. v9}, Lcom/android/server/SdpManagerService;->access$1100(Lcom/android/server/SdpManagerService;[BJ[BJI)Z

    move-result v2

    return v2
.end method

.method checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check password for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService.VirtualLock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 528
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 530
    :cond_1f
    iget-object v0, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    const/4 v1, 0x4

    # invokes: Lcom/android/server/SdpManagerService;->checkCredential(Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-static {v0, p1, v1, p2}, Lcom/android/server/SdpManagerService;->access$600(Lcom/android/server/SdpManagerService;Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method clean(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 491
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 492
    return-void

    .line 495
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 496
    .local v0, "identity":J
    invoke-static {p1}, Lcom/android/server/SdpManagerService$FileUtil;->getUserSystemDir(I)Ljava/io/File;

    move-result-object v2

    .line 497
    .local v2, "dataDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "SdpManagerService.VirtualLock"

    if-eqz v3, :cond_31

    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clean - sp state path found with user "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v3, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->removeDirectoryRecursive(Ljava/io/File;)V
    invoke-static {v3, v2}, Lcom/android/server/SdpManagerService;->access$500(Lcom/android/server/SdpManagerService;Ljava/io/File;)V

    goto :goto_45

    .line 501
    :cond_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clean - sp state path not found with user "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :goto_45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 504
    return-void
.end method

.method clearLock(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clear lock for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService.VirtualLock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 571
    return-void

    .line 574
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 576
    .local v0, "identity":J
    :try_start_21
    iget-object v2, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->getLockSettings()Ljava/util/Optional;
    invoke-static {v2}, Lcom/android/server/SdpManagerService;->access$700(Lcom/android/server/SdpManagerService;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$I7zpVntME2JAh469nnRzxCP2xuc;

    invoke-direct {v3, p1}, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$I7zpVntME2JAh469nnRzxCP2xuc;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_34

    .line 587
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 588
    nop

    .line 589
    return-void

    .line 587
    :catchall_34
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 588
    throw v2
.end method

.method establish(Ljava/lang/String;[BI)J
    .registers 15
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "token"    # [B
    .param p3, "userId"    # I

    .line 507
    invoke-static {p3}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_9

    .line 508
    return-wide v1

    .line 511
    :cond_9
    invoke-virtual {p0, p3}, Lcom/android/server/SdpManagerService$VirtualLockClient;->clearLock(I)V

    .line 513
    invoke-virtual {p0, p3}, Lcom/android/server/SdpManagerService$VirtualLockClient;->prepare(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 514
    invoke-virtual {p0, p2, p3}, Lcom/android/server/SdpManagerService$VirtualLockClient;->setResetPasswordToken([BI)J

    move-result-wide v9

    .line 515
    .local v9, "handle":J
    move-object v3, p0

    move-object v4, p1

    move-wide v5, v9

    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/SdpManagerService$VirtualLockClient;->setPasswordWithToken(Ljava/lang/String;J[BI)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 516
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 518
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 516
    const-string v1, "establish - sp based credential established for user %d with %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService.VirtualLock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return-wide v9

    .line 522
    .end local v9    # "handle":J
    :cond_3e
    return-wide v1
.end method

.method prepare(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 472
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 473
    return v1

    .line 476
    :cond_8
    invoke-static {p1}, Lcom/android/server/SdpManagerService$FileUtil;->getUserSystemDir(I)Ljava/io/File;

    move-result-object v0

    .line 477
    .local v0, "dataDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_30

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_30

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepare - failed to create sp state path for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SdpManagerService.VirtualLock"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return v1

    .line 481
    :cond_30
    nop

    .line 482
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f9

    .line 481
    const/4 v3, -0x1

    invoke-static {v1, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 486
    iget-object v1, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->initInternalEngineInfo(I)V
    invoke-static {v1, p1}, Lcom/android/server/SdpManagerService;->access$400(Lcom/android/server/SdpManagerService;I)V

    .line 487
    const/4 v1, 0x1

    return v1
.end method

.method removeResetPasswordToken(JI)Z
    .registers 7
    .param p1, "tokenHandle"    # J
    .param p3, "userId"    # I

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove reset password token for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService.VirtualLock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-static {p3}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 608
    const/4 v0, 0x0

    return v0

    .line 611
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 613
    .local v0, "identity":J
    :try_start_22
    iget-object v2, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/server/SdpManagerService;->access$800(Lcom/android/server/SdpManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->removeEscrowToken(JI)Z

    move-result v2
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_30

    .line 615
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 613
    return v2

    .line 615
    :catchall_30
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 616
    throw v2
.end method

.method removeToken(JI)Z
    .registers 7
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 657
    invoke-static {p3}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 658
    const/4 v0, 0x0

    return v0

    .line 661
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 663
    .local v0, "identity":J
    :try_start_c
    iget-object v2, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/server/SdpManagerService;->access$800(Lcom/android/server/SdpManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    .line 664
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->removeEscrowToken(JI)Z

    move-result v2
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1a

    .line 666
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 663
    return v2

    .line 666
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 667
    throw v2
.end method

.method setPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedPassword"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set password for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService.VirtualLock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-static {p3}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 537
    return-void

    .line 540
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 542
    .local v0, "identity":J
    :try_start_21
    iget-object v2, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->getLockSettings()Ljava/util/Optional;
    invoke-static {v2}, Lcom/android/server/SdpManagerService;->access$700(Lcom/android/server/SdpManagerService;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$krdRFRvql2Usn_329vUFTTQBs_o;

    invoke-direct {v3, p1, p2, p3}, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$krdRFRvql2Usn_329vUFTTQBs_o;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_34

    .line 553
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 554
    nop

    .line 555
    return-void

    .line 553
    :catchall_34
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 554
    throw v2
.end method

.method setPasswordWithToken(Ljava/lang/String;J[BI)Z
    .registers 19
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "tokenHandle"    # J
    .param p4, "token"    # [B
    .param p5, "userId"    # I

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set password with token for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SdpManagerService.VirtualLock"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-static/range {p5 .. p5}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_20

    .line 623
    return v8

    .line 626
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 628
    .local v9, "identity":J
    move-object v11, p0

    :try_start_25
    iget-object v0, v11, Lcom/android/server/SdpManagerService$VirtualLockClient;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->getLockSettingsInternal()Ljava/util/Optional;
    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$900(Lcom/android/server/SdpManagerService;)Ljava/util/Optional;

    move-result-object v0

    new-instance v12, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$wRLGg_Kgb4DhiFxuXcUsg5LvVl0;

    move-object v2, v12

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$wRLGg_Kgb4DhiFxuXcUsg5LvVl0;-><init>(Ljava/lang/String;J[BI)V

    invoke-virtual {v0, v12}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 632
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_49
    .catchall {:try_start_25 .. :try_end_49} :catchall_4d

    .line 634
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 628
    return v0

    .line 634
    :catchall_4d
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 635
    throw v0
.end method

.method setResetPasswordToken([BI)J
    .registers 7
    .param p1, "token"    # [B
    .param p2, "userId"    # I

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set reset password token for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService.VirtualLock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 594
    const-wide/16 v0, 0x0

    return-wide v0

    .line 597
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 599
    .local v0, "identity":J
    :try_start_23
    iget-object v2, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/server/SdpManagerService;->access$800(Lcom/android/server/SdpManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v2
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_32

    .line 601
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 599
    return-wide v2

    .line 601
    :catchall_32
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 602
    throw v2
.end method

.method verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 7
    .param p1, "token"    # [B
    .param p2, "tokenHandle"    # J
    .param p4, "userId"    # I

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verify token for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService.VirtualLock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-static {p4}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 641
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 643
    :cond_1f
    iget-object v0, p0, Lcom/android/server/SdpManagerService$VirtualLockClient;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/SdpManagerService;->access$1000(Lcom/android/server/SdpManagerService;[BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method
