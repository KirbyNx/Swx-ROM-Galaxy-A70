.class public Lcom/android/server/enterprise/auditlog/Dumper;
.super Ljava/lang/Thread;
.source "Dumper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Dumper"

.field private static final TEMP_FILENAME:Ljava/lang/String; = "/temp/"


# instance fields
.field private mBegin:J

.field private mDeviceInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpFilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpResult:Z

.field private mEnd:J

.field private mFilter:Lcom/android/server/enterprise/auditlog/Filter;

.field private mHeader:Ljava/lang/StringBuilder;

.field private mHeaderDate:Ljava/text/SimpleDateFormat;

.field private mIsFullDump:Z

.field private mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

.field private mPackageName:Ljava/lang/String;

.field private mPfd:Landroid/os/ParcelFileDescriptor;

.field private mTemporaryDirectory:Ljava/io/File;

.field private mTemporaryPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLandroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;Lcom/android/server/enterprise/auditlog/IObserver;)V
    .registers 10
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .param p5, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p7, "obs"    # Lcom/android/server/enterprise/auditlog/IObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;",
            "Lcom/android/server/enterprise/auditlog/IObserver;",
            ")V"
        }
    .end annotation

    .line 75
    .local p6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    .line 69
    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 76
    iput-object p5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 77
    iput-object p6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    .line 78
    iput-object p7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    .line 79
    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 80
    iput-wide p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    .line 81
    iput-wide p3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/temp/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    .line 85
    return-void
.end method

