.class public final Lcom/android/server/stats/pull/IonMemoryUtil;
.super Ljava/lang/Object;
.source "IonMemoryUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;
    }
.end annotation


# static fields
.field private static final DEBUG_SYSTEM_ION_HEAP_FILE:Ljava/lang/String; = "/sys/kernel/debug/ion/heaps/system"

.field private static final ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

.field private static final PROCESS_ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "IonMemoryUtil"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    nop

    .line 44
    const-string v0, "\n\\s*total\\s*(\\d+)\\s*\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/pull/IonMemoryUtil;->ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

    .line 45
    nop

    .line 46
    const-string v0, "\n\\s+\\S+\\s+(\\d+)\\s+(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/pull/IonMemoryUtil;->PROCESS_ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseIonHeapSizeFromDebugfs(Ljava/lang/String;)J
    .registers 7
    .param p0, "contents"    # Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_9

    .line 67
    return-wide v1

    .line 69
    :cond_9
    sget-object v0, Lcom/android/server/stats/pull/IonMemoryUtil;->ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 71
    .local v0, "matcher":Ljava/util/regex/Matcher;
    :try_start_f
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_1e} :catch_1f

    :cond_1e
    return-wide v1

    .line 72
    :catch_1f
    move-exception v3

    .line 73
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "IonMemoryUtil"

    const-string v5, "Failed to parse value"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    return-wide v1
.end method

.method static parseProcessIonHeapSizesFromDebugfs(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .param p0, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;",
            ">;"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 95
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 98
    :cond_b
    sget-object v0, Lcom/android/server/stats/pull/IonMemoryUtil;->PROCESS_ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 99
    .local v0, "m":Ljava/util/regex/Matcher;
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 100
    .local v1, "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;>;"
    :goto_16
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 102
    const/4 v2, 0x1

    :try_start_1d
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 103
    .local v3, "pid":I
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 104
    .local v4, "sizeInBytes":J
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;

    .line 105
    .local v6, "allocations":Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;
    if-nez v6, :cond_3f

    .line 106
    new-instance v7, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;

    invoke-direct {v7}, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;-><init>()V

    move-object v6, v7

    .line 107
    invoke-virtual {v1, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    :cond_3f
    iput v3, v6, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->pid:I

    .line 110
    iget-wide v7, v6, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->totalSizeInBytes:J

    add-long/2addr v7, v4

    iput-wide v7, v6, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->totalSizeInBytes:J

    .line 111
    iget v7, v6, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->count:I

    add-int/2addr v7, v2

    iput v7, v6, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->count:I

    .line 112
    iget-wide v7, v6, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->maxSizeInBytes:J

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->maxSizeInBytes:J
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_53} :catch_54

    .end local v3    # "pid":I
    .end local v4    # "sizeInBytes":J
    .end local v6    # "allocations":Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;
    goto :goto_5c

    .line 113
    :catch_54
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "IonMemoryUtil"

    const-string v4, "Failed to parse value"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_5c
    goto :goto_16

    .line 118
    :cond_5d
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_67
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_79

    .line 120
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_67

    .line 122
    .end local v3    # "i":I
    :cond_79
    return-object v2
.end method

.method private static readFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .line 127
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v1

    .line 129
    .end local v0    # "file":Ljava/io/File;
    :catch_c
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "IonMemoryUtil"

    const-string v2, "Failed to read file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    const-string v1, ""

    return-object v1
.end method

.method public static readProcessSystemIonHeapSizesFromDebugfs()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;",
            ">;"
        }
    .end annotation

    .line 85
    const-string v0, "/sys/kernel/debug/ion/heaps/system"

    invoke-static {v0}, Lcom/android/server/stats/pull/IonMemoryUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/stats/pull/IonMemoryUtil;->parseProcessIonHeapSizesFromDebugfs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readSystemIonHeapSizeFromDebugfs()J
    .registers 2

    .line 57
    const-string v0, "/sys/kernel/debug/ion/heaps/system"

    invoke-static {v0}, Lcom/android/server/stats/pull/IonMemoryUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/stats/pull/IonMemoryUtil;->parseIonHeapSizeFromDebugfs(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
