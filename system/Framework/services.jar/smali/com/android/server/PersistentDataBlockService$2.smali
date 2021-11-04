.class Lcom/android/server/PersistentDataBlockService$2;
.super Ljava/lang/Object;
.source "PersistentDataBlockService.java"

# interfaces
.implements Lcom/android/server/PersistentDataBlockManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PersistentDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PersistentDataBlockService;


# direct methods
.method constructor <init>(Lcom/android/server/PersistentDataBlockService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/PersistentDataBlockService;

    .line 704
    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readInternal(JI)[B
    .registers 8
    .param p1, "offset"    # J
    .param p3, "maxLength"    # I

    .line 787
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$700(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 793
    :try_start_8
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    .line 794
    # getter for: Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_1d} :catch_54

    .line 797
    .local v0, "inputStream":Ljava/io/DataInputStream;
    nop

    .line 800
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_25} :catch_46
    .catchall {:try_start_1e .. :try_end_25} :catchall_44

    .line 801
    :try_start_25
    invoke-virtual {v0, p1, p2}, Ljava/io/DataInputStream;->skip(J)J

    .line 802
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 803
    .local v2, "length":I
    if-lez v2, :cond_3b

    if-le v2, p3, :cond_31

    goto :goto_3b

    .line 806
    :cond_31
    new-array v3, v2, [B

    .line 807
    .local v3, "bytes":[B
    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 808
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_41

    .line 813
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 808
    return-object v3

    .line 804
    .end local v3    # "bytes":[B
    :cond_3b
    :goto_3b
    const/4 v3, 0x0

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_41

    .line 813
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 804
    return-object v3

    .line 809
    .end local v2    # "length":I
    :catchall_41
    move-exception v2

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    .end local v0    # "inputStream":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/server/PersistentDataBlockService$2;
    .end local p1    # "offset":J
    .end local p3    # "maxLength":I
    :try_start_43
    throw v2
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_44} :catch_46
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    .line 813
    .restart local v0    # "inputStream":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/server/PersistentDataBlockService$2;
    .restart local p1    # "offset":J
    .restart local p3    # "maxLength":I
    :catchall_44
    move-exception v1

    goto :goto_50

    .line 810
    :catch_46
    move-exception v1

    .line 811
    .local v1, "e":Ljava/io/IOException;
    :try_start_47
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "persistent partition not readable"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "inputStream":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/server/PersistentDataBlockService$2;
    .end local p1    # "offset":J
    .end local p3    # "maxLength":I
    throw v2
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_44

    .line 813
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "inputStream":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/server/PersistentDataBlockService$2;
    .restart local p1    # "offset":J
    .restart local p3    # "maxLength":I
    :goto_50
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 814
    throw v1

    .line 795
    .end local v0    # "inputStream":Ljava/io/DataInputStream;
    :catch_54
    move-exception v0

    .line 796
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "persistent partition not available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 788
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_5e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "invalid checksum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeDataBuffer(JLjava/nio/ByteBuffer;)V
    .registers 9
    .param p1, "offset"    # J
    .param p3, "dataBuffer"    # Ljava/nio/ByteBuffer;

    .line 760
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_10} :catch_57

    .line 764
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    nop

    .line 765
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 766
    :try_start_18
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mIsWritable:Z
    invoke-static {v2}, Lcom/android/server/PersistentDataBlockService;->access$500(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 767
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 768
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_54

    return-void

    .line 771
    :cond_25
    :try_start_25
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 772
    .local v2, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v2, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 773
    invoke-virtual {v2, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 774
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_32} :catch_3f
    .catchall {:try_start_25 .. :try_end_32} :catchall_3d

    .line 779
    .end local v2    # "channel":Ljava/nio/channels/FileChannel;
    :try_start_32
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 780
    nop

    .line 782
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z
    invoke-static {v2}, Lcom/android/server/PersistentDataBlockService;->access$600(Lcom/android/server/PersistentDataBlockService;)Z

    .line 783
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_54

    .line 784
    return-void

    .line 779
    :catchall_3d
    move-exception v2

    goto :goto_4f

    .line 775
    :catch_3f
    move-exception v2

    .line 776
    .local v2, "e":Ljava/io/IOException;
    :try_start_40
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "unable to access persistent partition"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_3d

    .line 779
    :try_start_4a
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v1

    .line 777
    return-void

    .line 779
    .end local v2    # "e":Ljava/io/IOException;
    :goto_4f
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 780
    nop

    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/android/server/PersistentDataBlockService$2;
    .end local p1    # "offset":J
    .end local p3    # "dataBuffer":Ljava/nio/ByteBuffer;
    throw v2

    .line 783
    .restart local v0    # "outputStream":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/PersistentDataBlockService$2;
    .restart local p1    # "offset":J
    .restart local p3    # "dataBuffer":Ljava/nio/ByteBuffer;
    :catchall_54
    move-exception v2

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_4a .. :try_end_56} :catchall_54

    throw v2

    .line 761
    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    :catch_57
    move-exception v0

    .line 762
    .local v0, "e":Ljava/io/FileNotFoundException;
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "partition not available"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 763
    return-void
.end method

.method private writeInternal([BJI)V
    .registers 9
    .param p1, "data"    # [B
    .param p2, "offset"    # J
    .param p4, "dataLength"    # I

    .line 742
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    array-length v2, p1

    if-lez v2, :cond_8

    goto :goto_a

    :cond_8
    move v2, v1

    goto :goto_b

    :cond_a
    :goto_a
    move v2, v0

    :goto_b
    const-string v3, "data must be null or non-empty"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 743
    if-eqz p1, :cond_17

    array-length v2, p1

    if-gt v2, p4, :cond_16

    goto :goto_17

    :cond_16
    move v0, v1

    :cond_17
    :goto_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data must not be longer than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 747
    add-int/lit8 v0, p4, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 748
    .local v0, "dataBuffer":Ljava/nio/ByteBuffer;
    if-nez p1, :cond_34

    goto :goto_35

    :cond_34
    array-length v1, p1

    :goto_35
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 749
    if-eqz p1, :cond_3d

    .line 750
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 752
    :cond_3d
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 754
    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/PersistentDataBlockService$2;->writeDataBuffer(JLjava/nio/ByteBuffer;)V

    .line 755
    return-void
.end method


# virtual methods
.method public clearTestHarnessModeData()V
    .registers 5

    .line 732
    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService$2;->getTestHarnessModeData()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x270c

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 733
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->getTestHarnessModeDataOffset()J
    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->access$1900(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/PersistentDataBlockService$2;->writeDataBuffer(JLjava/nio/ByteBuffer;)V

    .line 734
    return-void
.end method

.method public forceOemUnlockEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 819
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 820
    :try_start_7
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V
    invoke-static {v1, p1}, Lcom/android/server/PersistentDataBlockService;->access$1400(Lcom/android/server/PersistentDataBlockService;Z)V

    .line 821
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z
    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->access$600(Lcom/android/server/PersistentDataBlockService;)Z

    .line 822
    monitor-exit v0

    .line 823
    return-void

    .line 822
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getAllowedUid()I
    .registers 2

    .line 738
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$2000(Lcom/android/server/PersistentDataBlockService;)I

    move-result v0

    return v0
.end method

.method public getFrpCredentialHandle()[B
    .registers 4

    .line 713
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->getFrpCredentialDataOffset()J
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1800(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    const/16 v2, 0x3e4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/PersistentDataBlockService$2;->readInternal(JI)[B

    move-result-object v0

    return-object v0
.end method

.method public getTestHarnessModeData()[B
    .registers 4

    .line 723
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->getTestHarnessModeDataOffset()J
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1900(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    const/16 v2, 0x270c

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/PersistentDataBlockService$2;->readInternal(JI)[B

    move-result-object v0

    .line 724
    .local v0, "data":[B
    if-nez v0, :cond_12

    .line 725
    const/4 v1, 0x0

    new-array v1, v1, [B

    return-object v1

    .line 727
    :cond_12
    return-object v0
.end method

.method public setFrpCredentialHandle([B)V
    .registers 5
    .param p1, "handle"    # [B

    .line 708
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->getFrpCredentialDataOffset()J
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1800(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    const/16 v2, 0x3e4

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/PersistentDataBlockService$2;->writeInternal([BJI)V

    .line 709
    return-void
.end method

.method public setTestHarnessModeData([B)V
    .registers 5
    .param p1, "data"    # [B

    .line 718
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->getTestHarnessModeDataOffset()J
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1900(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    const/16 v2, 0x270c

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/PersistentDataBlockService$2;->writeInternal([BJI)V

    .line 719
    return-void
.end method
