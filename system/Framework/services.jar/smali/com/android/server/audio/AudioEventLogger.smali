.class public Lcom/android/server/audio/AudioEventLogger;
.super Ljava/lang/Object;
.source "AudioEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioEventLogger$StringEvent;,
        Lcom/android/server/audio/AudioEventLogger$Event;
    }
.end annotation


# instance fields
.field private final mEvents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/audio/AudioEventLogger$Event;",
            ">;"
        }
    .end annotation
.end field

.field private final mMemSize:I

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "size"    # I
    .param p2, "title"    # Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioEventLogger;->mEvents:Ljava/util/LinkedList;

    .line 98
    iput p1, p0, Lcom/android/server/audio/AudioEventLogger;->mMemSize:I

    .line 99
    iput-object p2, p0, Lcom/android/server/audio/AudioEventLogger;->mTitle:Ljava/lang/String;

    .line 100
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 110
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio event log: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioEventLogger;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/server/audio/AudioEventLogger;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioEventLogger$Event;

    .line 112
    .local v1, "evt":Lcom/android/server/audio/AudioEventLogger$Event;
    invoke-virtual {v1}, Lcom/android/server/audio/AudioEventLogger$Event;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_33

    .line 113
    .end local v1    # "evt":Lcom/android/server/audio/AudioEventLogger$Event;
    goto :goto_1d

    .line 114
    .end local p0    # "this":Lcom/android/server/audio/AudioEventLogger;
    :cond_31
    monitor-exit p0

    return-void

    .line 109
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getLastPackageName()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 122
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioEventLogger;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 123
    const-string v0, ""
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_24

    monitor-exit p0

    return-object v0

    .line 126
    .end local p0    # "this":Lcom/android/server/audio/AudioEventLogger;
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/android/server/audio/AudioEventLogger;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioEventLogger$Event;

    .line 127
    .local v0, "event":Lcom/android/server/audio/AudioEventLogger$Event;
    instance-of v1, v0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    if-nez v1, :cond_1d

    .line 128
    const-string v1, ""
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_24

    monitor-exit p0

    return-object v1

    .line 131
    :cond_1d
    :try_start_1d
    move-object v1, v0

    check-cast v1, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    iget-object v1, v1, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_24

    monitor-exit p0

    return-object v1

    .line 121
    .end local v0    # "event":Lcom/android/server/audio/AudioEventLogger$Event;
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized log(Lcom/android/server/audio/AudioEventLogger$Event;)V
    .registers 4
    .param p1, "evt"    # Lcom/android/server/audio/AudioEventLogger$Event;

    monitor-enter p0

    .line 103
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioEventLogger;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/audio/AudioEventLogger;->mMemSize:I

    if-lt v0, v1, :cond_10

    .line 104
    iget-object v0, p0, Lcom/android/server/audio/AudioEventLogger;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 106
    .end local p0    # "this":Lcom/android/server/audio/AudioEventLogger;
    :cond_10
    iget-object v0, p0, Lcom/android/server/audio/AudioEventLogger;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 107
    monitor-exit p0

    return-void

    .line 102
    .end local p1    # "evt":Lcom/android/server/audio/AudioEventLogger$Event;
    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method
