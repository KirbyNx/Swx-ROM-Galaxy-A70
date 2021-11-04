.class final Lcom/android/server/am/Pageboost$VramdiskLogger;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VramdiskLogger"
.end annotation


# static fields
.field private static final NUM_ENTRY:I = 0x7d0

.field private static array:[Ljava/lang/String;

.field private static cur_idx:I

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3444
    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/Pageboost$VramdiskLogger;->cur_idx:I

    .line 3445
    const/16 v0, 0x7d0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/Pageboost$VramdiskLogger;->array:[Ljava/lang/String;

    .line 3446
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/Pageboost$VramdiskLogger;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/String;)V
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .line 3453
    sget-object v0, Lcom/android/server/am/Pageboost$VramdiskLogger;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3454
    :try_start_3
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 3455
    .local v1, "time":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3456
    .local v2, "str2":Ljava/lang/String;
    sget-object v3, Lcom/android/server/am/Pageboost$VramdiskLogger;->array:[Ljava/lang/String;

    invoke-static {}, Lcom/android/server/am/Pageboost$VramdiskLogger;->getNextIdx()I

    move-result v4

    aput-object v2, v3, v4

    .line 3457
    .end local v1    # "time":Ljava/lang/String;
    .end local v2    # "str2":Ljava/lang/String;
    monitor-exit v0

    .line 3458
    return-void

    .line 3457
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private static getNextIdx()I
    .registers 2

    .line 3449
    sget v0, Lcom/android/server/am/Pageboost$VramdiskLogger;->cur_idx:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/am/Pageboost$VramdiskLogger;->cur_idx:I

    rem-int/lit16 v0, v0, 0x7d0

    return v0
.end method

.method public static print(Ljava/io/PrintWriter;)V
    .registers 5
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 3461
    sget-object v0, Lcom/android/server/am/Pageboost$VramdiskLogger;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3462
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    const/16 v2, 0x7d0

    if-ge v1, v2, :cond_31

    .line 3463
    :try_start_8
    sget-object v2, Lcom/android/server/am/Pageboost$VramdiskLogger;->array:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2e

    .line 3464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/am/Pageboost$VramdiskLogger;->array:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3462
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3467
    .end local v1    # "i":I
    :cond_31
    monitor-exit v0

    .line 3468
    return-void

    .line 3467
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_33

    throw v1
.end method
