.class public final Lcom/android/server/backup/utils/DataStreamFileCodec;
.super Ljava/lang/Object;
.source "DataStreamFileCodec.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCodec:Lcom/android/server/backup/utils/DataStreamCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/backup/utils/DataStreamCodec<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/android/server/backup/utils/DataStreamCodec;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/android/server/backup/utils/DataStreamCodec<",
            "TT;>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    .local p2, "codec":Lcom/android/server/backup/utils/DataStreamCodec;, "Lcom/android/server/backup/utils/DataStreamCodec<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mFile:Ljava/io/File;

    .line 44
    iput-object p2, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mCodec:Lcom/android/server/backup/utils/DataStreamCodec;

    .line 45
    return-void
.end method


# virtual methods
.method public deserialize()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 56
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_7
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_23

    .line 58
    .local v1, "dataInputStream":Ljava/io/DataInputStream;
    :try_start_c
    iget-object v2, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mCodec:Lcom/android/server/backup/utils/DataStreamCodec;

    invoke-interface {v2, v1}, Lcom/android/server/backup/utils/DataStreamCodec;->deserialize(Ljava/io/DataInputStream;)Ljava/lang/Object;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_19

    .line 59
    :try_start_12
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_23

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 58
    return-object v2

    .line 54
    :catchall_19
    move-exception v2

    :try_start_1a
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception v3

    :try_start_1f
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    :goto_22
    throw v2
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_23

    .end local v1    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    :catchall_23
    move-exception v1

    :try_start_24
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2c
    throw v1
.end method

.method public serialize(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 71
    .local v0, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_7
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_37

    .line 72
    .local v1, "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    :try_start_c
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_2d

    .line 74
    .local v2, "dataOutputStream":Ljava/io/DataOutputStream;
    :try_start_11
    iget-object v3, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mCodec:Lcom/android/server/backup/utils/DataStreamCodec;

    invoke-interface {v3, p1, v2}, Lcom/android/server/backup/utils/DataStreamCodec;->serialize(Ljava/lang/Object;Ljava/io/DataOutputStream;)V

    .line 75
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_23

    .line 76
    :try_start_19
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_2d

    .end local v2    # "dataOutputStream":Ljava/io/DataOutputStream;
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_37

    .end local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 77
    .end local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    return-void

    .line 69
    .restart local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v2    # "dataOutputStream":Ljava/io/DataOutputStream;
    :catchall_23
    move-exception v3

    :try_start_24
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception v4

    :try_start_29
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .end local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    .end local p1    # "t":Ljava/lang/Object;, "TT;"
    :goto_2c
    throw v3
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2d

    .end local v2    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    .restart local p1    # "t":Ljava/lang/Object;, "TT;"
    :catchall_2d
    move-exception v2

    :try_start_2e
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_36

    :catchall_32
    move-exception v3

    :try_start_33
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    .end local p1    # "t":Ljava/lang/Object;, "TT;"
    :goto_36
    throw v2
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_37

    .end local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    .restart local p1    # "t":Ljava/lang/Object;, "TT;"
    :catchall_37
    move-exception v1

    :try_start_38
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_40
    throw v1
.end method
