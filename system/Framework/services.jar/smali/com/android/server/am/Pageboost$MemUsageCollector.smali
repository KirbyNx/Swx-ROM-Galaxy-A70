.class final Lcom/android/server/am/Pageboost$MemUsageCollector;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MemUsageCollector"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2168
    return-void
.end method

.method private static collectAnon(Landroid/os/Debug$MemoryInfo;)I
    .registers 3
    .param p0, "mi"    # Landroid/os/Debug$MemoryInfo;

    .line 2199
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static collectGPUMem(Landroid/os/Debug$MemoryInfo;)I
    .registers 2
    .param p0, "mi"    # Landroid/os/Debug$MemoryInfo;

    .line 2207
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v0

    return v0
.end method

.method private static collectIONMem(Landroid/os/Debug$MemoryInfo;)I
    .registers 2
    .param p0, "mi"    # Landroid/os/Debug$MemoryInfo;

    .line 2203
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v0

    return v0
.end method

.method public static collectMemUsage(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z
    .registers 11
    .param p0, "iApp"    # Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 2172
    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    .line 2174
    .local v0, "pid":I
    const/4 v1, 0x0

    .line 2176
    .local v1, "mi":Landroid/os/Debug$MemoryInfo;
    const/4 v2, 0x0

    if-gtz v0, :cond_7

    .line 2177
    return v2

    .line 2180
    :cond_7
    new-instance v3, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v3}, Landroid/os/Debug$MemoryInfo;-><init>()V

    move-object v1, v3

    .line 2181
    invoke-static {v0, v1}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z

    .line 2184
    invoke-static {v1}, Lcom/android/server/am/Pageboost$MemUsageCollector;->collectAnon(Landroid/os/Debug$MemoryInfo;)I

    move-result v3

    move v4, v3

    .local v4, "anon":I
    if-gtz v3, :cond_18

    .line 2185
    return v2

    .line 2188
    :cond_18
    invoke-static {v1}, Lcom/android/server/am/Pageboost$MemUsageCollector;->collectIONMem(Landroid/os/Debug$MemoryInfo;)I

    move-result v2

    .line 2189
    .local v2, "ion":I
    invoke-static {v1}, Lcom/android/server/am/Pageboost$MemUsageCollector;->collectGPUMem(Landroid/os/Debug$MemoryInfo;)I

    move-result v3

    .line 2191
    .local v3, "gpu":I
    new-instance v5, Lcom/android/server/am/Pageboost$MemUsage;

    invoke-direct {v5, v4, v2, v3}, Lcom/android/server/am/Pageboost$MemUsage;-><init>(III)V

    .line 2192
    .local v5, "mu":Lcom/android/server/am/Pageboost$MemUsage;
    invoke-virtual {p0, v5}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setMemUsage(Lcom/android/server/am/Pageboost$MemUsage;)V

    .line 2193
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "memUsage collected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    const/4 v6, 0x1

    return v6
.end method