.method private appendFileNodeToTemporaryFile(Ljava/io/File;)Z
    .registers 11
    .param p1, "srcFile"    # Ljava/io/File;

    .line 526
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    const-string v1, "Dumper"

    const/4 v2, 0x0

    if-eqz v0, :cond_91

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_91

    .line 531
    :cond_f
    const/4 v0, 0x0

    .line 532
    .local v0, "srcInpStream":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 534
    .local v3, "tempDestFile":Ljava/io/FileOutputStream;
    :try_start_11
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/temp.gz"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 536
    .local v4, "destFile":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v3, v5

    .line 537
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v5

    .line 538
    const/high16 v5, 0x10000

    new-array v5, v5, [B

    .line 540
    .local v5, "buffer":[B
    :goto_3e
    invoke-virtual {v0, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "length":I
    if-lez v7, :cond_49

    .line 541
    invoke-virtual {v3, v5, v2, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_48} :catch_59
    .catchall {:try_start_11 .. :try_end_48} :catchall_57

    goto :goto_3e

    .line 547
    .end local v4    # "destFile":Ljava/io/File;
    .end local v5    # "buffer":[B
    .end local v8    # "length":I
    :cond_49
    nop

    .line 549
    :try_start_4a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    .line 551
    goto :goto_4f

    .line 550
    :catch_4e
    move-exception v1

    .line 553
    :goto_4f
    nop

    .line 555
    :try_start_50
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    .line 557
    :goto_53
    goto :goto_56

    .line 556
    :catch_54
    move-exception v1

    goto :goto_53

    .line 560
    :goto_56
    return v6

    .line 547
    :catchall_57
    move-exception v1

    goto :goto_82

    .line 543
    :catch_59
    move-exception v4

    .line 544
    .local v4, "ioex":Ljava/io/IOException;
    :try_start_5a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to append file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_5a .. :try_end_72} :catchall_57

    .line 545
    nop

    .line 547
    if-eqz v0, :cond_7a

    .line 549
    :try_start_75
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    .line 551
    goto :goto_7a

    .line 550
    :catch_79
    move-exception v1

    .line 553
    :cond_7a
    :goto_7a
    if-eqz v3, :cond_81

    .line 555
    :try_start_7c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    .line 557
    goto :goto_81

    .line 556
    :catch_80
    move-exception v1

    .line 545
    :cond_81
    :goto_81
    return v2

    .line 547
    .end local v4    # "ioex":Ljava/io/IOException;
    :goto_82
    if-eqz v0, :cond_89

    .line 549
    :try_start_84
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    .line 551
    goto :goto_89

    .line 550
    :catch_88
    move-exception v2

    .line 553
    :cond_89
    :goto_89
    if-eqz v3, :cond_90

    .line 555
    :try_start_8b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f

    .line 557
    goto :goto_90

    .line 556
    :catch_8f
    move-exception v2

    .line 559
    :cond_90
    :goto_90
    throw v1

    .line 527
    .end local v0    # "srcInpStream":Ljava/io/FileInputStream;
    .end local v3    # "tempDestFile":Ljava/io/FileOutputStream;
    :cond_91
    :goto_91
    const-string v0, "Invalid temporary directory, cannot create file"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return v2
.end method

.method private concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;
    .registers 9
    .param p1, "tempHeaderFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .line 483
    .local p2, "mDumpFilesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    const-string v0, "Dumper"

    const/4 v1, 0x0

    .line 485
    .local v1, "generatedFile":Ljava/io/File;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 487
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 488
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 489
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 494
    :cond_1b
    :try_start_1b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/Dumper;->appendFileNodeToTemporaryFile(Ljava/io/File;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2b

    .line 495
    const-string v3, "Failed to append tempHeaderFile"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->removeTempFile()V

    .line 497
    return-object v4

    .line 500
    :cond_2b
    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 501
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 502
    .local v3, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getWasWritten()Z

    move-result v5

    if-nez v5, :cond_44

    .line 503
    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 504
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2b

    .line 505
    :cond_44
    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 507
    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/auditlog/Dumper;->appendFileNodeToTemporaryFile(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 508
    const-string v5, "Failed to append file node"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->removeTempFile()V

    .line 510
    return-object v4

    .line 515
    .end local v3    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :cond_61
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    if-eqz v3, :cond_82

    .line 516
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/temp.gz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_81} :catch_83

    move-object v1, v3

    .line 520
    :cond_82
    goto :goto_9c

    .line 518
    :catch_83
    move-exception v3

    .line 519
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "concatenateFiles.Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_9c
    return-object v1
.end method

.method private createHeader()V
    .registers 7

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    .line 126
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd \'at\' HH:mm:ss z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeaderDate:Ljava/text/SimpleDateFormat;

    .line 127
    const-string v0, "----------------------------------------------\n"

    .line 129
    .local v0, "separator":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDeviceInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 134
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string v2, "\n"

    if-eqz v1, :cond_47

    .line 135
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "temp":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .end local v3    # "temp":Ljava/lang/String;
    goto :goto_22

    .line 143
    :cond_47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump Log Generated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeaderDate:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "dateAndTime":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    return-void
.end method

.method private createHeaderTempFile(Ljava/io/File;)V
    .registers 6
    .param p1, "headerFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "outputStream":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 340
    .local v1, "gzipStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    .line 341
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 343
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_32

    .line 346
    nop

    .line 348
    :try_start_21
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 349
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_27} :catch_28

    goto :goto_29

    .line 350
    :catch_28
    move-exception v2

    :goto_29
    nop

    .line 352
    nop

    .line 354
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_2f

    .line 355
    :goto_2e
    goto :goto_31

    :catch_2f
    move-exception v2

    goto :goto_2e

    .line 359
    :goto_31
    return-void

    .line 346
    :catchall_32
    move-exception v2

    if-eqz v1, :cond_3d

    .line 348
    :try_start_35
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 349
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3b} :catch_3c

    goto :goto_3d

    .line 350
    :catch_3c
    move-exception v3

    .line 352
    :cond_3d
    :goto_3d
    if-eqz v0, :cond_45

    .line 354
    :try_start_3f
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_43

    .line 355
    :goto_42
    goto :goto_45

    :catch_43
    move-exception v3

    goto :goto_42

    .line 357
    :cond_45
    :goto_45
    throw v2
.end method

.method private fullDump()V
    .registers 23

    .line 361
    move-object/from16 v1, p0

    const-string v2, "failed to close fileStreamFull at fullDump"

    const-string v3, "failed to close outStream at fullDump"

    const-string v4, "failed to close fileStream at fullDump"

    const-string v5, "failed to close gizp stream at fullDump"

    const-string v6, "failed to close bufferedReader at fullDump"

    const-string/jumbo v7, "run.IOException "

    const-string v8, "Dumper"

    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 363
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    iget-object v10, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    .line 364
    .local v10, "directoryPath":Ljava/lang/String;
    const/4 v11, 0x0

    .line 365
    .local v11, "fileStream":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 367
    .local v12, "fileStreamFull":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 368
    .local v13, "gzipStream":Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 369
    .local v14, "fileStreamOut":Ljava/io/OutputStream;
    const/4 v15, 0x0

    .line 370
    .local v15, "mZos":Ljava/util/zip/GZIPOutputStream;
    const/16 v16, 0x0

    .line 371
    .local v16, "decoder":Ljava/io/Reader;
    const/16 v17, 0x0

    .line 373
    .local v17, "bufferedReader":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 376
    .local v18, "tempHeaderFile":Ljava/io/File;
    move-object/from16 v19, v11

    .end local v11    # "fileStream":Ljava/io/InputStream;
    .local v19, "fileStream":Ljava/io/InputStream;
    :try_start_26
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v11, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v14, v0

    .line 377
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    new-instance v11, Ljava/io/BufferedOutputStream;

    invoke-direct {v11, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v11}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v15, v0

    .line 379
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3f} :catch_25f
    .catchall {:try_start_26 .. :try_end_3f} :catchall_255

    if-eqz v0, :cond_13f

    move-object/from16 v11, v19

    .line 380
    .end local v19    # "fileStream":Ljava/io/InputStream;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    :goto_43
    :try_start_43
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_124

    .line 381
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 382
    .local v0, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getWasWritten()Z

    move-result v19
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_53} :catch_136
    .catchall {:try_start_43 .. :try_end_53} :catchall_12c

    if-nez v19, :cond_70

    .line 383
    :try_start_55
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 384
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5b} :catch_69
    .catchall {:try_start_55 .. :try_end_5b} :catchall_61

    .line 385
    move-object/from16 v20, v9

    move-object/from16 v19, v11

    goto/16 :goto_11e

    .line 430
    .end local v0    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :catchall_61
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object v9, v0

    goto/16 :goto_2ec

    .line 424
    :catch_69
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    goto/16 :goto_266

    .line 386
    .restart local v0    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :cond_70
    :try_start_70
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_78} :catch_136
    .catchall {:try_start_70 .. :try_end_78} :catchall_12c

    if-eqz v19, :cond_118

    .line 388
    move-object/from16 v20, v9

    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .local v20, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :try_start_7c
    new-instance v9, Ljava/io/FileInputStream;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7e} :catch_111
    .catchall {:try_start_7c .. :try_end_7e} :catchall_109

    move-object/from16 v19, v11

    .end local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v19    # "fileStream":Ljava/io/InputStream;
    :try_start_80
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_87} :catch_160
    .catchall {:try_start_80 .. :try_end_87} :catchall_158

    move-object v11, v9

    .line 389
    .end local v19    # "fileStream":Ljava/io/InputStream;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    :try_start_88
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v9, v11}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v13, v9

    .line 390
    new-instance v9, Ljava/io/InputStreamReader;

    move-object/from16 v21, v0

    .end local v0    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .local v21, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    const-string v0, "UTF-8"

    invoke-direct {v9, v13, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_97} :catch_104
    .catchall {:try_start_88 .. :try_end_97} :catchall_fe

    .line 391
    .end local v16    # "decoder":Ljava/io/Reader;
    .local v9, "decoder":Ljava/io/Reader;
    :try_start_97
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object/from16 v17, v0

    .line 393
    :goto_9e
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .local v16, "line":Ljava/lang/String;
    if-eqz v0, :cond_e3

    .line 394
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a8} :catch_f5
    .catchall {:try_start_97 .. :try_end_a8} :catchall_eb

    move-object/from16 v19, v9

    move-object/from16 v9, v16

    .end local v16    # "line":Ljava/lang/String;
    .local v9, "line":Ljava/lang/String;
    .local v19, "decoder":Ljava/io/Reader;
    :try_start_ac
    invoke-virtual {v0, v9}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v9

    .end local v9    # "line":Ljava/lang/String;
    .restart local v16    # "line":Ljava/lang/String;
    const-string v9, "\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_cc} :catch_dc
    .catchall {:try_start_ac .. :try_end_cc} :catchall_d4

    move-object/from16 v9, v19

    goto :goto_9e

    .line 394
    .end local v16    # "line":Ljava/lang/String;
    .restart local v9    # "line":Ljava/lang/String;
    :cond_cf
    move-object/from16 v16, v9

    .end local v9    # "line":Ljava/lang/String;
    .restart local v16    # "line":Ljava/lang/String;
    move-object/from16 v9, v19

    goto :goto_9e

    .line 430
    .end local v16    # "line":Ljava/lang/String;
    .end local v21    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :catchall_d4
    move-exception v0

    move-object v9, v0

    move-object/from16 v21, v10

    move-object/from16 v16, v19

    goto/16 :goto_2ec

    .line 424
    :catch_dc
    move-exception v0

    move-object/from16 v21, v10

    move-object/from16 v16, v19

    goto/16 :goto_266

    .line 393
    .end local v19    # "decoder":Ljava/io/Reader;
    .local v9, "decoder":Ljava/io/Reader;
    .restart local v16    # "line":Ljava/lang/String;
    .restart local v21    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :cond_e3
    move-object/from16 v19, v9

    .line 395
    .end local v9    # "decoder":Ljava/io/Reader;
    .end local v16    # "line":Ljava/lang/String;
    .restart local v19    # "decoder":Ljava/io/Reader;
    move-object/from16 v16, v19

    move-object/from16 v9, v20

    goto/16 :goto_43

    .line 430
    .end local v19    # "decoder":Ljava/io/Reader;
    .end local v21    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .restart local v9    # "decoder":Ljava/io/Reader;
    :catchall_eb
    move-exception v0

    move-object/from16 v19, v9

    move-object v9, v0

    move-object/from16 v21, v10

    move-object/from16 v16, v19

    .end local v9    # "decoder":Ljava/io/Reader;
    .restart local v19    # "decoder":Ljava/io/Reader;
    goto/16 :goto_2ec

    .line 424
    .end local v19    # "decoder":Ljava/io/Reader;
    .restart local v9    # "decoder":Ljava/io/Reader;
    :catch_f5
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v21, v10

    move-object/from16 v16, v19

    .end local v9    # "decoder":Ljava/io/Reader;
    .restart local v19    # "decoder":Ljava/io/Reader;
    goto/16 :goto_266

    .line 430
    .end local v19    # "decoder":Ljava/io/Reader;
    .local v16, "decoder":Ljava/io/Reader;
    :catchall_fe
    move-exception v0

    move-object v9, v0

    move-object/from16 v21, v10

    goto/16 :goto_2ec

    .line 424
    :catch_104
    move-exception v0

    move-object/from16 v21, v10

    goto/16 :goto_266

    .line 430
    :catchall_109
    move-exception v0

    move-object/from16 v19, v11

    move-object v9, v0

    move-object/from16 v21, v10

    .end local v11    # "fileStream":Ljava/io/InputStream;
    .local v19, "fileStream":Ljava/io/InputStream;
    goto/16 :goto_2ec

    .line 424
    .end local v19    # "fileStream":Ljava/io/InputStream;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    :catch_111
    move-exception v0

    move-object/from16 v19, v11

    move-object/from16 v21, v10

    .end local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v19    # "fileStream":Ljava/io/InputStream;
    goto/16 :goto_266

    .line 386
    .end local v19    # "fileStream":Ljava/io/InputStream;
    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .restart local v0    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    :cond_118
    move-object/from16 v21, v0

    move-object/from16 v20, v9

    move-object/from16 v19, v11

    .line 380
    .end local v0    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .end local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v19    # "fileStream":Ljava/io/InputStream;
    .restart local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :goto_11e
    move-object/from16 v11, v19

    move-object/from16 v9, v20

    goto/16 :goto_43

    .end local v19    # "fileStream":Ljava/io/InputStream;
    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .restart local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    :cond_124
    move-object/from16 v20, v9

    move-object/from16 v19, v11

    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .end local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v19    # "fileStream":Ljava/io/InputStream;
    .restart local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    move-object/from16 v21, v10

    goto/16 :goto_1f4

    .line 430
    .end local v19    # "fileStream":Ljava/io/InputStream;
    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .restart local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    :catchall_12c
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v19, v11

    move-object v9, v0

    move-object/from16 v21, v10

    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .end local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v19    # "fileStream":Ljava/io/InputStream;
    .restart local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    goto/16 :goto_2ec

    .line 424
    .end local v19    # "fileStream":Ljava/io/InputStream;
    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .restart local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    :catch_136
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v19, v11

    move-object/from16 v21, v10

    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .end local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v19    # "fileStream":Ljava/io/InputStream;
    .restart local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    goto/16 :goto_266

    .line 402
    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .restart local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :cond_13f
    move-object/from16 v20, v9

    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .restart local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    if-eqz v10, :cond_1f0

    .line 404
    :try_start_143
    new-instance v0, Ljava/io/File;

    iget-object v9, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 405
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_150} :catch_1e9
    .catchall {:try_start_143 .. :try_end_150} :catchall_1e1

    if-nez v0, :cond_167

    .line 406
    :try_start_152
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_157} :catch_160
    .catchall {:try_start_152 .. :try_end_157} :catchall_158

    goto :goto_167

    .line 430
    :catchall_158
    move-exception v0

    move-object v9, v0

    move-object/from16 v21, v10

    move-object/from16 v11, v19

    goto/16 :goto_2ec

    .line 424
    :catch_160
    move-exception v0

    move-object/from16 v21, v10

    move-object/from16 v11, v19

    goto/16 :goto_266

    .line 408
    :cond_167
    :goto_167
    :try_start_167
    new-instance v0, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/header"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_183} :catch_1e9
    .catchall {:try_start_167 .. :try_end_183} :catchall_1e1

    move-object v9, v0

    .line 409
    .end local v18    # "tempHeaderFile":Ljava/io/File;
    .local v9, "tempHeaderFile":Ljava/io/File;
    :try_start_184
    invoke-direct {v1, v9}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeaderTempFile(Ljava/io/File;)V

    .line 410
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    invoke-direct {v1, v9, v0}, Lcom/android/server/enterprise/auditlog/Dumper;->concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v0

    .line 411
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_1c7

    .line 414
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v12, v11

    .line 415
    const/high16 v11, 0x10000

    new-array v11, v11, [B

    .line 417
    .local v11, "buffer":[B
    :goto_199
    invoke-virtual {v12, v11}, Ljava/io/InputStream;->read([B)I

    move-result v18
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_19d} :catch_1d8
    .catchall {:try_start_184 .. :try_end_19d} :catchall_1ce

    move/from16 v21, v18

    .local v21, "length":I
    if-lez v18, :cond_1b0

    .line 418
    move-object/from16 v18, v9

    move/from16 v9, v21

    move-object/from16 v21, v10

    const/4 v10, 0x0

    .end local v10    # "directoryPath":Ljava/lang/String;
    .local v9, "length":I
    .restart local v18    # "tempHeaderFile":Ljava/io/File;
    .local v21, "directoryPath":Ljava/lang/String;
    :try_start_1a8
    invoke-virtual {v14, v11, v10, v9}, Ljava/io/OutputStream;->write([BII)V

    move-object/from16 v9, v18

    move-object/from16 v10, v21

    goto :goto_199

    .line 420
    .end local v18    # "tempHeaderFile":Ljava/io/File;
    .local v9, "tempHeaderFile":Ljava/io/File;
    .restart local v10    # "directoryPath":Ljava/lang/String;
    .local v21, "length":I
    :cond_1b0
    move-object/from16 v18, v9

    move/from16 v9, v21

    move-object/from16 v21, v10

    .end local v10    # "directoryPath":Ljava/lang/String;
    .local v9, "length":I
    .restart local v18    # "tempHeaderFile":Ljava/io/File;
    .local v21, "directoryPath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1b9
    .catch Ljava/lang/Exception; {:try_start_1a8 .. :try_end_1b9} :catch_1c2
    .catchall {:try_start_1a8 .. :try_end_1b9} :catchall_1bc

    move-object/from16 v11, v19

    goto :goto_1f4

    .line 430
    .end local v0    # "f":Ljava/io/File;
    .end local v9    # "length":I
    .end local v11    # "buffer":[B
    :catchall_1bc
    move-exception v0

    move-object v9, v0

    move-object/from16 v11, v19

    goto/16 :goto_2ec

    .line 424
    :catch_1c2
    move-exception v0

    move-object/from16 v11, v19

    goto/16 :goto_266

    .line 411
    .end local v18    # "tempHeaderFile":Ljava/io/File;
    .end local v21    # "directoryPath":Ljava/lang/String;
    .restart local v0    # "f":Ljava/io/File;
    .local v9, "tempHeaderFile":Ljava/io/File;
    .restart local v10    # "directoryPath":Ljava/lang/String;
    :cond_1c7
    move-object/from16 v18, v9

    move-object/from16 v21, v10

    .end local v9    # "tempHeaderFile":Ljava/io/File;
    .end local v10    # "directoryPath":Ljava/lang/String;
    .restart local v18    # "tempHeaderFile":Ljava/io/File;
    .restart local v21    # "directoryPath":Ljava/lang/String;
    move-object/from16 v11, v19

    goto :goto_1f4

    .line 430
    .end local v0    # "f":Ljava/io/File;
    .end local v18    # "tempHeaderFile":Ljava/io/File;
    .end local v21    # "directoryPath":Ljava/lang/String;
    .restart local v9    # "tempHeaderFile":Ljava/io/File;
    .restart local v10    # "directoryPath":Ljava/lang/String;
    :catchall_1ce
    move-exception v0

    move-object/from16 v18, v9

    move-object/from16 v21, v10

    move-object v9, v0

    move-object/from16 v11, v19

    .end local v9    # "tempHeaderFile":Ljava/io/File;
    .end local v10    # "directoryPath":Ljava/lang/String;
    .restart local v18    # "tempHeaderFile":Ljava/io/File;
    .restart local v21    # "directoryPath":Ljava/lang/String;
    goto/16 :goto_2ec

    .line 424
    .end local v18    # "tempHeaderFile":Ljava/io/File;
    .end local v21    # "directoryPath":Ljava/lang/String;
    .restart local v9    # "tempHeaderFile":Ljava/io/File;
    .restart local v10    # "directoryPath":Ljava/lang/String;
    :catch_1d8
    move-exception v0

    move-object/from16 v18, v9

    move-object/from16 v21, v10

    move-object/from16 v11, v19

    .end local v9    # "tempHeaderFile":Ljava/io/File;
    .end local v10    # "directoryPath":Ljava/lang/String;
    .restart local v18    # "tempHeaderFile":Ljava/io/File;
    .restart local v21    # "directoryPath":Ljava/lang/String;
    goto/16 :goto_266

    .line 430
    .end local v21    # "directoryPath":Ljava/lang/String;
    .restart local v10    # "directoryPath":Ljava/lang/String;
    :catchall_1e1
    move-exception v0

    move-object/from16 v21, v10

    move-object v9, v0

    move-object/from16 v11, v19

    .end local v10    # "directoryPath":Ljava/lang/String;
    .restart local v21    # "directoryPath":Ljava/lang/String;
    goto/16 :goto_2ec

    .line 424
    .end local v21    # "directoryPath":Ljava/lang/String;
    .restart local v10    # "directoryPath":Ljava/lang/String;
    :catch_1e9
    move-exception v0

    move-object/from16 v21, v10

    move-object/from16 v11, v19

    .end local v10    # "directoryPath":Ljava/lang/String;
    .restart local v21    # "directoryPath":Ljava/lang/String;
    goto/16 :goto_266

    .line 402
    .end local v21    # "directoryPath":Ljava/lang/String;
    .restart local v10    # "directoryPath":Ljava/lang/String;
    :cond_1f0
    move-object/from16 v21, v10

    .end local v10    # "directoryPath":Ljava/lang/String;
    .restart local v21    # "directoryPath":Ljava/lang/String;
    move-object/from16 v11, v19

    .line 430
    .end local v19    # "fileStream":Ljava/io/InputStream;
    .local v11, "fileStream":Ljava/io/InputStream;
    :goto_1f4
    if-eqz v18, :cond_1f9

    .line 431
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 435
    :cond_1f9
    nop

    .line 436
    :try_start_1fa
    invoke-virtual {v15}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 437
    invoke-virtual {v15}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_200
    .catch Ljava/io/IOException; {:try_start_1fa .. :try_end_200} :catch_201

    .line 441
    goto :goto_218

    .line 439
    :catch_201
    move-exception v0

    .line 440
    .local v0, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .end local v0    # "e":Ljava/io/IOException;
    :goto_218
    if-eqz v17, :cond_224

    .line 445
    :try_start_21a
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_21d
    .catch Ljava/io/IOException; {:try_start_21a .. :try_end_21d} :catch_21e

    .line 448
    goto :goto_224

    .line 446
    :catch_21e
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 447
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    .end local v0    # "e":Ljava/io/IOException;
    :cond_224
    :goto_224
    if-eqz v13, :cond_230

    .line 452
    :try_start_226
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_229
    .catch Ljava/io/IOException; {:try_start_226 .. :try_end_229} :catch_22a

    .line 456
    goto :goto_230

    .line 454
    :catch_22a
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 455
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v0    # "e":Ljava/io/IOException;
    :cond_230
    :goto_230
    if-eqz v11, :cond_23c

    .line 460
    :try_start_232
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_235
    .catch Ljava/io/IOException; {:try_start_232 .. :try_end_235} :catch_236

    .line 463
    goto :goto_23c

    .line 461
    :catch_236
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 462
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v0    # "e":Ljava/io/IOException;
    :cond_23c
    :goto_23c
    nop

    .line 467
    :try_start_23d
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_240
    .catch Ljava/io/IOException; {:try_start_23d .. :try_end_240} :catch_241

    .line 470
    goto :goto_247

    .line 468
    :catch_241
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 469
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v0    # "e":Ljava/io/IOException;
    :goto_247
    if-eqz v12, :cond_2e9

    .line 474
    :try_start_249
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_24c
    .catch Ljava/io/IOException; {:try_start_249 .. :try_end_24c} :catch_24e

    .line 477
    :goto_24c
    goto/16 :goto_2e9

    .line 475
    :catch_24e
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 476
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_24c

    .line 430
    .end local v11    # "fileStream":Ljava/io/InputStream;
    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .end local v21    # "directoryPath":Ljava/lang/String;
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .restart local v10    # "directoryPath":Ljava/lang/String;
    .restart local v19    # "fileStream":Ljava/io/InputStream;
    :catchall_255
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object v9, v0

    move-object/from16 v11, v19

    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .end local v10    # "directoryPath":Ljava/lang/String;
    .restart local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .restart local v21    # "directoryPath":Ljava/lang/String;
    goto/16 :goto_2ec

    .line 424
    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .end local v21    # "directoryPath":Ljava/lang/String;
    .restart local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .restart local v10    # "directoryPath":Ljava/lang/String;
    :catch_25f
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v11, v19

    .line 425
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .end local v10    # "directoryPath":Ljava/lang/String;
    .end local v19    # "fileStream":Ljava/io/InputStream;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .restart local v21    # "directoryPath":Ljava/lang/String;
    :goto_266
    const/4 v9, 0x0

    :try_start_267
    iput-boolean v9, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    .line 426
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "fullDump.Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v0, v10}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_28b
    .catchall {:try_start_267 .. :try_end_28b} :catchall_2ea

    .line 430
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v18, :cond_290

    .line 431
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 435
    :cond_290
    if-eqz v15, :cond_2b1

    .line 436
    :try_start_292
    invoke-virtual {v15}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 437
    invoke-virtual {v15}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_298
    .catch Ljava/io/IOException; {:try_start_292 .. :try_end_298} :catch_299

    goto :goto_2b1

    .line 439
    :catch_299
    move-exception v0

    .line 440
    .local v0, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b2

    .line 441
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2b1
    :goto_2b1
    nop

    .line 443
    :goto_2b2
    if-eqz v17, :cond_2be

    .line 445
    :try_start_2b4
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_2b7
    .catch Ljava/io/IOException; {:try_start_2b4 .. :try_end_2b7} :catch_2b8

    .line 448
    goto :goto_2be

    .line 446
    :catch_2b8
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 447
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2be
    :goto_2be
    if-eqz v13, :cond_2ca

    .line 452
    :try_start_2c0
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2c3
    .catch Ljava/io/IOException; {:try_start_2c0 .. :try_end_2c3} :catch_2c4

    .line 456
    goto :goto_2ca

    .line 454
    :catch_2c4
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 455
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2ca
    :goto_2ca
    if-eqz v11, :cond_2d6

    .line 460
    :try_start_2cc
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2cf
    .catch Ljava/io/IOException; {:try_start_2cc .. :try_end_2cf} :catch_2d0

    .line 463
    goto :goto_2d6

    .line 461
    :catch_2d0
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 462
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2d6
    :goto_2d6
    if-eqz v14, :cond_2e2

    .line 467
    :try_start_2d8
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_2db
    .catch Ljava/io/IOException; {:try_start_2d8 .. :try_end_2db} :catch_2dc

    .line 470
    goto :goto_2e2

    .line 468
    :catch_2dc
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 469
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2e2
    :goto_2e2
    if-eqz v12, :cond_2e9

    .line 474
    :try_start_2e4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_2e7
    .catch Ljava/io/IOException; {:try_start_2e4 .. :try_end_2e7} :catch_24e

    goto/16 :goto_24c

    .line 480
    :cond_2e9
    :goto_2e9
    return-void

    .line 430
    :catchall_2ea
    move-exception v0

    move-object v9, v0

    :goto_2ec
    if-eqz v18, :cond_2f1

    .line 431
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 435
    :cond_2f1
    if-eqz v15, :cond_312

    .line 436
    :try_start_2f3
    invoke-virtual {v15}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 437
    invoke-virtual {v15}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2f9
    .catch Ljava/io/IOException; {:try_start_2f3 .. :try_end_2f9} :catch_2fa

    goto :goto_312

    .line 439
    :catch_2fa
    move-exception v0

    .line 440
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_313

    .line 441
    .end local v0    # "e":Ljava/io/IOException;
    :cond_312
    :goto_312
    nop

    .line 443
    :goto_313
    if-eqz v17, :cond_31f

    .line 445
    :try_start_315
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_318
    .catch Ljava/io/IOException; {:try_start_315 .. :try_end_318} :catch_319

    .line 448
    goto :goto_31f

    .line 446
    :catch_319
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 447
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    .end local v0    # "e":Ljava/io/IOException;
    :cond_31f
    :goto_31f
    if-eqz v13, :cond_32b

    .line 452
    :try_start_321
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_324
    .catch Ljava/io/IOException; {:try_start_321 .. :try_end_324} :catch_325

    .line 456
    goto :goto_32b

    .line 454
    :catch_325
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 455
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v0    # "e":Ljava/io/IOException;
    :cond_32b
    :goto_32b
    if-eqz v11, :cond_337

    .line 460
    :try_start_32d
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_330
    .catch Ljava/io/IOException; {:try_start_32d .. :try_end_330} :catch_331

    .line 463
    goto :goto_337

    .line 461
    :catch_331
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 462
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v0    # "e":Ljava/io/IOException;
    :cond_337
    :goto_337
    if-eqz v14, :cond_343

    .line 467
    :try_start_339
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_33c
    .catch Ljava/io/IOException; {:try_start_339 .. :try_end_33c} :catch_33d

    .line 470
    goto :goto_343

    .line 468
    :catch_33d
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 469
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v0    # "e":Ljava/io/IOException;
    :cond_343
    :goto_343
    if-eqz v12, :cond_34f

    .line 474
    :try_start_345
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_348
    .catch Ljava/io/IOException; {:try_start_345 .. :try_end_348} :catch_349

    .line 477
    goto :goto_34f

    .line 475
    :catch_349
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 476
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    .end local v0    # "e":Ljava/io/IOException;
    :cond_34f
    :goto_34f
    throw v9
.end method

.method private readFileLineByLine(Ljava/io/File;)Ljava/io/File;
    .registers 15
    .param p1, "f"    # Ljava/io/File;

    .line 254
    const-wide/16 v0, 0x0

    .line 258
    .local v0, "aTime":J
    const/4 v2, 0x0

    .line 259
    .local v2, "returnFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 260
    .local v3, "gZipOut":Ljava/util/zip/GZIPOutputStream;
    const/4 v4, 0x0

    .line 263
    .local v4, "fileStreamOut":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 264
    .local v5, "fileStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 265
    .local v6, "gzipStream":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 266
    .local v7, "decoder":Ljava/io/Reader;
    const/4 v8, 0x0

    .line 269
    .local v8, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_9
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 270
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1d

    .line 271
    iget-object v9, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    .line 274
    :cond_1d
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "Tmp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v9

    .line 275
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v9

    .line 276
    new-instance v9, Ljava/util/zip/GZIPOutputStream;

    new-instance v10, Ljava/io/BufferedOutputStream;

    invoke-direct {v10, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v9, v10}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v9

    .line 278
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v5, v9

    .line 279
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v9, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v9

    .line 280
    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v9, v6, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v7, v9

    .line 281
    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v8, v9

    .line 282
    :cond_6c
    :goto_6c
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .local v10, "line":Ljava/lang/String;
    if-eqz v9, :cond_eb

    .line 283
    const-string v9, " "

    invoke-virtual {v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_79} :catch_d9
    .catchall {:try_start_9 .. :try_end_79} :catchall_d7

    .line 285
    .local v9, "time":[Ljava/lang/String;
    const/4 v11, 0x0

    :try_start_7a
    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11
    :try_end_84
    .catch Ljava/lang/NumberFormatException; {:try_start_7a .. :try_end_84} :catch_d5
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_84} :catch_d9
    .catchall {:try_start_7a .. :try_end_84} :catchall_d7

    move-wide v0, v11

    .line 288
    nop

    .line 290
    :try_start_86
    iget-wide v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v11, v0, v11

    if-lez v11, :cond_8d

    .line 291
    goto :goto_eb

    .line 293
    :cond_8d
    iget-wide v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v11, v0, v11

    if-ltz v11, :cond_6c

    iget-wide v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v11, v0, v11

    if-gtz v11, :cond_6c

    .line 294
    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_9b} :catch_d9
    .catchall {:try_start_86 .. :try_end_9b} :catchall_d7

    const-string v12, "\n"

    if-eqz v11, :cond_be

    .line 295
    :try_start_9f
    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v11, v10}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6c

    .line 296
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    goto :goto_6c

    .line 299
    :cond_be
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_d4} :catch_d9
    .catchall {:try_start_9f .. :try_end_d4} :catchall_d7

    goto :goto_6c

    .line 286
    :catch_d5
    move-exception v11

    .line 287
    .local v11, "e":Ljava/lang/NumberFormatException;
    goto :goto_6c

    .line 309
    .end local v9    # "time":[Ljava/lang/String;
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :catchall_d7
    move-exception v9

    goto :goto_ff

    .line 305
    :catch_d9
    move-exception v9

    .line 306
    .local v9, "e":Ljava/lang/Exception;
    :try_start_da
    const-string v10, "Dumper"

    const-string/jumbo v11, "readFileLineByLine.IOException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v9, v11}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_eb
    .catchall {:try_start_da .. :try_end_eb} :catchall_d7

    .line 309
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_eb
    :goto_eb
    invoke-static {v8}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 310
    invoke-static {v7}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 311
    invoke-static {v6}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 312
    invoke-static {v5}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 313
    invoke-static {v3}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 314
    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 315
    nop

    .line 316
    return-object v2

    .line 309
    :goto_ff
    invoke-static {v8}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 310
    invoke-static {v7}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 311
    invoke-static {v6}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 312
    invoke-static {v5}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 313
    invoke-static {v3}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 314
    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 315
    throw v9
