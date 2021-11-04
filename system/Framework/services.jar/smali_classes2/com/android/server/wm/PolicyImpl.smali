.class abstract Lcom/android/server/wm/PolicyImpl;
.super Ljava/lang/Object;
.source "PackageConfigurationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PolicyImpl$Index;,
        Lcom/android/server/wm/PolicyImpl$PropagateReason;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field static final DIR_PATH:Ljava/lang/String;

.field static final HELP_PACKAGE_OPTION:Ljava/lang/String; = "packageName"

.field static final HELP_PACKAGE_OPTIONS:Ljava/lang/String; = "packageName:packageName:..."

.field private static final POLICY_ITEM:Ljava/lang/String; = "policy_item"

.field private static final POLICY_LIST:Ljava/lang/String; = "policy_list"

.field private static final POLICY_LIST_PROJECTION:[Ljava/lang/String;

.field private static final POLICY_LIST_SELECTION:Ljava/lang/String; = "policyName=?"

.field private static final POLICY_LIST_URI:Landroid/net/Uri;

.field static final RETRY_NUMBER:I = 0x3

.field static final RETRY_TIMES:J = 0x493e0L


# instance fields
.field private final mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/PolicyDataMap;",
            ">;>;>;"
        }
    .end annotation
.end field

.field final mController:Lcom/android/server/wm/PackageConfigurationController;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/PackageConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field final mName:Ljava/lang/String;

.field private mPolicyItem:Lcom/android/server/wm/PolicyItem;

.field private mRetryNumber:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 365
    const-string v0, "content://com.samsung.android.sm.policy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/PolicyImpl;->AUTHORITY_URI:Landroid/net/Uri;

    .line 367
    const-string/jumbo v1, "policyVersion"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/wm/PolicyImpl;->POLICY_LIST_PROJECTION:[Ljava/lang/String;

    .line 371
    const-string/jumbo v1, "policy_list"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/PolicyImpl;->POLICY_LIST_URI:Landroid/net/Uri;

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/system/packageconfiguration/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/PolicyImpl;->DIR_PATH:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/PackageConfigurationController;Ljava/lang/String;)V
    .registers 4
    .param p1, "controller"    # Lcom/android/server/wm/PackageConfigurationController;
    .param p2, "policyName"    # Ljava/lang/String;

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PolicyImpl;->mCallbacks:Ljava/util/Map;

    .line 394
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/PolicyImpl;->mRetryNumber:I

    .line 397
    iput-object p1, p0, Lcom/android/server/wm/PolicyImpl;->mController:Lcom/android/server/wm/PackageConfigurationController;

    .line 398
    iput-object p2, p0, Lcom/android/server/wm/PolicyImpl;->mName:Ljava/lang/String;

    .line 399
    return-void
.end method

.method private createDirectoryIfNeeded(Ljava/lang/String;)V
    .registers 7
    .param p1, "pathname"    # Ljava/lang/String;

    .line 550
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 551
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 552
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_29

    .line 553
    iget-object v1, p0, Lcom/android/server/wm/PolicyImpl;->mController:Lcom/android/server/wm/PackageConfigurationController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/PackageConfigurationController;->addLogs(ILjava/lang/String;)V

    goto :goto_3f

    .line 555
    :cond_29
    iget-object v1, p0, Lcom/android/server/wm/PolicyImpl;->mController:Lcom/android/server/wm/PackageConfigurationController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to create directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/PackageConfigurationController;->addLogs(ILjava/lang/String;)V

    .line 558
    :cond_3f
    :goto_3f
    return-void
.end method

.method static synthetic lambda$updatePackageConfigurationsIfNeeded$1(Lcom/android/server/wm/PackageConfiguration;)V
    .registers 1
    .param p0, "each"    # Lcom/android/server/wm/PackageConfiguration;

    .line 488
    invoke-virtual {p0}, Lcom/android/server/wm/PackageConfiguration;->updatePrepared()V

    return-void
.end method

