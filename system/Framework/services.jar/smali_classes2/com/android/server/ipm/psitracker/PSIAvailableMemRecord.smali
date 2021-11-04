.class public Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;
.super Ljava/lang/Object;
.source "PSIAvailableMemRecord.java"


# instance fields
.field availMem:J

.field cached:J

.field checkTime:J

.field running:J


# direct methods
.method constructor <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;->availMem:J

    .line 12
    iput-wide v0, p0, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;->running:J

    .line 13
    iput-wide v0, p0, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;->cached:J

    .line 14
    iput-wide v0, p0, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;->checkTime:J

    .line 15
    return-void
.end method

.method constructor <init>(JJJJ)V
    .registers 9
    .param p1, "availMem"    # J
    .param p3, "running"    # J
    .param p5, "cached"    # J
    .param p7, "checkTime"    # J

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;->availMem:J

    .line 19
    iput-wide p3, p0, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;->running:J

    .line 20
    iput-wide p5, p0, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;->cached:J

    .line 21
    iput-wide p7, p0, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;->checkTime:J

    .line 22
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<availMem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;->availMem:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " running:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;->running:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " cached:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;->cached:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " checkTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;->checkTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
