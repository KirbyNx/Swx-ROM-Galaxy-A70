.class public Lcom/android/server/sepunion/friends/common/LoggerImpl;
.super Ljava/lang/Object;
.source "LoggerImpl.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/common/Logger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/friends/common/LoggerImpl$Node;
    }
.end annotation


# static fields
.field private static final TIME_DIFF:J = 0x5265c00L


# instance fields
.field private mLastTimeStamp:J

.field private final mMaxCount:I

.field private final mNodes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/sepunion/friends/common/LoggerImpl$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "historyCount"    # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/sepunion/friends/common/LoggerImpl;->mLastTimeStamp:J

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    .line 20
    iput p1, p0, Lcom/android/server/sepunion/friends/common/LoggerImpl;->mMaxCount:I

    .line 21
    return-void
.end method

.method private appendHistoryNode(Lcom/android/server/sepunion/friends/common/LoggerImpl$Node;)V
    .registers 7
    .param p1, "node"    # Lcom/android/server/sepunion/friends/common/LoggerImpl$Node;

    .line 24
    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    monitor-enter v0

    .line 25
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 27
    .local v1, "current":J
    invoke-direct {p0, v1, v2}, Lcom/android/server/sepunion/friends/common/LoggerImpl;->isExpired(J)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 28
    iget-object v3, p0, Lcom/android/server/sepunion/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    goto :goto_22

    .line 30
    :cond_13
    iget-object v3, p0, Lcom/android/server/sepunion/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/server/sepunion/friends/common/LoggerImpl;->mMaxCount:I

    if-lt v3, v4, :cond_22

    .line 31
    iget-object v3, p0, Lcom/android/server/sepunion/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 35
    :cond_22
    :goto_22
    iput-wide v1, p0, Lcom/android/server/sepunion/friends/common/LoggerImpl;->mLastTimeStamp:J

    .line 36
    iget-object v3, p0, Lcom/android/server/sepunion/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 37
    .end local v1    # "current":J
    monitor-exit v0

    .line 38
    return-void

    .line 37
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private isExpired(J)Z
    .registers 7
    .param p1, "current"    # J

    .line 66
    iget-wide v0, p0, Lcom/android/server/sepunion/friends/common/LoggerImpl;->mLastTimeStamp:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method


# virtual methods
.method public varargs append(JLjava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p1, "timeStamp"    # J
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 54
    iget v0, p0, Lcom/android/server/sepunion/friends/common/LoggerImpl;->mMaxCount:I

    if-eqz v0, :cond_19

    if-nez p3, :cond_7

    goto :goto_19

    .line 58
    :cond_7
    if-eqz p4, :cond_10

    array-length v0, p4

    if-lez v0, :cond_10

    .line 59
    invoke-static {p3, p4}, Lcom/android/server/sepunion/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 62
    :cond_10
    new-instance v0, Lcom/android/server/sepunion/friends/common/LoggerImpl$Node;

    invoke-direct {v0, p3, p1, p2}, Lcom/android/server/sepunion/friends/common/LoggerImpl$Node;-><init>(Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/friends/common/LoggerImpl;->appendHistoryNode(Lcom/android/server/sepunion/friends/common/LoggerImpl$Node;)V

    .line 63
    return-void

    .line 55
    :cond_19
    :goto_19
    return-void
.end method

.method public varargs append(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 42
    iget v0, p0, Lcom/android/server/sepunion/friends/common/LoggerImpl;->mMaxCount:I

    if-eqz v0, :cond_19

    if-nez p1, :cond_7

    goto :goto_19

    .line 45
    :cond_7
    if-eqz p2, :cond_10

    array-length v0, p2

    if-lez v0, :cond_10

    .line 46
    invoke-static {p1, p2}, Lcom/android/server/sepunion/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 49
    :cond_10
    new-instance v0, Lcom/android/server/sepunion/friends/common/LoggerImpl$Node;

    invoke-direct {v0, p1}, Lcom/android/server/sepunion/friends/common/LoggerImpl$Node;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/friends/common/LoggerImpl;->appendHistoryNode(Lcom/android/server/sepunion/friends/common/LoggerImpl$Node;)V

    .line 50
    return-void

    .line 43
    :cond_19
    :goto_19
    return-void
.end method

.method public getDump(Ljava/lang/StringBuilder;)V
    .registers 7
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 71
    const-string v0, "\n---- history info.\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    monitor-enter v0

    .line 74
    :try_start_8
    iget-object v1, p0, Lcom/android/server/sepunion/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "index":I
    :goto_10
    if-ltz v1, :cond_37

    .line 75
    iget-object v2, p0, Lcom/android/server/sepunion/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/friends/common/LoggerImpl$Node;

    .line 76
    .local v2, "cur":Lcom/android/server/sepunion/friends/common/LoggerImpl$Node;
    if-eqz v2, :cond_34

    .line 77
    iget-wide v3, v2, Lcom/android/server/sepunion/friends/common/LoggerImpl$Node;->timeStamp:J

    invoke-static {v3, v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->getDateString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v3, v2, Lcom/android/server/sepunion/friends/common/LoggerImpl$Node;->msg:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .end local v2    # "cur":Lcom/android/server/sepunion/friends/common/LoggerImpl$Node;
    :cond_34
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 83
    .end local v1    # "index":I
    :cond_37
    monitor-exit v0

    .line 84
    return-void

    .line 83
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_39

    throw v1
.end method