.method static synthetic lambda$updatePackageConfigurationsIfNeeded$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wm/PackageConfiguration;)V
    .registers 5
    .param p0, "configurationName"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "each"    # Lcom/android/server/wm/PackageConfiguration;

    .line 494
    iget-object v0, p3, Lcom/android/server/wm/PackageConfiguration;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 495
    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/PackageConfiguration;->updateFromScpm(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :cond_b
    return-void
.end method

.method static synthetic lambda$updatePackageConfigurationsIfNeeded$3(Lcom/android/server/wm/PackageConfiguration;)V
    .registers 1
    .param p0, "each"    # Lcom/android/server/wm/PackageConfiguration;

    .line 499
    invoke-virtual {p0}, Lcom/android/server/wm/PackageConfiguration;->updateCompleted()V

    return-void
.end method

.method static varargs printCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "options"    # [Ljava/lang/String;

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 718
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p2

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1b

    aget-object v3, p2, v2

    .line 719
    .local v3, "option":Ljava/lang/String;
    const-string v4, " ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    .end local v3    # "option":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 723
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    return-void
.end method

.method static printOptionsRequires(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "cmd"    # Ljava/lang/String;

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " options requires:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 714
    return-void
.end method

.method private static propagateReasonToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "reason"    # I

    .line 698
    if-eqz p0, :cond_19

    const/4 v0, 0x1

    if-eq p0, v0, :cond_16

    const/4 v0, 0x2

    if-eq p0, v0, :cond_13

    const/4 v0, 0x3

    if-eq p0, v0, :cond_10

    .line 708
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 706
    :cond_10
    const-string v0, "DebugMode"

    return-object v0

    .line 704
    :cond_13
    const-string v0, "PolicyDisabled"

    return-object v0

    .line 702
    :cond_16
    const-string v0, "SCPM"

    return-object v0

    .line 700
    :cond_19
    const-string v0, "Local"

    return-object v0
.end method

.method private readPolicyItem(Ljava/lang/String;)Lcom/android/server/wm/PolicyItem;
    .registers 10
    .param p1, "policyItemName"    # Ljava/lang/String;

    .line 561
    sget-object v0, Lcom/android/server/wm/PolicyImpl;->DIR_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/wm/PolicyImpl;->createDirectoryIfNeeded(Ljava/lang/String;)V

    .line 563
    const/4 v0, 0x0

    .line 564
    .local v0, "policyItem":Lcom/android/server/wm/PolicyItem;
    :try_start_6
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/PolicyImpl;->DIR_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_21} :catch_64
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_21} :catch_64

    .line 565
    .local v1, "fileStream":Ljava/io/FileInputStream;
    :try_start_21
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_5a

    .line 566
    .local v2, "objectStream":Ljava/io/ObjectInputStream;
    :try_start_26
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 567
    .local v3, "object":Ljava/lang/Object;
    instance-of v4, v3, Lcom/android/server/wm/PolicyItem;

    if-eqz v4, :cond_49

    .line 568
    move-object v4, v3

    check-cast v4, Lcom/android/server/wm/PolicyItem;

    move-object v0, v4

    .line 569
    iget-object v4, p0, Lcom/android/server/wm/PolicyImpl;->mController:Lcom/android/server/wm/PackageConfigurationController;

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ReadPolicyItem, PolicyItemName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/PackageConfigurationController;->addLogs(ILjava/lang/String;)V
    :try_end_49
    .catchall {:try_start_26 .. :try_end_49} :catchall_50

    .line 571
    .end local v3    # "object":Ljava/lang/Object;
    :cond_49
    :try_start_49
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_5a

    .end local v2    # "objectStream":Ljava/io/ObjectInputStream;
    :try_start_4c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_64
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4c .. :try_end_4f} :catch_64

    .line 574
    .end local v1    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_83

    .line 564
    .restart local v1    # "fileStream":Ljava/io/FileInputStream;
    .restart local v2    # "objectStream":Ljava/io/ObjectInputStream;
    :catchall_50
    move-exception v3

    :try_start_51
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_59

    :catchall_55
    move-exception v4

    :try_start_56
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "policyItem":Lcom/android/server/wm/PolicyItem;
    .end local v1    # "fileStream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/wm/PolicyImpl;
    .end local p1    # "policyItemName":Ljava/lang/String;
    :goto_59
    throw v3
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_5a

    .end local v2    # "objectStream":Ljava/io/ObjectInputStream;
    .restart local v0    # "policyItem":Lcom/android/server/wm/PolicyItem;
    .restart local v1    # "fileStream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/wm/PolicyImpl;
    .restart local p1    # "policyItemName":Ljava/lang/String;
    :catchall_5a
    move-exception v2

    :try_start_5b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_63

    :catchall_5f
    move-exception v3

    :try_start_60
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "policyItem":Lcom/android/server/wm/PolicyItem;
    .end local p0    # "this":Lcom/android/server/wm/PolicyImpl;
    .end local p1    # "policyItemName":Ljava/lang/String;
    :goto_63
    throw v2
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_64} :catch_64
    .catch Ljava/lang/ClassNotFoundException; {:try_start_60 .. :try_end_64} :catch_64

    .line 571
    .end local v1    # "fileStream":Ljava/io/FileInputStream;
    .restart local v0    # "policyItem":Lcom/android/server/wm/PolicyItem;
    .restart local p0    # "this":Lcom/android/server/wm/PolicyImpl;
    .restart local p1    # "policyItemName":Ljava/lang/String;
    :catch_64
    move-exception v1

    .line 572
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/wm/PolicyImpl;->mController:Lcom/android/server/wm/PackageConfigurationController;

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to read, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/PackageConfigurationController;->addLogs(ILjava/lang/String;)V

    .line 573
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 575
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_83
    return-object v0
.end method

