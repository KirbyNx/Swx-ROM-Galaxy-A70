.class public Lcom/android/server/ibs/dnba/NetSpeedStatus;
.super Ljava/lang/Object;
.source "NetSpeedStatus.java"


# instance fields
.field public mCommand:Ljava/lang/String;

.field private mCurSpeed:I

.field public mDroppedBytes:Ljava/lang/String;

.field public mDroppedPackage:Ljava/lang/String;

.field public mEndtime:Ljava/lang/String;

.field private mLastTrafs:J

.field public mLimitedReason:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field private mPriority:I

.field public mReleasedReason:Ljava/lang/String;

.field public mStartTime:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mStartTime:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mEndtime:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mDroppedPackage:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mDroppedBytes:Ljava/lang/String;

    .line 25
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mUid:I

    .line 26
    iput v1, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mCurSpeed:I

    .line 28
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mLastTrafs:J

    .line 29
    iput v1, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mPriority:I

    .line 30
    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mStartTime:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mEndtime:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mDroppedPackage:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mDroppedBytes:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mCommand:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mLimitedReason:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mReleasedReason:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mStartTime:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mEndtime:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mDroppedPackage:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mDroppedBytes:Ljava/lang/String;

    .line 52
    iput p1, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mUid:I

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mLastTrafs:J

    .line 54
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "speed"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mStartTime:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mEndtime:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mDroppedPackage:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mDroppedBytes:Ljava/lang/String;

    .line 46
    iput p1, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mUid:I

    .line 47
    iput p2, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mCurSpeed:I

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mLastTrafs:J

    .line 49
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "packagename"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mStartTime:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mEndtime:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mDroppedPackage:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mDroppedBytes:Ljava/lang/String;

    .line 41
    iput p1, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mUid:I

    .line 42
    iput-object p2, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public canRemove()Z
    .registers 2

    .line 103
    iget v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mPriority:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public dumpNetSpeedStatus()Ljava/lang/String;
    .registers 8

    .line 120
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%-40s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mStartTime:Ljava/lang/String;

    aput-object v4, v3, v5

    const-string v4, "%-22s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mEndtime:Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mDroppedPackage:Ljava/lang/String;

    aput-object v4, v3, v5

    .line 121
    const-string v4, "%-10s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mDroppedBytes:Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mCommand:Ljava/lang/String;

    aput-object v4, v3, v5

    .line 122
    const-string v4, "%-30s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mLimitedReason:Ljava/lang/String;

    aput-object v6, v3, v5

    const-string v6, "%-65s"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mReleasedReason:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 120
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 108
    instance-of v0, p1, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    if-eqz v0, :cond_11

    .line 109
    move-object v0, p1

    check-cast v0, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 110
    .local v0, "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    iget v1, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mUid:I

    iget v2, v0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mUid:I

    if-ne v1, v2, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1

    .line 112
    .end local v0    # "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    :cond_11
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCurSpeed()I
    .registers 2

    .line 72
    iget v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mCurSpeed:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrafs()J
    .registers 3

    .line 93
    iget-wide v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mLastTrafs:J

    return-wide v0
.end method

.method public getUid()I
    .registers 2

    .line 57
    iget v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mUid:I

    return v0
.end method

.method public setCurSpeed(I)V
    .registers 3
    .param p1, "curSpeed"    # I

    .line 76
    iput p1, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mCurSpeed:I

    .line 77
    if-nez p1, :cond_c

    iget v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mPriority:I

    if-lez v0, :cond_c

    .line 78
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mPriority:I

    .line 79
    :cond_c
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setTrafs(J)I
    .registers 6
    .param p1, "trafs"    # J

    .line 97
    iget-wide v0, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mLastTrafs:J

    sub-long v0, p1, v0

    .line 98
    .local v0, "increment":J
    iput-wide p1, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mLastTrafs:J

    .line 99
    long-to-int v2, v0

    return v2
.end method

.method public setUid(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 60
    iput p1, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mUid:I

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 117
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " curSpeed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mCurSpeed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lastTrafs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mLastTrafs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
