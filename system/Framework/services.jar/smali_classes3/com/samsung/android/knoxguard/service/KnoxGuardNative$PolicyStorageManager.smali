.class Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
.super Ljava/lang/Object;
.source "KnoxGuardNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knoxguard/service/KnoxGuardNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PolicyStorageManager"
.end annotation


# static fields
.field private static DATA_READ_ERROR:I = 0x0

.field private static FILE_MISSING_CANNOT_CREATE:I = 0x0

.field private static final KGTA_POLICY_PATH:Ljava/lang/String; = "/efs/kgtapolicy"

.field private static PARSING_ERROR:I = 0x0

.field private static STORAGE_ERROR:I = 0x0

.field public static SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KGTAPolicy"

.field private static final USE_TA_STORAGE:Z = true

.field private static instance:Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;


# instance fields
.field private ans_policy:Ljava/lang/String;

.field private ans_signature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 539
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->SUCCESS:I

    .line 540
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->STORAGE_ERROR:I

    .line 541
    const/4 v0, -0x2

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->FILE_MISSING_CANNOT_CREATE:I

    .line 542
    const/4 v0, -0x3

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->DATA_READ_ERROR:I

    .line 543
    const/4 v0, -0x4

    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->PARSING_ERROR:I

    .line 544
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->instance:Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;

    .line 538
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;

    .line 547
    return-void
.end method

.method private cleanState()V
    .registers 2

    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;

    .line 570
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;

    .line 571
    return-void
.end method

.method private constructTheSavingContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "policy"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .line 593
    const-string v0, ""

    if-nez p1, :cond_6

    move-object v1, v0

    goto :goto_7

    :cond_6
    move-object v1, p1

    .line 594
    .local v1, "first":Ljava/lang/String;
    :goto_7
    if-nez p2, :cond_a

    goto :goto_b

    :cond_a
    move-object v0, p2

    .line 595
    .local v0, "second":Ljava/lang/String;
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "||"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private createPolicyFile()V
    .registers 5

    .line 556
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/kgtapolicy"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 558
    .local v0, "policyFile":Ljava/io/File;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_b

    .line 561
    goto :goto_13

    .line 559
    :catch_b
    move-exception v1

    .line 560
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "KGTAPolicy"

    const-string v3, "create new policy file failed, error or already created"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    .end local v1    # "e":Ljava/io/IOException;
    :goto_13
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
    .registers 2

    const-class v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    monitor-enter v0

    .line 549
    :try_start_3
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->instance:Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    if-nez v1, :cond_e

    .line 550
    new-instance v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    invoke-direct {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->instance:Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    .line 552
    :cond_e
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->instance:Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 548
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isFileExists()Z
    .registers 3

    .line 564
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/kgtapolicy"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 566
    .local v0, "policyFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private parseDataString(Ljava/lang/String;)I
    .registers 6
    .param p1, "data"    # Ljava/lang/String;

    .line 599
    const-string v0, "\\|\\|"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, "arrOfStr":[Ljava/lang/String;
    if-eqz v0, :cond_18

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_e

    goto :goto_18

    .line 604
    :cond_e
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->storeDataReady(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    return v1

    .line 601
    :cond_18
    :goto_18
    const-string v1, "KGTAPolicy"

    const-string v2, "parsing data issue occurred"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->PARSING_ERROR:I

    return v1
.end method

.method private savetoFileExternal(Ljava/lang/String;)I
    .registers 7
    .param p1, "data"    # Ljava/lang/String;

    .line 573
    const/4 v0, 0x0

    .line 574
    .local v0, "writer":Ljava/io/BufferedWriter;
    const/4 v1, 0x0

    .line 576
    .local v1, "error":I
    :try_start_2
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/efs/kgtapolicy"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v2

    .line 577
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_19
    .catchall {:try_start_2 .. :try_end_12} :catchall_17

    .line 582
    nop

    .line 583
    :try_start_13
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_23

    goto :goto_27

    .line 581
    :catchall_17
    move-exception v2

    goto :goto_29

    .line 578
    :catch_19
    move-exception v2

    .line 579
    .local v2, "e":Ljava/io/IOException;
    :try_start_1a
    sget v3, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->STORAGE_ERROR:I
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_17

    move v1, v3

    .line 582
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_27

    .line 583
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_27

    .line 584
    :catch_23
    move-exception v2

    .line 586
    .restart local v2    # "e":Ljava/io/IOException;
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->STORAGE_ERROR:I

    .line 588
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_28

    .line 587
    :cond_27
    :goto_27
    nop

    .line 590
    :goto_28
    return v1

    .line 582
    :goto_29
    if-eqz v0, :cond_33

    .line 583
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_33

    .line 584
    :catch_2f
    move-exception v3

    .line 586
    .local v3, "e":Ljava/io/IOException;
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->STORAGE_ERROR:I

    goto :goto_34

    .line 587
    .end local v3    # "e":Ljava/io/IOException;
    :cond_33
    :goto_33
    nop

    .line 588
    :goto_34
    throw v2
.end method

.method private storeDataReady(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "policy"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .line 609
    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;

    .line 610
    iput-object p2, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;

    .line 611
    return-void
.end method


# virtual methods
.method public declared-synchronized clean()V
    .registers 2

    monitor-enter p0

    .line 632
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->cleanState()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 633
    monitor-exit p0

    return-void

    .line 631
    .end local p0    # "this":Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPolicyRes()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 626
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 626
    .end local p0    # "this":Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSignature()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 629
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 629
    .end local p0    # "this":Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readData()I
    .registers 3

    monitor-enter p0

    .line 635
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->cleanState()V

    .line 638
    const-string v0, "KGTAPolicy"

    const-string v1, "use TA to store policy, skipping the EFS..."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-string v0, " "

    const-string v1, " "

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->storeDataReady(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->SUCCESS:I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return v0

    .line 634
    .end local p0    # "this":Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveData(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "policy"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    monitor-enter p0

    .line 614
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->cleanState()V

    .line 616
    const-string v0, "KGTAPolicy"

    const-string v1, "use TA to store policy, skipping the EFS..."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->SUCCESS:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return v0

    .line 613
    .end local p0    # "this":Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
    .end local p1    # "policy":Ljava/lang/String;
    .end local p2    # "signature":Ljava/lang/String;
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
