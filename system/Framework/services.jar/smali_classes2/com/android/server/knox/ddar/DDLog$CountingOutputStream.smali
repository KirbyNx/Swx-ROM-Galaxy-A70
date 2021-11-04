.class public final Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DDLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/ddar/DDLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CountingOutputStream"
.end annotation


# instance fields
.field private count:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 368
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 369
    return-void
.end method


# virtual methods
.method protected declared-synchronized beforeWrite(J)V
    .registers 5
    .param p1, "n"    # J

    monitor-enter p0

    .line 372
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;->count:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;->count:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 373
    monitor-exit p0

    return-void

    .line 371
    .end local p0    # "this":Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;
    .end local p1    # "n":J
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 391
    :try_start_1
    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 392
    monitor-exit p0

    return-void

    .line 390
    .end local p0    # "this":Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getByteCount()J
    .registers 3

    monitor-enter p0

    .line 377
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;->count:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    .line 377
    .end local p0    # "this":Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .registers 6
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 386
    :try_start_1
    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 387
    iget-wide v0, p0, Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;->count:J
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 388
    monitor-exit p0

    return-void

    .line 385
    .end local p0    # "this":Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;
    .end local p1    # "b":I
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 381
    :try_start_1
    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 382
    iget-wide v0, p0, Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;->count:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;->count:J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 383
    monitor-exit p0

    return-void

    .line 380
    .end local p0    # "this":Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