.end method

.method private removeTempFile()V
    .registers 4

    .line 564
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    if-nez v0, :cond_5

    .line 565
    return-void

    .line 567
    :cond_5
    :try_start_5
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/temp.gz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 569
    .local v0, "temp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 570
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2a} :catch_2b

    .line 572
    .end local v0    # "temp":Ljava/io/File;
    :cond_2a
    goto :goto_2c

    .line 571
    :catch_2b
    move-exception v0

    .line 573
    :goto_2c
    return-void
.end method

.method private static safeClose(Ljava/io/Closeable;)V
    .registers 4
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 320
    if-eqz p0, :cond_e

    .line 322
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 325
    goto :goto_e

    .line 323
    :catch_6
    move-exception v0

    .line 324
    .local v0, "ioE":Ljava/io/IOException;
    const-string v1, "Dumper"

    const-string v2, "Failed to close resource."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    .end local v0    # "ioE":Ljava/io/IOException;
    :cond_e
    :goto_e
    return-void
.end method

.method private selectDumpInterval()V
    .registers 20

    .line 153
    move-object/from16 v1, p0

    const-string v2, "failed to close input stream file at selectDumpInterval"

    const-string v3, "Dumper"

    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 154
    .local v4, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    const/4 v0, 0x0

    .line 155
    .local v0, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    const/4 v5, 0x1

    .line 157
    .local v5, "firstFile":Z
    const/4 v6, 0x0

    .line 158
    .local v6, "initFile":Ljava/io/File;
    const/4 v7, 0x0

    .line 159
    .local v7, "endFile":Ljava/io/File;
    const/4 v8, 0x0

    .line 160
    .local v8, "pfInitial":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    const/4 v9, 0x0

    .line 161
    .local v9, "pfFinal":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v10, "listNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    const/4 v11, 0x0

    .line 164
    .local v11, "tempHeaderFile":Ljava/io/File;
    :goto_18
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7c

    .line 165
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 166
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v12

    iget-wide v14, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v12, v12, v14

    if-gez v12, :cond_30

    .line 167
    goto :goto_18

    .line 169
    :cond_30
    const/4 v12, 0x1

    const-string v13, "com.android.server.enterprise.auditlog"

    if-eqz v5, :cond_51

    .line 170
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v14

    if-eqz v14, :cond_51

    .line 171
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v14

    invoke-direct {v1, v14}, Lcom/android/server/enterprise/auditlog/Dumper;->readFileLineByLine(Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 172
    new-instance v14, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-direct {v14, v6, v13}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v8, v14

    .line 174
    invoke-virtual {v8, v12}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setWasWritten(Z)V

    .line 175
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    const/4 v5, 0x0

    .line 177
    goto :goto_18

    .line 180
    :cond_51
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v14

    move-object/from16 v16, v13

    iget-wide v12, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v12, v14, v12

    if-gez v12, :cond_61

    .line 181
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 183
    :cond_61
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/android/server/enterprise/auditlog/Dumper;->readFileLineByLine(Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    .line 184
    new-instance v12, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-object/from16 v13, v16

    invoke-direct {v12, v7, v13}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v9, v12

    .line 186
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setWasWritten(Z)V

    .line 187
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    move-object v12, v9

    move-object v9, v7

    move-object v7, v0

    goto :goto_7f

    .line 164
    :cond_7c
    move-object v12, v9

    move-object v9, v7

    move-object v7, v0

    .line 192
    .end local v0    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .local v7, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .local v9, "endFile":Ljava/io/File;
    .local v12, "pfFinal":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :goto_7f
    new-instance v0, Ljava/io/File;

    iget-object v13, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 193
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_93

    .line 194
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 197
    :cond_93
    new-instance v0, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/header"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 198
    const/4 v13, 0x0

    .line 199
    .local v13, "f":Ljava/io/File;
    const/4 v14, 0x0

    .line 200
    .local v14, "fileStream":Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 202
    .local v15, "outStream":Ljava/io/OutputStream;
    :try_start_b3
    invoke-direct {v1, v11}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeaderTempFile(Ljava/io/File;)V

    .line 203
    invoke-direct {v1, v11, v10}, Lcom/android/server/enterprise/auditlog/Dumper;->concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v0

    move-object v13, v0

    .line 205
    if-eqz v13, :cond_fa

    .line 208
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v14, v0

    .line 209
    new-instance v0, Ljava/io/FileOutputStream;
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_c5} :catch_13b
    .catchall {:try_start_b3 .. :try_end_c5} :catchall_134

    move-object/from16 v16, v4

    .end local v4    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .local v16, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :try_start_c7
    iget-object v4, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v15, v0

    .line 210
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 212
    .local v0, "buffer":[B
    :goto_d5
    invoke-virtual {v14, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_d9} :catch_f6
    .catchall {:try_start_c7 .. :try_end_d9} :catchall_f0

    move/from16 v17, v4

    .local v17, "length":I
    if-lez v4, :cond_eb

    .line 213
    const/4 v4, 0x0

    move/from16 v18, v5

    move/from16 v5, v17

    .end local v17    # "length":I
    .local v5, "length":I
    .local v18, "firstFile":Z
    :try_start_e2
    invoke-virtual {v15, v0, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e5} :catch_e8
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_17a

    move/from16 v5, v18

    goto :goto_d5

    .line 217
    .end local v0    # "buffer":[B
    .end local v5    # "length":I
    :catch_e8
    move-exception v0

    goto/16 :goto_140

    .line 212
    .end local v18    # "firstFile":Z
    .restart local v0    # "buffer":[B
    .local v5, "firstFile":Z
    .restart local v17    # "length":I
    :cond_eb
    move/from16 v18, v5

    move/from16 v5, v17

    .end local v17    # "length":I
    .local v5, "length":I
    .restart local v18    # "firstFile":Z
    goto :goto_fe

    .line 221
    .end local v0    # "buffer":[B
    .end local v18    # "firstFile":Z
    .local v5, "firstFile":Z
    :catchall_f0
    move-exception v0

    move/from16 v18, v5

    move-object v4, v0

    .end local v5    # "firstFile":Z
    .restart local v18    # "firstFile":Z
    goto/16 :goto_17c

    .line 217
    .end local v18    # "firstFile":Z
    .restart local v5    # "firstFile":Z
    :catch_f6
    move-exception v0

    move/from16 v18, v5

    .end local v5    # "firstFile":Z
    .restart local v18    # "firstFile":Z
    goto :goto_140

    .line 205
    .end local v16    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .end local v18    # "firstFile":Z
    .restart local v4    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .restart local v5    # "firstFile":Z
    :cond_fa
    move-object/from16 v16, v4

    move/from16 v18, v5

    .line 221
    .end local v4    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .end local v5    # "firstFile":Z
    .restart local v16    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .restart local v18    # "firstFile":Z
    :goto_fe
    if-eqz v6, :cond_103

    .line 222
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 224
    :cond_103
    if-eqz v9, :cond_108

    .line 225
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 227
    :cond_108
    if-eqz v12, :cond_10d

    .line 228
    invoke-virtual {v12}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 230
    :cond_10d
    if-eqz v8, :cond_112

    .line 231
    invoke-virtual {v8}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 233
    :cond_112
    if-eqz v13, :cond_117

    .line 234
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 236
    :cond_117
    if-eqz v14, :cond_123

    .line 238
    :try_start_119
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_11c} :catch_11d

    .line 241
    goto :goto_123

    .line 239
    :catch_11d
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 240
    .local v0, "ioex":Ljava/io/IOException;
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v0    # "ioex":Ljava/io/IOException;
    :cond_123
    :goto_123
    if-eqz v15, :cond_179

    .line 245
    :try_start_125
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_128} :catch_129

    .line 248
    :goto_128
    goto :goto_179

    .line 246
    :catch_129
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 247
    .local v0, "ioex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ioex":Ljava/lang/Exception;
    goto :goto_128

    .line 221
    .end local v16    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .end local v18    # "firstFile":Z
    .restart local v4    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .restart local v5    # "firstFile":Z
    :catchall_134
    move-exception v0

    move-object/from16 v16, v4

    move/from16 v18, v5

    move-object v4, v0

    .end local v4    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .end local v5    # "firstFile":Z
    .restart local v16    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .restart local v18    # "firstFile":Z
    goto :goto_17c

    .line 217
    .end local v16    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .end local v18    # "firstFile":Z
    .restart local v4    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .restart local v5    # "firstFile":Z
    :catch_13b
    move-exception v0

    move-object/from16 v16, v4

    move/from16 v18, v5

    .line 218
    .end local v4    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .end local v5    # "firstFile":Z
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    .restart local v18    # "firstFile":Z
    :goto_140
    :try_start_140
    const-string v4, "SelectDumpInterval.Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_14e
    .catchall {:try_start_140 .. :try_end_14e} :catchall_17a

    .line 221
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v6, :cond_153

    .line 222
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 224
    :cond_153
    if-eqz v9, :cond_158

    .line 225
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 227
    :cond_158
    if-eqz v12, :cond_15d

    .line 228
    invoke-virtual {v12}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 230
    :cond_15d
    if-eqz v8, :cond_162

    .line 231
    invoke-virtual {v8}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 233
    :cond_162
    if-eqz v13, :cond_167

    .line 234
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 236
    :cond_167
    if-eqz v14, :cond_173

    .line 238
    :try_start_169
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_16c
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_16c} :catch_16d

    .line 241
    goto :goto_173

    .line 239
    :catch_16d
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 240
    .local v0, "ioex":Ljava/io/IOException;
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v0    # "ioex":Ljava/io/IOException;
    :cond_173
    :goto_173
    if-eqz v15, :cond_179

    .line 245
    :try_start_175
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_175 .. :try_end_178} :catch_129

    goto :goto_128

    .line 252
    :cond_179
    :goto_179
    return-void

    .line 221
    :catchall_17a
    move-exception v0

    move-object v4, v0

    :goto_17c
    if-eqz v6, :cond_181

    .line 222
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 224
    :cond_181
    if-eqz v9, :cond_186

    .line 225
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 227
    :cond_186
    if-eqz v12, :cond_18b

    .line 228
    invoke-virtual {v12}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 230
    :cond_18b
    if-eqz v8, :cond_190

    .line 231
    invoke-virtual {v8}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 233
    :cond_190
    if-eqz v13, :cond_195

    .line 234
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 236
    :cond_195
    if-eqz v14, :cond_1a1

    .line 238
    :try_start_197
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_19a
    .catch Ljava/io/IOException; {:try_start_197 .. :try_end_19a} :catch_19b

    .line 241
    goto :goto_1a1

    .line 239
    :catch_19b
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 240
    .restart local v0    # "ioex":Ljava/io/IOException;
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v0    # "ioex":Ljava/io/IOException;
    :cond_1a1
    :goto_1a1
    if-eqz v15, :cond_1b1

    .line 245
    :try_start_1a3
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_1a6
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1a6} :catch_1a7

    .line 248
    goto :goto_1b1

    .line 246
    :catch_1a7
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 247
    .local v0, "ioex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .end local v0    # "ioex":Ljava/lang/Exception;
    :cond_1b1
    :goto_1b1
    throw v4
