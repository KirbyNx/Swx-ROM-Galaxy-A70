.class Lcom/android/server/ipm/LoopStack;
.super Ljava/lang/Object;
.source "Collector.java"


# instance fields
.field stack:[Ljava/lang/String;

.field top:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ipm/LoopStack;->top:I

    .line 234
    const-string/jumbo v0, "unknown"

    filled-new-array {v0, v0, v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ipm/LoopStack;->stack:[Ljava/lang/String;

    .line 239
    return-void
.end method

.method private pop(I)Ljava/lang/String;
    .registers 4
    .param p1, "offset"    # I

    .line 254
    iget v0, p0, Lcom/android/server/ipm/LoopStack;->top:I

    add-int/lit8 v1, v0, -0x1

    sub-int/2addr v1, p1

    if-gez v1, :cond_f

    .line 255
    iget-object v1, p0, Lcom/android/server/ipm/LoopStack;->stack:[Ljava/lang/String;

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x2

    aget-object v0, v1, v0

    return-object v0

    .line 257
    :cond_f
    iget-object v1, p0, Lcom/android/server/ipm/LoopStack;->stack:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    aget-object v0, v1, v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized pop3()[Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 247
    const/4 v0, 0x3

    :try_start_2
    new-array v1, v0, [Ljava/lang/String;

    .line 248
    .local v1, "list":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_10

    .line 249
    invoke-direct {p0, v2}, Lcom/android/server/ipm/LoopStack;->pop(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_12

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 250
    .end local v2    # "i":I
    .end local p0    # "this":Lcom/android/server/ipm/LoopStack;
    :cond_10
    monitor-exit p0

    return-object v1

    .line 246
    .end local v1    # "list":[Ljava/lang/String;
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized push(Ljava/lang/String;)V
    .registers 4
    .param p1, "item"    # Ljava/lang/String;

    monitor-enter p0

    .line 242
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ipm/LoopStack;->stack:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/ipm/LoopStack;->top:I

    aput-object p1, v0, v1

    .line 243
    iget v0, p0, Lcom/android/server/ipm/LoopStack;->top:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    goto :goto_12

    :cond_e
    iget v0, p0, Lcom/android/server/ipm/LoopStack;->top:I

    add-int/lit8 v0, v0, 0x1

    :goto_12
    iput v0, p0, Lcom/android/server/ipm/LoopStack;->top:I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 244
    monitor-exit p0

    return-void

    .line 241
    .end local p0    # "this":Lcom/android/server/ipm/LoopStack;
    .end local p1    # "item":Ljava/lang/String;
    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method
