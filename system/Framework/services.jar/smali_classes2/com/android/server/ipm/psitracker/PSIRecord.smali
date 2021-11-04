.class public Lcom/android/server/ipm/psitracker/PSIRecord;
.super Ljava/lang/Object;
.source "PSIRecord.java"


# instance fields
.field checkTime:J

.field processName:Ljava/lang/String;

.field psiMax:F

.field pss:I

.field type:I

.field userId:I


# direct methods
.method constructor <init>()V
    .registers 4

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ipm/psitracker/PSIRecord;->processName:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ipm/psitracker/PSIRecord;->psiMax:F

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ipm/psitracker/PSIRecord;->pss:I

    .line 20
    iput v0, p0, Lcom/android/server/ipm/psitracker/PSIRecord;->type:I

    .line 21
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/ipm/psitracker/PSIRecord;->checkTime:J

    .line 22
    iput v0, p0, Lcom/android/server/ipm/psitracker/PSIRecord;->userId:I

    .line 23
    return-void
.end method

.method constructor <init>(Ljava/lang/String;FIIJI)V
    .registers 8
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "psiMax"    # F
    .param p3, "pss"    # I
    .param p4, "type"    # I
    .param p5, "checkTime"    # J
    .param p7, "userId"    # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/server/ipm/psitracker/PSIRecord;->processName:Ljava/lang/String;

    .line 27
    iput p2, p0, Lcom/android/server/ipm/psitracker/PSIRecord;->psiMax:F

    .line 28
    iput p3, p0, Lcom/android/server/ipm/psitracker/PSIRecord;->pss:I

    .line 29
    iput p4, p0, Lcom/android/server/ipm/psitracker/PSIRecord;->type:I

    .line 30
    iput-wide p5, p0, Lcom/android/server/ipm/psitracker/PSIRecord;->checkTime:J

    .line 31
    iput p7, p0, Lcom/android/server/ipm/psitracker/PSIRecord;->userId:I

    .line 32
    return-void
.end method


# virtual methods
.method isValid()Z
    .registers 5

    .line 35
    iget-wide v0, p0, Lcom/android/server/ipm/psitracker/PSIRecord;->checkTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 36
    const/4 v0, 0x0

    return v0

    .line 38
    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<processName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSIRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " psiMax:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/psitracker/PSIRecord;->psiMax:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " pss:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/psitracker/PSIRecord;->pss:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/psitracker/PSIRecord;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " checkTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/ipm/psitracker/PSIRecord;->checkTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/psitracker/PSIRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
