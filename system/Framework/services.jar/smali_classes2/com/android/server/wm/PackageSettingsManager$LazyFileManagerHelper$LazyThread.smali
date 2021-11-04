.class Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;
.super Ljava/lang/Thread;
.source "PackageSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyThread"
.end annotation


# static fields
.field private static final THREAD_NAME:Ljava/lang/String; = "LazyFileManagerHelper"


# instance fields
.field private final mFileHandlerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/wm/PackageSettingsManager$FileHandler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;)V
    .registers 2

    .line 386
    iput-object p1, p0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;->this$0:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;

    .line 387
    const-string p1, "LazyFileManagerHelper"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 384
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;->mFileHandlerSet:Ljava/util/Set;

    .line 388
    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;

    .line 381
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;->mFileHandlerSet:Ljava/util/Set;

    return-object v0
.end method

.method private getDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p1, "pathname"    # Ljava/lang/String;

    .line 461
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 463
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    const-string v2, "PackageSettingsManager"

    if-eqz v1, :cond_28

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create directory: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 466
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to create directory: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_3c
    :goto_3c
    return-object v0
.end method

.method private loadFile(Lcom/android/server/wm/PackageSettingsManager$FileHandler;)V
    .registers 13
    .param p1, "fileHandler"    # Lcom/android/server/wm/PackageSettingsManager$FileHandler;

    .line 419
    # getter for: Lcom/android/server/wm/PackageSettingsManager$FileHandler;->mFilePath:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/wm/PackageSettingsManager$FileHandler;->access$1000(Lcom/android/server/wm/PackageSettingsManager$FileHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;->getDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 420
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 421
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_a5

    array-length v2, v1

    if-nez v2, :cond_13

    goto/16 :goto_a5

    .line 425
    :cond_13
    array-length v2, v1

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_a4

    aget-object v4, v1, v3

    .line 426
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 427
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 428
    .local v5, "userId":I
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/wm/PackageSettingsManager$FileHandler;->mFileName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/wm/PackageSettingsManager$FileHandler;->access$1100(Lcom/android/server/wm/PackageSettingsManager$FileHandler;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 432
    const/4 v6, 0x0

    .line 433
    .local v6, "saveNeeded":Z
    :try_start_4a
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4f} :catch_74

    .line 434
    .local v7, "fileStream":Ljava/io/FileInputStream;
    :try_start_4f
    new-instance v8, Ljava/io/ObjectInputStream;

    invoke-direct {v8, v7}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_6a

    .line 435
    .local v8, "objectStream":Ljava/io/ObjectInputStream;
    :try_start_54
    invoke-virtual {p1, v5, v8}, Lcom/android/server/wm/PackageSettingsManager$FileHandler;->loadFile(ILjava/io/ObjectInputStream;)Z

    move-result v9
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_60

    move v6, v9

    .line 436
    :try_start_59
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_6a

    .end local v8    # "objectStream":Ljava/io/ObjectInputStream;
    :try_start_5c
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_74

    .line 440
    .end local v7    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_9b

    .line 433
    .restart local v7    # "fileStream":Ljava/io/FileInputStream;
    .restart local v8    # "objectStream":Ljava/io/ObjectInputStream;
    :catchall_60
    move-exception v9

    :try_start_61
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_65

    goto :goto_69

    :catchall_65
    move-exception v10

    :try_start_66
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "userId":I
    .end local v6    # "saveNeeded":Z
    .end local v7    # "fileStream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;
    .end local p1    # "fileHandler":Lcom/android/server/wm/PackageSettingsManager$FileHandler;
    :goto_69
    throw v9
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_6a

    .end local v8    # "objectStream":Ljava/io/ObjectInputStream;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v1    # "files":[Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "userId":I
    .restart local v6    # "saveNeeded":Z
    .restart local v7    # "fileStream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;
    .restart local p1    # "fileHandler":Lcom/android/server/wm/PackageSettingsManager$FileHandler;
    :catchall_6a
    move-exception v8

    :try_start_6b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    goto :goto_73

    :catchall_6f
    move-exception v9

    :try_start_70
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "userId":I
    .end local v6    # "saveNeeded":Z
    .end local p0    # "this":Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;
    .end local p1    # "fileHandler":Lcom/android/server/wm/PackageSettingsManager$FileHandler;
    :goto_73
    throw v8
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_74} :catch_74

    .line 436
    .end local v7    # "fileStream":Ljava/io/FileInputStream;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v1    # "files":[Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "userId":I
    .restart local v6    # "saveNeeded":Z
    .restart local p0    # "this":Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;
    .restart local p1    # "fileHandler":Lcom/android/server/wm/PackageSettingsManager$FileHandler;
    :catch_74
    move-exception v7

    .line 437
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to loadFile, userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", mRequestPackageSetting=0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    # getter for: Lcom/android/server/wm/PackageSettingsManager$FileHandler;->mRequestPackageSetting:I
    invoke-static {p1}, Lcom/android/server/wm/PackageSettingsManager$FileHandler;->access$1200(Lcom/android/server/wm/PackageSettingsManager$FileHandler;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 437
    const-string v9, "PackageSettingsManager"

    invoke-static {v9, v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_9b
    if-eqz v6, :cond_a0

    .line 442
    invoke-direct {p0, v5, p1}, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;->saveFile(ILcom/android/server/wm/PackageSettingsManager$FileHandler;)V

    .line 425
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "userId":I
    .end local v6    # "saveNeeded":Z
    :cond_a0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_15

    .line 445
    :cond_a4
    return-void

    .line 422
    :cond_a5
    :goto_a5
    return-void
.end method

.method private saveFile(ILcom/android/server/wm/PackageSettingsManager$FileHandler;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "fileHandler"    # Lcom/android/server/wm/PackageSettingsManager$FileHandler;

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wm/PackageSettingsManager$FileHandler;->mFilePath:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/wm/PackageSettingsManager$FileHandler;->access$1000(Lcom/android/server/wm/PackageSettingsManager$FileHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;->getDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 449
    .local v0, "dir":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/wm/PackageSettingsManager$FileHandler;->mFileName:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/wm/PackageSettingsManager$FileHandler;->access$1100(Lcom/android/server/wm/PackageSettingsManager$FileHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, "name":Ljava/lang/String;
    :try_start_36
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3b} :catch_5e

    .line 451
    .local v2, "fileStream":Ljava/io/FileOutputStream;
    :try_start_3b
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_54

    .line 452
    .local v3, "objectStream":Ljava/io/ObjectOutputStream;
    :try_start_40
    invoke-virtual {p2, p1, v3}, Lcom/android/server/wm/PackageSettingsManager$FileHandler;->saveFile(ILjava/io/ObjectOutputStream;)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_4a

    .line 453
    :try_start_43
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_54

    .end local v3    # "objectStream":Ljava/io/ObjectOutputStream;
    :try_start_46
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_5e

    .line 457
    .end local v2    # "fileStream":Ljava/io/FileOutputStream;
    goto :goto_85

    .line 450
    .restart local v2    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v3    # "objectStream":Ljava/io/ObjectOutputStream;
    :catchall_4a
    move-exception v4

    :try_start_4b
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_53

    :catchall_4f
    move-exception v5

    :try_start_50
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "fileStream":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;
    .end local p1    # "userId":I
    .end local p2    # "fileHandler":Lcom/android/server/wm/PackageSettingsManager$FileHandler;
    :goto_53
    throw v4
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_54

    .end local v3    # "objectStream":Ljava/io/ObjectOutputStream;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "fileStream":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;
    .restart local p1    # "userId":I
    .restart local p2    # "fileHandler":Lcom/android/server/wm/PackageSettingsManager$FileHandler;
    :catchall_54
    move-exception v3

    :try_start_55
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_59

    goto :goto_5d

    :catchall_59
    move-exception v4

    :try_start_5a
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "name":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;
    .end local p1    # "userId":I
    .end local p2    # "fileHandler":Lcom/android/server/wm/PackageSettingsManager$FileHandler;
    :goto_5d
    throw v3
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5e} :catch_5e

    .line 453
    .end local v2    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;
    .restart local p1    # "userId":I
    .restart local p2    # "fileHandler":Lcom/android/server/wm/PackageSettingsManager$FileHandler;
    :catch_5e
    move-exception v2

    .line 454
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to saveFile, userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mRequestPackageSetting=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    # getter for: Lcom/android/server/wm/PackageSettingsManager$FileHandler;->mRequestPackageSetting:I
    invoke-static {p2}, Lcom/android/server/wm/PackageSettingsManager$FileHandler;->access$1200(Lcom/android/server/wm/PackageSettingsManager$FileHandler;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 454
    const-string v4, "PackageSettingsManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 458
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_85
    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$PackageSettingsManager$LazyFileManagerHelper$LazyThread(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 7
    .param p1, "userId"    # Ljava/lang/Integer;
    .param p2, "requestPackageSetting"    # Ljava/lang/Integer;

    .line 400
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;->mFileHandlerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PackageSettingsManager$FileHandler;

    .line 401
    .local v1, "fileHandler":Lcom/android/server/wm/PackageSettingsManager$FileHandler;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 402
    # getter for: Lcom/android/server/wm/PackageSettingsManager$FileHandler;->mRequestPackageSetting:I
    invoke-static {v1}, Lcom/android/server/wm/PackageSettingsManager$FileHandler;->access$1200(Lcom/android/server/wm/PackageSettingsManager$FileHandler;)I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_24

    .line 403
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;->saveFile(ILcom/android/server/wm/PackageSettingsManager$FileHandler;)V

    .line 405
    .end local v1    # "fileHandler":Lcom/android/server/wm/PackageSettingsManager$FileHandler;
    :cond_24
    goto :goto_6

    .line 406
    :cond_25
    return-void
.end method

.method public run()V
    .registers 4

    .line 392
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 393
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;->mFileHandlerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PackageSettingsManager$FileHandler;

    .line 394
    .local v1, "fileHandler":Lcom/android/server/wm/PackageSettingsManager$FileHandler;
    invoke-direct {p0, v1}, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;->loadFile(Lcom/android/server/wm/PackageSettingsManager$FileHandler;)V

    .line 395
    .end local v1    # "fileHandler":Lcom/android/server/wm/PackageSettingsManager$FileHandler;
    goto :goto_b

    .line 397
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;->this$0:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;

    monitor-enter v0

    .line 398
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;->this$0:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;

    # getter for: Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;->mRequestUserIdQueue:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;->access$900(Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_41

    .line 399
    iget-object v1, p0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;->this$0:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;

    # getter for: Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;->mRequestUserIdQueue:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;->access$900(Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$LazyFileManagerHelper$LazyThread$tRi6w_42sbged0zsrtk6gliT1TY;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$LazyFileManagerHelper$LazyThread$tRi6w_42sbged0zsrtk6gliT1TY;-><init>(Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 407
    iget-object v1, p0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;->this$0:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;

    # getter for: Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;->mRequestUserIdQueue:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;->access$900(Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_41
    .catchall {:try_start_1e .. :try_end_41} :catchall_4a

    .line 411
    :cond_41
    :try_start_41
    iget-object v1, p0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;->this$0:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_46} :catch_47
    .catchall {:try_start_41 .. :try_end_46} :catchall_4a

    .line 413
    goto :goto_48

    .line 412
    :catch_47
    move-exception v1

    .line 414
    :goto_48
    :try_start_48
    monitor-exit v0

    goto :goto_1b

    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_4a

    throw v1
.end method
