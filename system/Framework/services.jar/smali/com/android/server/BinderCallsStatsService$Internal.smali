.class public Lcom/android/server/BinderCallsStatsService$Internal;
.super Ljava/lang/Object;
.source "BinderCallsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BinderCallsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Internal"
.end annotation


# static fields
.field private static final WRITE_INTERVAL:J = 0x1b7740L


# instance fields
.field private final mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

.field private mLastWriteTime:J


# direct methods
.method constructor <init>(Lcom/android/internal/os/BinderCallsStats;)V
    .registers 4
    .param p1, "binderCallsStats"    # Lcom/android/internal/os/BinderCallsStats;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mLastWriteTime:J

    .line 226
    iput-object p1, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 227
    return-void
.end method


# virtual methods
.method public getExportedCallStats()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v0}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getExportedExceptionStats()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v0}, Lcom/android/internal/os/BinderCallsStats;->getExportedExceptionStats()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$reportCpuUsage$0$BinderCallsStatsService$Internal()V
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v0}, Lcom/android/internal/os/BinderCallsStats;->writeToFile()V

    .line 274
    return-void
.end method

.method public synthetic lambda$reportCpuUsage$1$BinderCallsStatsService$Internal(I)V
    .registers 8
    .param p1, "cpuUsage"    # I

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportCpuUsage() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BinderCallsStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p1}, Lcom/android/internal/os/BinderCallsStats;->store(II)V

    .line 268
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v0}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    .line 269
    iget-wide v2, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mLastWriteTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3d

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mLastWriteTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1b7740

    cmp-long v0, v2, v4

    if-ltz v0, :cond_55

    .line 271
    :cond_3d
    const-string/jumbo v0, "should write the current data!!"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$BinderCallsStatsService$Internal$BViOc-bg9diDDdgIvYLagkv3N9c;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$BinderCallsStatsService$Internal$BViOc-bg9diDDdgIvYLagkv3N9c;-><init>(Lcom/android/server/BinderCallsStatsService$Internal;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mLastWriteTime:J

    .line 277
    :cond_55
    return-void
.end method

.method public reportCpuUsage(I)V
    .registers 4
    .param p1, "cpuUsage"    # I

    .line 264
    sget-boolean v0, Lcom/android/server/BinderCallsStatsService;->DEBUG_LEVEL_LOW:Z

    if-nez v0, :cond_10

    .line 265
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$BinderCallsStatsService$Internal$5RGGOeZgj4LHO3MBcnS7msbpIyg;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$BinderCallsStatsService$Internal$5RGGOeZgj4LHO3MBcnS7msbpIyg;-><init>(Lcom/android/server/BinderCallsStatsService$Internal;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    :cond_10
    return-void
.end method

.method public reportProcessDied(IILjava/lang/String;)V
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BinderCallsStats;->reportProcessDied(IILjava/lang/String;)V

    .line 252
    return-void
.end method

.method public reset()V
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v0}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    .line 232
    return-void
.end method

.method public shutdown()V
    .registers 2

    .line 287
    sget-boolean v0, Lcom/android/server/BinderCallsStatsService;->DEBUG_LEVEL_LOW:Z

    if-nez v0, :cond_9

    .line 288
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v0}, Lcom/android/internal/os/BinderCallsStats;->writeToFile()V

    .line 290
    :cond_9
    return-void
.end method
