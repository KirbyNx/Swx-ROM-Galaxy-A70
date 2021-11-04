.class Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthenticationToken"
.end annotation


# instance fields
.field private isDestroyed:Z

.field private mEncryptedEscrowSplit0:[B

.field private mEscrowSplit1:[B

.field private mSyntheticPassword:[B

.field private final mVersion:B

.field private secureMode:I


# direct methods
.method constructor <init>(B)V
    .registers 3
    .param p1, "version"    # B

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-byte p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mVersion:B

    .line 348
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->secureMode:I

    .line 349
    iput-boolean v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isDestroyed:Z

    .line 351
    return-void
.end method

.method constructor <init>(BI)V
    .registers 4
    .param p1, "version"    # B
    .param p2, "mode"    # I

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-byte p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mVersion:B

    .line 356
    iput p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->secureMode:I

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isDestroyed:Z

    .line 358
    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 328
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEncryptedEscrowSplit0:[B

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 328
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEscrowSplit1:[B

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)B
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 328
    iget-byte v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mVersion:B

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 328
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    return-object v0
.end method

.method static create()Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 5

    .line 536
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;-><init>(B)V

    .line 537
    .local v0, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    const/16 v1, 0x20

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v2

    .line 538
    .local v2, "escrowSplit0":[B
    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v1

    .line 539
    .local v1, "escrowSplit1":[B
    invoke-direct {v0, v2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreate([B[B)V

    .line 540
    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    .line 541
    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_E0:[B
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$1000()[B

    move-result-object v4

    .line 540
    invoke-static {v3, v4, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v3

    .line 542
    .local v3, "encrypteEscrowSplit0":[B
    invoke-virtual {v0, v3, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->setEscrowData([B[B)V

    .line 543
    return-object v0
.end method

.method static create(I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 6
    .param p0, "mode"    # I

    .line 515
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;-><init>(BI)V

    .line 516
    .local v0, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isMdfppMode()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 517
    const/16 v1, 0x20

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->RBG(I)[B

    move-result-object v2

    .line 518
    .local v2, "sp":[B
    if-nez v2, :cond_1f

    .line 519
    const-string v3, "SyntheticPasswordManager.SDP"

    const-string v4, "Unexpected failure while generate random sp"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v2

    .line 522
    :cond_1f
    invoke-direct {v0, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreate([B)V

    .line 523
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->setEscrowData([B[B)V

    .line 524
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    .line 525
    .end local v2    # "sp":[B
    goto :goto_2e

    .line 526
    :cond_2a
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->create()Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    .line 528
    :goto_2e
    return-object v0
.end method

.method private derivePassword([B)[B
    .registers 5
    .param p1, "personalization"    # [B

    .line 372
    iget-byte v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mVersion:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    .line 373
    new-instance v0, Lcom/android/server/locksettings/SP800Derive;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/SP800Derive;-><init>([B)V

    .line 374
    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_CONTEXT:[B
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$000()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/locksettings/SP800Derive;->withContext([B[B)[B

    move-result-object v0

    .line 373
    return-object v0

    .line 376
    :cond_15
    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method private ensureSyntheticPassword()V
    .registers 3

    .line 365
    iget-boolean v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isDestroyed:Z

    if-nez v0, :cond_5

    .line 368
    return-void

    .line 366
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The object has been already destroyed!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private recreate([B)V
    .registers 3
    .param p1, "escrowSplit0"    # [B

    .line 548
    invoke-static {p1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    .line 549
    return-void
.end method

.method private recreate([B[B)V
    .registers 6
    .param p1, "escrowSplit0"    # [B
    .param p2, "escrowSplit1"    # [B

    .line 557
    nop

    .line 559
    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$1100()[B

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 558
    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    .line 557
    invoke-static {v0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    .line 559
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    .line 560
    return-void
.end method


# virtual methods
.method public deriveDiskEncryptionKey()[B
    .registers 3

    .line 407
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isMdfppMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 408
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->ensureSyntheticPassword()V

    .line 409
    nop

    .line 410
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getSyntheticPassword()[B

    move-result-object v0

    iget v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->secureMode:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->generateFileSystemKey([BI)[B

    move-result-object v0

    .line 409
    return-object v0

    .line 413
    :cond_15
    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$400()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveGkPassword()[B
    .registers 3

    .line 396
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isMdfppMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 397
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->ensureSyntheticPassword()V

    .line 398
    nop

    .line 399
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getSyntheticPassword()[B

    move-result-object v0

    iget v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->secureMode:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->generateGatekeeperPassword([BI)[B

    move-result-object v0

    .line 398
    return-object v0

    .line 402
    :cond_15
    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$300()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveKeyStorePassword()[B
    .registers 3

    .line 383
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isMdfppMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 384
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->ensureSyntheticPassword()V

    .line 385
    nop

    .line 386
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getSyntheticPassword()[B

    move-result-object v0

    iget v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->secureMode:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->generateKeystorePassword([BI)[B

    move-result-object v0

    .line 387
    .local v0, "personalised":[B
    # invokes: Lcom/android/server/locksettings/SyntheticPasswordManager;->bytesToHex([B)[B
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$100([B)[B

    move-result-object v1

    .local v1, "hexaDecimalised":[B
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    .line 388
    return-object v1

    .line 391
    .end local v0    # "personalised":[B
    .end local v1    # "hexaDecimalised":[B
    :cond_1c
    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$200()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    # invokes: Lcom/android/server/locksettings/SyntheticPasswordManager;->bytesToHex([B)[B
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$100([B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveMetricsKey()[B
    .registers 2

    .line 426
    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_METRICS:[B
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$700()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    return-object v0
.end method

.method public derivePasswordHashFactor()[B
    .registers 2

    .line 421
    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_HASH:[B
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$600()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveSdpMasterKey()[B
    .registers 3

    .line 431
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isMdfppMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 432
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->ensureSyntheticPassword()V

    .line 433
    nop

    .line 434
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getSyntheticPassword()[B

    move-result-object v0

    iget v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->secureMode:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->generateSdpMasterKey([BI)[B

    move-result-object v0

    .line 433
    return-object v0

    .line 436
    :cond_15
    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SDP_MASTER_KEY:[B
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$800()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveSdpMasterKeyPersonalized()[B
    .registers 5

    .line 441
    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SDP_MASTER_KEY:[B
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$800()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 440
    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalizedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveVendorAuthSecret()[B
    .registers 2

    .line 417
    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_KEY:[B
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$500()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .registers 5

    .line 458
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isMdfppMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 459
    return-void

    .line 461
    :cond_7
    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$900()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 462
    const-string v0, "SyntheticPasswordManager.SDP"

    const-string v1, "Remove all traces of synthetic password"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_14
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->clearAll([Ljava/lang/Object;)V

    .line 465
    iput-boolean v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isDestroyed:Z

    .line 466
    return-void
.end method

.method public dump()[B
    .registers 4

    .line 446
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_32

    .line 449
    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userdebug"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 450
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_2d

    .line 451
    :cond_25
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Available only for engineering mode"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getSyntheticPassword()[B

    move-result-object v0

    return-object v0

    .line 447
    :cond_32
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Make sure to call through system process"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEscrowSecret()[B
    .registers 4

    .line 569
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isMdfppMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 570
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getSyntheticPassword()[B

    move-result-object v0

    return-object v0

    .line 573
    :cond_b
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEncryptedEscrowSplit0:[B

    if-nez v0, :cond_11

    .line 574
    const/4 v0, 0x0

    return-object v0

    .line 576
    :cond_11
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_E0:[B
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$1000()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEncryptedEscrowSplit0:[B

    invoke-static {v0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSyntheticPassword()[B
    .registers 2

    .line 585
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    return-object v0
.end method

.method public getVersion()B
    .registers 2

    .line 593
    iget-byte v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mVersion:B

    return v0
.end method

.method public isMdfppMode()Z
    .registers 2

    .line 361
    iget v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->secureMode:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public recreateDirectly([B)V
    .registers 3
    .param p1, "syntheticPassword"    # [B

    .line 510
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    .line 511
    return-void
.end method

.method public recreateFromEscrow([B)V
    .registers 3
    .param p1, "escrowSplit0"    # [B

    .line 495
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isMdfppMode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 496
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->decode([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreate([B)V

    goto :goto_1d

    .line 500
    :cond_e
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEscrowSplit1:[B

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEncryptedEscrowSplit0:[B

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEscrowSplit1:[B

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreate([B[B)V

    .line 504
    :goto_1d
    return-void
.end method

.method public setEscrowData([B[B)V
    .registers 3
    .param p1, "encryptedEscrowSplit0"    # [B
    .param p2, "escrowSplit1"    # [B

    .line 484
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEncryptedEscrowSplit0:[B

    .line 485
    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEscrowSplit1:[B

    .line 486
    return-void
.end method
