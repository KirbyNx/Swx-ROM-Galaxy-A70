.class public Lcom/android/server/wm/SplitStatusCounter;
.super Ljava/lang/Object;
.source "SplitStatusCounter.java"


# static fields
.field private static final DEBUG:Z

.field static final INITIAL_SYNC_ID:J = 0x1L

.field private static final TAG:Ljava/lang/String; = "SplitStatusCounter"


# instance fields
.field private final mSplitStatus:Lcom/android/server/wm/SplitStatus;

.field private mSyncId:J

.field private mWaitingDismissSplit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/SplitStatusCounter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/android/server/wm/SplitStatus;

    invoke-direct {v0}, Lcom/android/server/wm/SplitStatus;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SplitStatusCounter;->mSplitStatus:Lcom/android/server/wm/SplitStatus;

    .line 35
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/server/wm/SplitStatusCounter;->mSyncId:J

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/SplitStatusCounter;->mWaitingDismissSplit:Z

    return-void
.end method

.method private increaseSyncId()V
    .registers 5

    .line 75
    iget-wide v0, p0, Lcom/android/server/wm/SplitStatusCounter;->mSyncId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/SplitStatusCounter;->mSyncId:J

    .line 76
    sget-boolean v0, Lcom/android/server/wm/SplitStatusCounter;->DEBUG:Z

    if-eqz v0, :cond_31

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update syncId #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/SplitStatusCounter;->mSyncId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitStatusCounter"

    invoke-static {v1, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_31
    return-void
.end method

.method private isSplitDismissing(ZZZ)Z
    .registers 5
    .param p1, "wasSplitActivated"    # Z
    .param p2, "isSplitActivated"    # Z
    .param p3, "isCellEmpty"    # Z

    .line 67
    if-eqz p1, :cond_8

    if-nez p2, :cond_8

    if-eqz p3, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isSplitEntering(ZZZ)Z
    .registers 5
    .param p1, "wasPrimaryEmpty"    # Z
    .param p2, "isPrimaryEmpty"    # Z
    .param p3, "isSecondaryEmpty"    # Z

    .line 71
    if-eqz p1, :cond_8

    if-nez p2, :cond_8

    if-eqz p3, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private setWaitingDismissSplit(Z)V
    .registers 3
    .param p1, "waiting"    # Z

    .line 110
    iget-boolean v0, p0, Lcom/android/server/wm/SplitStatusCounter;->mWaitingDismissSplit:Z

    if-eq v0, p1, :cond_9

    .line 111
    iput-boolean p1, p0, Lcom/android/server/wm/SplitStatusCounter;->mWaitingDismissSplit:Z

    .line 112
    invoke-direct {p0}, Lcom/android/server/wm/SplitStatusCounter;->increaseSyncId()V

    .line 114
    :cond_9
    return-void
.end method


# virtual methods
.method clearWaitingDismissSplit()V
    .registers 2

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/SplitStatusCounter;->setWaitingDismissSplit(Z)V

    .line 107
    return-void
.end method

.method public getSyncId()J
    .registers 3

    .line 82
    iget-wide v0, p0, Lcom/android/server/wm/SplitStatusCounter;->mSyncId:J

    return-wide v0
.end method

.method isOldTransaction(Landroid/window/WindowContainerTransaction;)Z
    .registers 6
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;

    .line 86
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getSyncTransactionId()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_18

    .line 87
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getSyncTransactionId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/server/wm/SplitStatusCounter;->getSyncId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 86
    :goto_19
    return v0
.end method

.method isSplitActivated()Z
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/SplitStatusCounter;->mSplitStatus:Lcom/android/server/wm/SplitStatus;

    invoke-virtual {v0}, Lcom/android/server/wm/SplitStatus;->splitActivated()Z

    move-result v0

    return v0
.end method

.method public update(Lcom/android/server/wm/Task;)V
    .registers 11
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 40
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFirstAddChild()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 41
    return-void

    .line 43
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/SplitStatusCounter;->mSplitStatus:Lcom/android/server/wm/SplitStatus;

    invoke-virtual {v0}, Lcom/android/server/wm/SplitStatus;->isPrimaryEmpty()Z

    move-result v0

    .line 44
    .local v0, "wasPrimaryEmpty":Z
    iget-object v1, p0, Lcom/android/server/wm/SplitStatusCounter;->mSplitStatus:Lcom/android/server/wm/SplitStatus;

    invoke-virtual {v1}, Lcom/android/server/wm/SplitStatus;->splitActivated()Z

    move-result v1

    .line 46
    .local v1, "wasSplitActivated":Z
    iget-object v2, p0, Lcom/android/server/wm/SplitStatusCounter;->mSplitStatus:Lcom/android/server/wm/SplitStatus;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/SplitStatus;->update(Lcom/android/server/wm/Task;)V

    .line 48
    iget-object v2, p0, Lcom/android/server/wm/SplitStatusCounter;->mSplitStatus:Lcom/android/server/wm/SplitStatus;

    invoke-virtual {v2}, Lcom/android/server/wm/SplitStatus;->isPrimaryEmpty()Z

    move-result v2

    .line 49
    .local v2, "isPrimaryEmpty":Z
    iget-object v3, p0, Lcom/android/server/wm/SplitStatusCounter;->mSplitStatus:Lcom/android/server/wm/SplitStatus;

    invoke-virtual {v3}, Lcom/android/server/wm/SplitStatus;->isSecondaryEmpty()Z

    move-result v3

    .line 50
    .local v3, "isSecondaryEmpty":Z
    const/4 v4, 0x1

    .line 51
    .local v4, "isCellEmpty":Z
    iget-object v5, p0, Lcom/android/server/wm/SplitStatusCounter;->mSplitStatus:Lcom/android/server/wm/SplitStatus;

    invoke-virtual {v5}, Lcom/android/server/wm/SplitStatus;->splitActivated()Z

    move-result v5

    .line 53
    .local v5, "isSplitActivated":Z
    sget-boolean v6, Lcom/android/server/wm/SplitStatusCounter;->DEBUG:Z

    if-eqz v6, :cond_75

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SplitStatusCounter.update() :("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ")("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SplitStatusCounter"

    invoke-static {v7, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_75
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/wm/SplitStatusCounter;->isSplitEntering(ZZZ)Z

    move-result v6

    if-nez v6, :cond_81

    .line 60
    invoke-direct {p0, v1, v5, v4}, Lcom/android/server/wm/SplitStatusCounter;->isSplitDismissing(ZZZ)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 61
    :cond_81
    invoke-direct {p0}, Lcom/android/server/wm/SplitStatusCounter;->increaseSyncId()V

    .line 63
    :cond_84
    return-void
.end method

.method waitDismissSplitIfPossible(Lcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 95
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inSplitScreenSecondaryWindowingMode()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_20

    .line 98
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 99
    .local v0, "top":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isNonOrganizedHomeOrRecentsTask()Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_1f

    .line 102
    :cond_1a
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/wm/SplitStatusCounter;->setWaitingDismissSplit(Z)V

    .line 103
    return-void

    .line 100
    :cond_1f
    :goto_1f
    return-void

    .line 96
    .end local v0    # "top":Lcom/android/server/wm/Task;
    :cond_20
    :goto_20
    return-void
.end method