.end method


# virtual methods
.method public isCompressed(Ljava/io/File;)Z
    .registers 8
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    const/4 v0, 0x0

    .line 583
    .local v0, "fileStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 584
    const/4 v1, 0x2

    new-array v2, v1, [B

    .line 585
    .local v2, "bytes":[B
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 587
    array-length v4, v2
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_2a

    if-ge v4, v1, :cond_17

    .line 588
    nop

    .line 595
    nop

    .line 596
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 588
    return v3

    .line 591
    :cond_17
    :try_start_17
    aget-byte v1, v2, v3

    const/16 v4, 0x1f

    const/4 v5, 0x1

    if-ne v1, v4, :cond_25

    aget-byte v1, v2, v5
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_2a

    const/16 v4, -0x75

    if-ne v1, v4, :cond_25

    move v3, v5

    .line 595
    :cond_25
    nop

    .line 596
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 591
    return v3

    .line 595
    .end local v2    # "bytes":[B
    :catchall_2a
    move-exception v1

    if-eqz v0, :cond_30

    .line 596
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 597
    :cond_30
    throw v1
.end method

.method public run()V
    .registers 7

    .line 98
    const-string/jumbo v0, "run.IOException"

    const-string v1, "Dumper"

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeader()V

    .line 99
    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1b

    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_17

    goto :goto_1b

    .line 104
    :cond_17
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->selectDumpInterval()V

    goto :goto_25

    .line 100
    :cond_1b
    :goto_1b
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->fullDump()V

    .line 101
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-nez v2, :cond_25

    .line 102
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_3f
    .catchall {:try_start_5 .. :try_end_25} :catchall_3d

    .line 112
    :cond_25
    :goto_25
    :try_start_25
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_2e

    .line 113
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2e} :catch_2f

    .line 117
    :cond_2e
    :goto_2e
    goto :goto_33

    .line 115
    :catch_2f
    move-exception v2

    .line 116
    .local v2, "e":Ljava/io/IOException;
    :goto_30
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v2    # "e":Ljava/io/IOException;
    :goto_33
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    .line 119
    goto :goto_71

    .line 111
    :catchall_3d
    move-exception v2

    goto :goto_72

    .line 106
    :catch_3f
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/Exception;
    :try_start_40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "run.Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    .line 109
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_40 .. :try_end_65} :catchall_3d

    .line 112
    .end local v2    # "e":Ljava/lang/Exception;
    :try_start_65
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_2e

    .line 113
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6e} :catch_6f

    goto :goto_2e

    .line 115
    :catch_6f
    move-exception v2

    goto :goto_30

    .line 120
    :goto_71
    return-void

    .line 112
    :goto_72
    :try_start_72
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_7b

    .line 113
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_7b} :catch_7c

    .line 117
    :cond_7b
    goto :goto_80

    .line 115
    :catch_7c
    move-exception v3

    .line 116
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v3    # "e":Ljava/io/IOException;
    :goto_80
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v0, v1, v3}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    .line 119
    throw v2
.end method

.method public setDeviceInfo(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 88
    .local p1, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDeviceInfo:Ljava/util/List;

    .line 89
    return-void
.end method

.method public setFilter(Lcom/android/server/enterprise/auditlog/Filter;)V
    .registers 2
    .param p1, "filter"    # Lcom/android/server/enterprise/auditlog/Filter;

    .line 576
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 577
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    .line 93
    return-void
.end method
