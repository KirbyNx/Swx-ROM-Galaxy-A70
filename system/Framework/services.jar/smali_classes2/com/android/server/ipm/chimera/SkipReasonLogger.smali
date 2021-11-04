.class Lcom/android/server/ipm/chimera/SkipReasonLogger;
.super Ljava/lang/Object;
.source "SkipReasonLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;
    }
.end annotation


# instance fields
.field private final mSkippedPids:[Ljava/util/Set;

.field private final mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/ipm/chimera/SystemRepository;)V
    .registers 5
    .param p1, "systemRepository"    # Lcom/android/server/ipm/chimera/SystemRepository;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->values()[Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/util/Set;

    iput-object v0, p0, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mSkippedPids:[Ljava/util/Set;

    .line 39
    iput-object p1, p0, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    .line 41
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    invoke-static {}, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->values()[Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_22

    .line 42
    iget-object v1, p0, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mSkippedPids:[Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    aput-object v2, v1, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 44
    .end local v0    # "i":I
    :cond_22
    return-void
.end method

.method private printSkippedPids(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p3, "pids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Skipped reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, ", pids: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 62
    .local v2, "pid":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .end local v2    # "pid":Ljava/lang/Integer;
    goto :goto_1c

    .line 65
    :cond_35
    iget-object v1, p0, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->values()[Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 70
    iget-object v1, p0, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mSkippedPids:[Ljava/util/Set;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    .end local v0    # "i":I
    :cond_12
    return-void
.end method

.method public mark(ILcom/android/server/ipm/chimera/SkipReasonLogger$Reason;)V
    .registers 5
    .param p1, "pid"    # I
    .param p2, "reason"    # Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    .line 53
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mSkippedPids:[Ljava/util/Set;

    invoke-virtual {p2}, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public mark(Lcom/android/server/ipm/chimera/ChimeraAppInfo;Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;)V
    .registers 5
    .param p1, "appInfo"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    .param p2, "reason"    # Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    .line 47
    invoke-virtual {p1}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 48
    .local v1, "pid":I
    invoke-virtual {p0, v1, p2}, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mark(ILcom/android/server/ipm/chimera/SkipReasonLogger$Reason;)V

    .line 49
    .end local v1    # "pid":I
    goto :goto_8

    .line 50
    :cond_1c
    return-void
.end method

.method public printLog(Ljava/lang/String;)V
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;

    .line 11
    invoke-static {}, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->values()[Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_2a

    aget-object v3, v0, v2

    .line 12
    .local v3, "reason":Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;
    iget-object v4, p0, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mSkippedPids:[Ljava/util/Set;

    invoke-virtual {v3}, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_27

    .line 13
    invoke-virtual {v3}, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mSkippedPids:[Ljava/util/Set;

    invoke-virtual {v3}, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/ipm/chimera/SkipReasonLogger;->printSkippedPids(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 11
    .end local v3    # "reason":Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 16
    :cond_2a
    return-void
.end method
