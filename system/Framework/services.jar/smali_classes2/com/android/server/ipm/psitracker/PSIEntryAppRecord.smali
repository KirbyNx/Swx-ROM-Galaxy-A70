.class public Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;
.super Ljava/lang/Object;
.source "PSIEntryAppRecord.java"


# instance fields
.field checkTime:J

.field processName:Ljava/lang/String;

.field pss:I

.field userId:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;->processName:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;->pss:I

    .line 13
    iput v0, p0, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;->userId:I

    .line 14
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIJ)V
    .registers 6
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pss"    # I
    .param p3, "userId"    # I
    .param p4, "checkTime"    # J

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;->processName:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;->pss:I

    .line 19
    iput p3, p0, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;->userId:I

    .line 20
    iput-wide p4, p0, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;->checkTime:J

    .line 21
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<processName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pss:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;->pss:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " checkTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;->checkTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
