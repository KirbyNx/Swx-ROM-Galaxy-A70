.class Lcom/android/server/aod/AODLogger;
.super Ljava/lang/Object;
.source "AODLogger.java"


# static fields
.field private static final mDateFormat:Ljava/text/SimpleDateFormat;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mCapacity:I

.field private mIndex:I

.field private mIsFull:Z

.field private mLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/aod/AODLogger;->sLock:Ljava/lang/Object;

    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "[MM-dd HH:mm:ss.SSS]"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/server/aod/AODLogger;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "capacity"    # I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/aod/AODLogger;->mIndex:I

    .line 18
    iput-boolean v0, p0, Lcom/android/server/aod/AODLogger;->mIsFull:Z

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/aod/AODLogger;->mLogs:Ljava/util/ArrayList;

    .line 22
    iput-object p1, p0, Lcom/android/server/aod/AODLogger;->mName:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/android/server/aod/AODLogger;->mCapacity:I

    .line 24
    return-void
.end method

.method private static getCurDateTime()Ljava/lang/String;
    .registers 3

    .line 60
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 61
    .local v0, "c":Ljava/util/Calendar;
    sget-object v1, Lcom/android/server/aod/AODLogger;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method add(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "log"    # Ljava/lang/String;
    .param p2, "addDataeTime"    # Z

    .line 27
    sget-object v0, Lcom/android/server/aod/AODLogger;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    if-eqz p2, :cond_1e

    .line 29
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/aod/AODLogger;->getCurDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 31
    :cond_1e
    iget-boolean v1, p0, Lcom/android/server/aod/AODLogger;->mIsFull:Z

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/android/server/aod/AODLogger;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/aod/AODLogger;->mCapacity:I

    if-ge v1, v2, :cond_32

    .line 32
    iget-object v1, p0, Lcom/android/server/aod/AODLogger;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 34
    :cond_32
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/aod/AODLogger;->mIsFull:Z

    .line 36
    iget-object v2, p0, Lcom/android/server/aod/AODLogger;->mLogs:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/server/aod/AODLogger;->mIndex:I

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget v2, p0, Lcom/android/server/aod/AODLogger;->mIndex:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/aod/AODLogger;->mIndex:I

    .line 39
    iget v1, p0, Lcom/android/server/aod/AODLogger;->mCapacity:I

    if-lt v2, v1, :cond_48

    .line 40
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/aod/AODLogger;->mIndex:I

    .line 43
    :cond_48
    :goto_48
    monitor-exit v0

    .line 44
    return-void

    .line 43
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 47
    sget-object v0, Lcom/android/server/aod/AODLogger;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/aod/AODLogger;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/android/server/aod/AODLogger;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 50
    .local v1, "ite":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 51
    .local v2, "line":I
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "line":I
    .local v4, "line":I
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    move v2, v4

    goto :goto_25

    .line 55
    .end local v4    # "line":I
    .restart local v2    # "line":I
    :cond_54
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 56
    .end local v1    # "ite":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "line":I
    monitor-exit v0

    .line 57
    return-void

    .line 56
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_59

    throw v1
.end method