.method private writePolicyItem(Ljava/lang/String;Lcom/android/server/wm/PolicyItem;)V
    .registers 9
    .param p1, "policyItemName"    # Ljava/lang/String;
    .param p2, "policyItem"    # Lcom/android/server/wm/PolicyItem;

    .line 579
    sget-object v0, Lcom/android/server/wm/PolicyImpl;->DIR_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/wm/PolicyImpl;->createDirectoryIfNeeded(Ljava/lang/String;)V

    .line 581
    :try_start_5
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/wm/PolicyImpl;->DIR_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_20} :catch_5a

    .line 582
    .local v0, "fileStream":Ljava/io/FileOutputStream;
    :try_start_20
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_50

    .line 583
    .local v1, "objectStream":Ljava/io/ObjectOutputStream;
    :try_start_25
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 584
    iget-object v2, p0, Lcom/android/server/wm/PolicyImpl;->mController:Lcom/android/server/wm/PackageConfigurationController;

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WritePolicyItem, PolicyItemName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/PackageConfigurationController;->addLogs(ILjava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_25 .. :try_end_3f} :catchall_46

    .line 585
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_50

    .end local v1    # "objectStream":Ljava/io/ObjectOutputStream;
    :try_start_42
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_5a

    .line 588
    .end local v0    # "fileStream":Ljava/io/FileOutputStream;
    goto :goto_79

    .line 581
    .restart local v0    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v1    # "objectStream":Ljava/io/ObjectOutputStream;
    :catchall_46
    move-exception v2

    :try_start_47
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_4f

    :catchall_4b
    move-exception v3

    :try_start_4c
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "fileStream":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/android/server/wm/PolicyImpl;
    .end local p1    # "policyItemName":Ljava/lang/String;
    .end local p2    # "policyItem":Lcom/android/server/wm/PolicyItem;
    :goto_4f
    throw v2
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_50

    .end local v1    # "objectStream":Ljava/io/ObjectOutputStream;
    .restart local v0    # "fileStream":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/wm/PolicyImpl;
    .restart local p1    # "policyItemName":Ljava/lang/String;
    .restart local p2    # "policyItem":Lcom/android/server/wm/PolicyItem;
    :catchall_50
    move-exception v1

    :try_start_51
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_59

    :catchall_55
    move-exception v2

    :try_start_56
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/wm/PolicyImpl;
    .end local p1    # "policyItemName":Ljava/lang/String;
    .end local p2    # "policyItem":Lcom/android/server/wm/PolicyItem;
    :goto_59
    throw v1
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5a} :catch_5a

    .line 585
    .end local v0    # "fileStream":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/wm/PolicyImpl;
    .restart local p1    # "policyItemName":Ljava/lang/String;
    .restart local p2    # "policyItem":Lcom/android/server/wm/PolicyItem;
    :catch_5a
    move-exception v0

    .line 586
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/server/wm/PolicyImpl;->mController:Lcom/android/server/wm/PackageConfigurationController;

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to write, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/PackageConfigurationController;->addLogs(ILjava/lang/String;)V

    .line 587
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 589
    .end local v0    # "e":Ljava/io/IOException;
    :goto_79
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 611
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 612
    const-string v0, "PolicyName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/PolicyImpl;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", Version(Current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/PolicyImpl;->mPolicyItem:Lcom/android/server/wm/PolicyItem;

    iget-object v1, v1, Lcom/android/server/wm/PolicyItem;->mCurrentVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", Local="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/PolicyImpl;->mPolicyItem:Lcom/android/server/wm/PolicyItem;

    iget v1, v1, Lcom/android/server/wm/PolicyItem;->mLocalVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", SCPM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/PolicyImpl;->mPolicyItem:Lcom/android/server/wm/PolicyItem;

    iget v1, v1, Lcom/android/server/wm/PolicyItem;->mScpmVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 616
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "listPrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/PolicyImpl;->mList:Ljava/util/List;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$PolicyImpl$FcVUmnX8KLDeiLSyaEuJhfe49JQ;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/wm/-$$Lambda$PolicyImpl$FcVUmnX8KLDeiLSyaEuJhfe49JQ;-><init>(Lcom/android/server/wm/PolicyImpl;Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 650
    return-void
.end method

.method executeDebugModeLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgNames"    # [Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "configurationName"    # Ljava/lang/String;

    .line 654
    iget-object v0, p0, Lcom/android/server/wm/PolicyImpl;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 655
    const-string v0, "Can not execute, There is no registered callback."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    return-void

    .line 658
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/PolicyImpl;->mController:Lcom/android/server/wm/PackageConfigurationController;

    iget-boolean v0, v0, Lcom/android/server/wm/PackageConfigurationController;->mPolicyDisabled:Z

    if-eqz v0, :cond_1a

    .line 659
    const-string v0, "Policy is disabled."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    return-void

    .line 662
    :cond_1a
    invoke-virtual {p0, p4}, Lcom/android/server/wm/PolicyImpl;->isDisabledConfiguration(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 663
    const-string v0, "Configuration is disabled."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    return-void

    .line 667
    :cond_26
    new-instance v0, Lcom/android/server/wm/PolicyDataMap;

    invoke-direct {v0}, Lcom/android/server/wm/PolicyDataMap;-><init>()V

    .line 668
    .local v0, "tmpPolicyDataMap":Lcom/android/server/wm/PolicyDataMap;
    array-length v1, p2

    const/4 v2, 0x0

    :goto_2d
    if-ge v2, v1, :cond_37

    aget-object v3, p2, v2

    .line 669
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {v0, v3, p3}, Lcom/android/server/wm/PolicyDataMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    .end local v3    # "pkgName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 673
    :cond_37
    iget-object v1, p0, Lcom/android/server/wm/PolicyImpl;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/PackageConfiguration;

    .line 674
    .local v2, "pc":Lcom/android/server/wm/PackageConfiguration;
    iget-object v3, v2, Lcom/android/server/wm/PackageConfiguration;->mName:Ljava/lang/String;

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 675
    invoke-virtual {v2}, Lcom/android/server/wm/PackageConfiguration;->getPolicyDataMap()Lcom/android/server/wm/PolicyDataMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/PolicyDataMap;->putAll(Ljava/util/Map;)V

    .line 676
    goto :goto_5a

    .line 678
    .end local v2    # "pc":Lcom/android/server/wm/PackageConfiguration;
    :cond_59
    goto :goto_3d

    .line 679
    :cond_5a
    :goto_5a
    iget-object v1, p0, Lcom/android/server/wm/PolicyImpl;->mList:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/PolicyImpl;->onPolicyDataMapUpdated(Ljava/util/List;)V

    .line 680
    iget-object v1, p0, Lcom/android/server/wm/PolicyImpl;->mPolicyItem:Lcom/android/server/wm/PolicyItem;

    const-string v2, "Modified"

    iput-object v2, v1, Lcom/android/server/wm/PolicyItem;->mCurrentVersion:Ljava/lang/String;

    .line 681
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/server/wm/PolicyImpl;->propagateToCallbacks(I)V

    .line 683
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Packages="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/PolicyDataMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {p0, p4, p3}, Lcom/android/server/wm/PolicyImpl;->toStringIfNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 685
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 686
    iget-object v3, p0, Lcom/android/server/wm/PolicyImpl;->mController:Lcom/android/server/wm/PackageConfigurationController;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/PackageConfigurationController;->addLogs(ILjava/lang/String;)V

    .line 687
    return-void
.end method

.method executeShellCommandLocked(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .line 690
    const/4 v0, 0x0

    return v0
.end method

.method abstract getLocalVersion()I
.end method

.method abstract getPolicyDataMapFromLocal(Ljava/lang/String;Lcom/android/server/wm/PolicyDataMap;)V
.end method

.method getScpmVersionFromQuery()I
    .registers 9

    .line 592
    iget-object v0, p0, Lcom/android/server/wm/PolicyImpl;->mController:Lcom/android/server/wm/PackageConfigurationController;

    iget-object v0, v0, Lcom/android/server/wm/PackageConfigurationController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/wm/PolicyImpl;->POLICY_LIST_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/server/wm/PolicyImpl;->POLICY_LIST_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/PolicyImpl;->mName:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v5, v7

    const-string/jumbo v4, "policyName=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 595
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_47

    :try_start_20
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_47

    .line 596
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 597
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_35
    .catchall {:try_start_20 .. :try_end_35} :catchall_3b

    .line 599
    if-eqz v0, :cond_3a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 597
    :cond_3a
    return v1

    .line 592
    :catchall_3b
    move-exception v1

    if-eqz v0, :cond_46

    :try_start_3e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_46

    :catchall_42
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_46
    :goto_46
    throw v1

    .line 599
    :cond_47
    if-eqz v0, :cond_4c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 600
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_4c
    return v7
.end method

.method init()V
    .registers 8

    .line 411
    iget-object v0, p0, Lcom/android/server/wm/PolicyImpl;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_11

    .line 412
    iget-object v0, p0, Lcom/android/server/wm/PolicyImpl;->mController:Lcom/android/server/wm/PackageConfigurationController;

    const-string v2, "Can not init, There is no registered callback."

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/PackageConfigurationController;->addLogs(ILjava/lang/String;)V

    .line 413
    return-void

    .line 417
    :cond_11
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/wm/PolicyImpl;->mCallbacks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 418
    .local v0, "callbackNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/wm/PolicyImpl;->mName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/wm/PolicyImpl;->readPolicyItem(Ljava/lang/String;)Lcom/android/server/wm/PolicyItem;

    move-result-object v2

    .line 419
    .local v2, "policyItem":Lcom/android/server/wm/PolicyItem;
    if-eqz v2, :cond_2a

    invoke-virtual {v2, v0}, Lcom/android/server/wm/PolicyItem;->isMismatch(Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 420
    :cond_2a
    if-eqz v2, :cond_44

    .line 421
    iget-object v3, p0, Lcom/android/server/wm/PolicyImpl;->mController:Lcom/android/server/wm/PackageConfigurationController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/wm/PolicyImpl;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is mismatch"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/server/wm/PackageConfigurationController;->addLogs(ILjava/lang/String;)V

    .line 423
    :cond_44
    new-instance v1, Lcom/android/server/wm/PolicyItem;

    invoke-direct {v1, v0}, Lcom/android/server/wm/PolicyItem;-><init>(Ljava/util/Set;)V

    move-object v2, v1

    .line 425
    :cond_4a
    iput-object v2, p0, Lcom/android/server/wm/PolicyImpl;->mPolicyItem:Lcom/android/server/wm/PolicyItem;

    .line 426
    iget-object v1, v2, Lcom/android/server/wm/PolicyItem;->mList:Ljava/util/List;

    iput-object v1, p0, Lcom/android/server/wm/PolicyImpl;->mList:Ljava/util/List;

    .line 429
    invoke-virtual {p0}, Lcom/android/server/wm/PolicyImpl;->getLocalVersion()I

    move-result v1

    iput v1, v2, Lcom/android/server/wm/PolicyItem;->mLocalVersion:I

    .line 430
    iget v1, v2, Lcom/android/server/wm/PolicyItem;->mScpmVersion:I

    iget v3, v2, Lcom/android/server/wm/PolicyItem;->mLocalVersion:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v1, v3, :cond_60

    move v1, v4

    goto :goto_61

    :cond_60
    move v1, v5

    .line 431
    .local v1, "fromLocal":Z
    :goto_61
    if-eqz v1, :cond_87

    .line 432
    iget-object v3, p0, Lcom/android/server/wm/PolicyImpl;->mList:Ljava/util/List;

    new-instance v6, Lcom/android/server/wm/-$$Lambda$PolicyImpl$OXCvo4FLMOCPFrHLSZK9insqNKo;

    invoke-direct {v6, p0}, Lcom/android/server/wm/-$$Lambda$PolicyImpl$OXCvo4FLMOCPFrHLSZK9insqNKo;-><init>(Lcom/android/server/wm/PolicyImpl;)V

    invoke-interface {v3, v6}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 433
    iget-object v3, p0, Lcom/android/server/wm/PolicyImpl;->mList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/PolicyImpl;->onPolicyDataMapUpdated(Ljava/util/List;)V

    .line 435
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v2, Lcom/android/server/wm/PolicyItem;->mLocalVersion:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "(LOCAL)"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/PolicyItem;->mCurrentVersion:Ljava/lang/String;

    .line 438
    :cond_87
    if-eqz v1, :cond_8a

    move v4, v5

    :cond_8a
    invoke-virtual {p0, v4}, Lcom/android/server/wm/PolicyImpl;->propagateToCallbacks(I)V

    .line 439
    return-void
.end method

.method isDisabledConfiguration(Ljava/lang/String;)Z
    .registers 3
    .param p1, "configurationName"    # Ljava/lang/String;

    .line 607
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$dump$6$PolicyImpl(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/PackageConfiguration;)V
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "listPrefix"    # Ljava/lang/String;
    .param p3, "each"    # Lcom/android/server/wm/PackageConfiguration;

    .line 620
    invoke-virtual {p3}, Lcom/android/server/wm/PackageConfiguration;->getPolicyDataMap()Lcom/android/server/wm/PolicyDataMap;

    move-result-object v0

    .line 621
    .local v0, "data":Lcom/android/server/wm/PolicyDataMap;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ConfigurationName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Lcom/android/server/wm/PackageConfiguration;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {v0}, Lcom/android/server/wm/PolicyDataMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Lcom/android/server/wm/PackageConfiguration;->mName:Ljava/lang/String;

    .line 623
    invoke-virtual {p0, v2}, Lcom/android/server/wm/PolicyImpl;->isDisabledConfiguration(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 621
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, "innerPrefix":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wm/PolicyImpl;->mController:Lcom/android/server/wm/PackageConfigurationController;

    iget-boolean v2, v2, Lcom/android/server/wm/PackageConfigurationController;->mPolicyDisabled:Z

    if-nez v2, :cond_bb

    iget-object v2, p3, Lcom/android/server/wm/PackageConfiguration;->mName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/PolicyImpl;->isDisabledConfiguration(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    goto :goto_bb

    .line 630
    :cond_59
    const/4 v2, 0x0

    .line 631
    .local v2, "lineCount":I
    invoke-virtual {v0}, Lcom/android/server/wm/PolicyDataMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 632
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_62
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b7

    .line 633
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "lineCount":I
    .local v4, "lineCount":I
    rem-int/lit8 v2, v2, 0x5

    if-nez v2, :cond_74

    .line 634
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 635
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 637
    :cond_74
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 638
    .local v2, "map":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 639
    .local v5, "packageName":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 640
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 641
    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_aa

    .line 642
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 644
    :cond_aa
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b5

    .line 645
    const-string v7, ", "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 647
    .end local v2    # "map":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_b5
    move v2, v4

    goto :goto_62

    .line 648
    .end local v4    # "lineCount":I
    .local v2, "lineCount":I
    :cond_b7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 649
    return-void

    .line 626
    .end local v2    # "lineCount":I
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_bb
    :goto_bb
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "This package configuration is disabled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    return-void
.end method

.method public synthetic lambda$init$0$PolicyImpl(Lcom/android/server/wm/PackageConfiguration;)V
    .registers 4
    .param p1, "each"    # Lcom/android/server/wm/PackageConfiguration;

    .line 432
    iget-object v0, p1, Lcom/android/server/wm/PackageConfiguration;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/wm/PackageConfiguration;->getPolicyDataMap()Lcom/android/server/wm/PolicyDataMap;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/PolicyImpl;->getPolicyDataMapFromLocal(Ljava/lang/String;Lcom/android/server/wm/PolicyDataMap;)V

    return-void
.end method

.method public synthetic lambda$propagateToCallbacks$4$PolicyImpl(Ljava/util/List;Ljava/lang/String;ILcom/android/server/wm/PolicyDataMap;)V
    .registers 12
    .param p1, "callbacks"    # Ljava/util/List;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "reason"    # I
    .param p4, "tmpPolicyDataMap"    # Lcom/android/server/wm/PolicyDataMap;

    .line 529
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 530
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_79

    .line 531
    iget-object v2, p0, Lcom/android/server/wm/PolicyImpl;->mController:Lcom/android/server/wm/PackageConfigurationController;

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start to propagate to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " callback"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    const/4 v5, 0x1

    if-le v0, v5, :cond_40

    .line 533
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_42

    :cond_40
    const-string v5, ""

    :goto_42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v5, :cond_53

    .line 535
    invoke-static {p3}, Lcom/android/server/wm/PolicyImpl;->propagateReasonToString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_57

    :cond_53
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {p4}, Lcom/android/server/wm/PolicyDataMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 531
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/PackageConfigurationController;->addLogs(ILjava/lang/String;)V

    .line 537
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Consumer;

    .line 538
    .local v2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/PolicyDataMap;>;"
    invoke-interface {v2, p4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_76} :catch_7a

    .line 530
    .end local v2    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/PolicyDataMap;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 543
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_79
    goto :goto_99

    .line 540
    :catch_7a
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 542
    iget-object v1, p0, Lcom/android/server/wm/PolicyImpl;->mController:Lcom/android/server/wm/PackageConfigurationController;

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to propagate, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/PackageConfigurationController;->addLogs(ILjava/lang/String;)V

    .line 544
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_99
    return-void
.end method

.method public synthetic lambda$propagateToCallbacks$5$PolicyImpl(ILcom/android/server/wm/PackageConfiguration;)V
    .registers 14
    .param p1, "reason"    # I
    .param p2, "each"    # Lcom/android/server/wm/PackageConfiguration;

    .line 520
    iget-object v6, p2, Lcom/android/server/wm/PackageConfiguration;->mName:Ljava/lang/String;

    .line 521
    .local v6, "name":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/wm/PolicyImpl;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/List;

    .line 522
    .local v7, "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/util/function/Consumer<Lcom/android/server/wm/PolicyDataMap;>;>;"
    if-eqz v7, :cond_3a

    .line 523
    new-instance v0, Lcom/android/server/wm/PolicyDataMap;

    invoke-direct {v0}, Lcom/android/server/wm/PolicyDataMap;-><init>()V

    move-object v8, v0

    .line 524
    .local v8, "tmpPolicyDataMap":Lcom/android/server/wm/PolicyDataMap;
    iget-object v0, p0, Lcom/android/server/wm/PolicyImpl;->mController:Lcom/android/server/wm/PackageConfigurationController;

    iget-boolean v0, v0, Lcom/android/server/wm/PackageConfigurationController;->mPolicyDisabled:Z

    if-nez v0, :cond_26

    invoke-virtual {p0, v6}, Lcom/android/server/wm/PolicyImpl;->isDisabledConfiguration(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 525
    invoke-virtual {p2}, Lcom/android/server/wm/PackageConfiguration;->getPolicyDataMap()Lcom/android/server/wm/PolicyDataMap;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/server/wm/PolicyDataMap;->putAll(Ljava/util/Map;)V

    .line 527
    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/PolicyImpl;->mController:Lcom/android/server/wm/PackageConfigurationController;

    iget-object v0, v0, Lcom/android/server/wm/PackageConfigurationController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v10, Lcom/android/server/wm/-$$Lambda$PolicyImpl$SZVk_bV73q_s0DXkBLCFqLB3194;

    move-object v0, v10

    move-object v1, p0

    move-object v2, v7

    move-object v3, v6

    move v4, p1

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/-$$Lambda$PolicyImpl$SZVk_bV73q_s0DXkBLCFqLB3194;-><init>(Lcom/android/server/wm/PolicyImpl;Ljava/util/List;Ljava/lang/String;ILcom/android/server/wm/PolicyDataMap;)V

    invoke-virtual {v9, v10}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 546
    .end local v8    # "tmpPolicyDataMap":Lcom/android/server/wm/PolicyDataMap;
    :cond_3a
    return-void
.end method

.method onPolicyDataMapUpdated(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/PackageConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 604
    .local p1, "packageConfigurationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/PackageConfiguration;>;"
    return-void
.end method

.method propagateToCallbacks(I)V
    .registers 5
    .param p1, "reason"    # I

    .line 516
    iget-object v0, p0, Lcom/android/server/wm/PolicyImpl;->mController:Lcom/android/server/wm/PackageConfigurationController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to propagate to callbacks("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/PolicyImpl;->mCallbacks:Ljava/util/Map;

    .line 517
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v2, :cond_23

    invoke-static {p1}, Lcom/android/server/wm/PolicyImpl;->propagateReasonToString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_27

    :cond_23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 516
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/PackageConfigurationController;->addLogs(ILjava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/android/server/wm/PolicyImpl;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$PolicyImpl$F77UI9z1H1jZ1IO1L-Q3R1CyW80;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$PolicyImpl$F77UI9z1H1jZ1IO1L-Q3R1CyW80;-><init>(Lcom/android/server/wm/PolicyImpl;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 547
    return-void
.end method

.method registerCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "callbackName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/PolicyDataMap;",
            ">;)V"
        }
    .end annotation

    .line 402
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/PolicyDataMap;>;"
    iget-object v0, p0, Lcom/android/server/wm/PolicyImpl;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 403
    .local v0, "callbackList":Ljava/util/List;, "Ljava/util/List<Ljava/util/function/Consumer<Lcom/android/server/wm/PolicyDataMap;>;>;"
    if-nez v0, :cond_10

    .line 404
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 406
    :cond_10
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v1, p0, Lcom/android/server/wm/PolicyImpl;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    return-void
.end method

.method toStringIfNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "callbackName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 694
    return-object p2
.end method

.method updatePackageConfigurationsIfNeeded()Z
    .registers 19

    .line 456
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 457
    .local v2, "updated":Z
    iget-object v0, v1, Lcom/android/server/wm/PolicyImpl;->mPolicyItem:Lcom/android/server/wm/PolicyItem;

    iget v3, v0, Lcom/android/server/wm/PolicyItem;->mLocalVersion:I

    .line 458
    .local v3, "localVersion":I
    iget-object v0, v1, Lcom/android/server/wm/PolicyImpl;->mPolicyItem:Lcom/android/server/wm/PolicyItem;

    iget v4, v0, Lcom/android/server/wm/PolicyItem;->mScpmVersion:I

    .line 459
    .local v4, "scpmVersion":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/PolicyImpl;->getScpmVersionFromQuery()I

    move-result v5

    .line 460
    .local v5, "scpmVersionFromQuery":I
    iget-object v0, v1, Lcom/android/server/wm/PolicyImpl;->mController:Lcom/android/server/wm/PackageConfigurationController;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/android/server/wm/PolicyImpl;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Version(Local="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", SCPM="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Query="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v0, v7, v6}, Lcom/android/server/wm/PackageConfigurationController;->addLogs(ILjava/lang/String;)V

    .line 462
    if-nez v5, :cond_56

    iget v0, v1, Lcom/android/server/wm/PolicyImpl;->mRetryNumber:I

    add-int/lit8 v6, v0, -0x1

    iput v6, v1, Lcom/android/server/wm/PolicyImpl;->mRetryNumber:I

    if-lez v0, :cond_56

    .line 464
    iget-object v0, v1, Lcom/android/server/wm/PolicyImpl;->mController:Lcom/android/server/wm/PackageConfigurationController;

    iget-object v6, v1, Lcom/android/server/wm/PolicyImpl;->mName:Ljava/lang/String;

    const-wide/32 v7, 0x927c0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/wm/PackageConfigurationController;->scheduleUpdatePolicyItem(Ljava/lang/String;J)V

    goto/16 :goto_177

    .line 465
    :cond_56
    if-le v5, v4, :cond_177

    if-le v5, v3, :cond_177

    .line 466
    iget-object v0, v1, Lcom/android/server/wm/PolicyImpl;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 467
    .local v6, "size":I
    const-string v8, "data1=?"

    .line 468
    .local v8, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    .line 469
    .local v9, "selections":Ljava/lang/StringBuilder;
    new-array v15, v6, [Ljava/lang/String;

    .line 470
    .local v15, "selectionArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6b
    if-ge v0, v6, :cond_88

    .line 471
    if-lez v0, :cond_74

    .line 472
    const-string v10, " or "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    :cond_74
    const-string v10, "data1=?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    iget-object v10, v1, Lcom/android/server/wm/PolicyImpl;->mList:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/PackageConfiguration;

    iget-object v10, v10, Lcom/android/server/wm/PackageConfiguration;->mName:Ljava/lang/String;

    aput-object v10, v15, v0

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 478
    .end local v0    # "i":I
    :cond_88
    sget-object v0, Lcom/android/server/wm/PolicyImpl;->AUTHORITY_URI:Landroid/net/Uri;

    .line 479
    const-string/jumbo v10, "policy_item"

    invoke-static {v0, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v10, v1, Lcom/android/server/wm/PolicyImpl;->mName:Ljava/lang/String;

    .line 478
    invoke-static {v0, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 482
    .local v16, "policyItemUri":Landroid/net/Uri;
    iget-object v0, v1, Lcom/android/server/wm/PolicyImpl;->mController:Lcom/android/server/wm/PackageConfigurationController;

    iget-object v0, v0, Lcom/android/server/wm/PackageConfigurationController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v12, 0x0

    .line 483
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v0, 0x0

    .line 482
    move-object/from16 v11, v16

    move-object v14, v15

    move-object/from16 v17, v15

    .end local v15    # "selectionArgs":[Ljava/lang/String;
    .local v17, "selectionArgs":[Ljava/lang/String;
    move-object v15, v0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 484
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_b1
    iget-object v0, v1, Lcom/android/server/wm/PolicyImpl;->mController:Lcom/android/server/wm/PackageConfigurationController;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cursor "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_d5

    .line 485
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "count="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_d8

    :cond_d5
    const-string/jumbo v12, "is null"

    :goto_d8
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", SelectionArgs="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 484
    const/4 v12, 0x3

    invoke-virtual {v0, v12, v11}, Lcom/android/server/wm/PackageConfigurationController;->addLogs(ILjava/lang/String;)V

    .line 487
    if-eqz v10, :cond_140

    .line 488
    iget-object v0, v1, Lcom/android/server/wm/PolicyImpl;->mList:Ljava/util/List;

    sget-object v11, Lcom/android/server/wm/-$$Lambda$PolicyImpl$UL_dwV5vYvyLpstFMTScVN-q9Hw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$PolicyImpl$UL_dwV5vYvyLpstFMTScVN-q9Hw;

    invoke-interface {v0, v11}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 489
    :goto_f8
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_116

    .line 490
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "packageName":Ljava/lang/String;
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 492
    .local v11, "configurationName":Ljava/lang/String;
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 493
    .local v13, "value":Ljava/lang/String;
    iget-object v14, v1, Lcom/android/server/wm/PolicyImpl;->mList:Ljava/util/List;

    new-instance v15, Lcom/android/server/wm/-$$Lambda$PolicyImpl$WCyggSyPyuuzzAJm0oVfIM1GNNk;

    invoke-direct {v15, v11, v0, v13}, Lcom/android/server/wm/-$$Lambda$PolicyImpl$WCyggSyPyuuzzAJm0oVfIM1GNNk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v15}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 498
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v11    # "configurationName":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    goto :goto_f8

    .line 499
    :cond_116
    iget-object v0, v1, Lcom/android/server/wm/PolicyImpl;->mList:Ljava/util/List;

    sget-object v7, Lcom/android/server/wm/-$$Lambda$PolicyImpl$PsrQgWTzBRvy1AKRSpYyp7MndhU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$PolicyImpl$PsrQgWTzBRvy1AKRSpYyp7MndhU;

    invoke-interface {v0, v7}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 500
    iget-object v0, v1, Lcom/android/server/wm/PolicyImpl;->mList:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/PolicyImpl;->onPolicyDataMapUpdated(Ljava/util/List;)V

    .line 502
    iget-object v0, v1, Lcom/android/server/wm/PolicyImpl;->mPolicyItem:Lcom/android/server/wm/PolicyItem;

    iput v5, v0, Lcom/android/server/wm/PolicyItem;->mScpmVersion:I

    .line 503
    iget-object v0, v1, Lcom/android/server/wm/PolicyImpl;->mPolicyItem:Lcom/android/server/wm/PolicyItem;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "(SCPM)"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/wm/PolicyItem;->mCurrentVersion:Ljava/lang/String;

    .line 504
    const/4 v2, 0x1

    .line 506
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/PolicyImpl;->propagateToCallbacks(I)V
    :try_end_140
    .catchall {:try_start_b1 .. :try_end_140} :catchall_168

    .line 508
    :cond_140
    if-eqz v10, :cond_145

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 509
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_145
    iget-object v0, v1, Lcom/android/server/wm/PolicyImpl;->mController:Lcom/android/server/wm/PackageConfigurationController;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CurrentVersion="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/wm/PolicyImpl;->mPolicyItem:Lcom/android/server/wm/PolicyItem;

    iget-object v10, v10, Lcom/android/server/wm/PolicyItem;->mCurrentVersion:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", updated="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v12, v7}, Lcom/android/server/wm/PackageConfigurationController;->addLogs(ILjava/lang/String;)V

    goto :goto_177

    .line 482
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :catchall_168
    move-exception v0

    move v7, v2

    move-object v2, v0

    .end local v2    # "updated":Z
    .local v7, "updated":Z
    if-eqz v10, :cond_176

    :try_start_16d
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_170
    .catchall {:try_start_16d .. :try_end_170} :catchall_171

    goto :goto_176

    :catchall_171
    move-exception v0

    move-object v11, v0

    invoke-virtual {v2, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_176
    :goto_176
    throw v2

    .line 512
    .end local v6    # "size":I
    .end local v7    # "updated":Z
    .end local v8    # "selection":Ljava/lang/String;
    .end local v9    # "selections":Ljava/lang/StringBuilder;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v16    # "policyItemUri":Landroid/net/Uri;
    .end local v17    # "selectionArgs":[Ljava/lang/String;
    .restart local v2    # "updated":Z
    :cond_177
    :goto_177
    return v2
.end method

.method updatePolicyItem(Z)V
    .registers 5
    .param p1, "forced"    # Z

    .line 442
    iget-object v0, p0, Lcom/android/server/wm/PolicyImpl;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 443
    iget-object v0, p0, Lcom/android/server/wm/PolicyImpl;->mController:Lcom/android/server/wm/PackageConfigurationController;

    const/4 v1, 0x5

    const-string v2, "Can not update, There is no registered callback."

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/PackageConfigurationController;->addLogs(ILjava/lang/String;)V

    .line 444
    return-void

    .line 447
    :cond_11
    if-eqz p1, :cond_18

    .line 448
    iget-object v0, p0, Lcom/android/server/wm/PolicyImpl;->mPolicyItem:Lcom/android/server/wm/PolicyItem;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/wm/PolicyItem;->mScpmVersion:I

    .line 450
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/PolicyImpl;->updatePackageConfigurationsIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 451
    iget-object v0, p0, Lcom/android/server/wm/PolicyImpl;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/PolicyImpl;->mPolicyItem:Lcom/android/server/wm/PolicyItem;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/PolicyImpl;->writePolicyItem(Ljava/lang/String;Lcom/android/server/wm/PolicyItem;)V

    .line 453
    :cond_25
    return-void
.end method
