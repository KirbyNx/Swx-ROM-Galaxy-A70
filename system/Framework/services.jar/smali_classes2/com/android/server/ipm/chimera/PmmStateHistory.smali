.class public Lcom/android/server/ipm/chimera/PmmStateHistory;
.super Ljava/lang/Object;
.source "PmmStateHistory.java"


# static fields
.field private static final PMM_STATE_MAX_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PmmStateHistory"


# instance fields
.field private mLastUpdatedTimeMillis:J

.field private final mPmmStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/chimera/SystemRepository;)V
    .registers 4
    .param p1, "systemRepository"    # Lcom/android/server/ipm/chimera/SystemRepository;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/PmmStateHistory;->mPmmStates:Ljava/util/List;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ipm/chimera/PmmStateHistory;->mLastUpdatedTimeMillis:J

    .line 20
    iput-object p1, p0, Lcom/android/server/ipm/chimera/PmmStateHistory;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    .line 21
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PmmStateHistory;->mPmmStates:Ljava/util/List;

    const-string v1, "NORMAL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method


# virtual methods
.method onStateChanged(I)V
    .registers 9
    .param p1, "level"    # I

    .line 38
    const/4 v0, 0x1

    if-lt p1, v0, :cond_7b

    const/4 v1, 0x4

    if-le p1, v1, :cond_8

    goto/16 :goto_7b

    .line 43
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/ipm/chimera/PmmStateHistory;->mLastUpdatedTimeMillis:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    div-long/2addr v2, v4

    .line 45
    .local v2, "elapsedHours":J
    const/4 v4, 0x2

    if-eq p1, v0, :cond_29

    if-eq p1, v4, :cond_26

    const/4 v5, 0x3

    if-eq p1, v5, :cond_23

    if-eq p1, v1, :cond_20

    .line 59
    const-string v5, "INVALID"

    .local v5, "stateName":Ljava/lang/String;
    goto :goto_2c

    .line 56
    .end local v5    # "stateName":Ljava/lang/String;
    :cond_20
    const-string v5, "CRITICAL"

    .line 57
    .restart local v5    # "stateName":Ljava/lang/String;
    goto :goto_2c

    .line 53
    .end local v5    # "stateName":Ljava/lang/String;
    :cond_23
    const-string v5, "HEAVY"

    .line 54
    .restart local v5    # "stateName":Ljava/lang/String;
    goto :goto_2c

    .line 50
    .end local v5    # "stateName":Ljava/lang/String;
    :cond_26
    const-string v5, "NORMAL"

    .line 51
    .restart local v5    # "stateName":Ljava/lang/String;
    goto :goto_2c

    .line 47
    .end local v5    # "stateName":Ljava/lang/String;
    :cond_29
    const-string v5, "LIGHT"

    .line 48
    .restart local v5    # "stateName":Ljava/lang/String;
    nop

    .line 63
    :goto_2c
    iget-object v6, p0, Lcom/android/server/ipm/chimera/PmmStateHistory;->mPmmStates:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v6, p0, Lcom/android/server/ipm/chimera/PmmStateHistory;->mPmmStates:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v1, :cond_3f

    .line 65
    iget-object v1, p0, Lcom/android/server/ipm/chimera/PmmStateHistory;->mPmmStates:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 68
    :cond_3f
    iget-object v1, p0, Lcom/android/server/ipm/chimera/PmmStateHistory;->mPmmStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_74

    .line 69
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PmmStateHistory;->mPmmStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .line 70
    .local v0, "idx":I
    iget-object v1, p0, Lcom/android/server/ipm/chimera/PmmStateHistory;->mPmmStates:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/ipm/chimera/PmmStateHistory;->mPmmStates:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "H)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local v0    # "idx":I
    :cond_74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ipm/chimera/PmmStateHistory;->mLastUpdatedTimeMillis:J

    .line 74
    return-void

    .line 39
    .end local v2    # "elapsedHours":J
    .end local v5    # "stateName":Ljava/lang/String;
    :cond_7b
    :goto_7b
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PmmStateHistory;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    const-string v1, "PmmStateHistory"

    const-string/jumbo v2, "onStateChanged() - out of range"

    invoke-interface {v0, v1, v2}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/ipm/chimera/PmmStateHistory;->mPmmStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 29
    .local v2, "pmmState":Ljava/lang/String;
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .end local v2    # "pmmState":Ljava/lang/String;
    goto :goto_b

    .line 32
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/ipm/chimera/PmmStateHistory;->mLastUpdatedTimeMillis:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x36ee80

    div-long/2addr v1, v3

    .line 33
    .local v1, "elapsedHours":J
    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "H)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
