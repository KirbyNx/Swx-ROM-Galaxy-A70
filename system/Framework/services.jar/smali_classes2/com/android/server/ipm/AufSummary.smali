.class Lcom/android/server/ipm/AufSummary;
.super Ljava/lang/Object;
.source "AufPeriodic.java"


# instance fields
.field currentTime:J

.field hit10:I

.field hit15:I

.field hit20:I

.field hit25:I

.field hit30:I

.field hit5:I

.field hitEtc:I

.field resetTime:J

.field totalcount:I


# direct methods
.method constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ipm/AufSummary;->currentTime:J

    .line 39
    iput-wide v0, p0, Lcom/android/server/ipm/AufSummary;->resetTime:J

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ipm/AufSummary;->totalcount:I

    .line 41
    iput v0, p0, Lcom/android/server/ipm/AufSummary;->hit5:I

    .line 42
    iput v0, p0, Lcom/android/server/ipm/AufSummary;->hit10:I

    .line 43
    iput v0, p0, Lcom/android/server/ipm/AufSummary;->hit15:I

    .line 44
    iput v0, p0, Lcom/android/server/ipm/AufSummary;->hit20:I

    .line 45
    iput v0, p0, Lcom/android/server/ipm/AufSummary;->hit25:I

    .line 46
    iput v0, p0, Lcom/android/server/ipm/AufSummary;->hit30:I

    .line 47
    iput v0, p0, Lcom/android/server/ipm/AufSummary;->hitEtc:I

    .line 48
    return-void
.end method

.method constructor <init>(Lcom/android/server/ipm/AufSummary;)V
    .registers 4
    .param p1, "s"    # Lcom/android/server/ipm/AufSummary;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget-wide v0, p1, Lcom/android/server/ipm/AufSummary;->currentTime:J

    iput-wide v0, p0, Lcom/android/server/ipm/AufSummary;->currentTime:J

    .line 52
    iget-wide v0, p1, Lcom/android/server/ipm/AufSummary;->resetTime:J

    iput-wide v0, p0, Lcom/android/server/ipm/AufSummary;->resetTime:J

    .line 53
    iget v0, p1, Lcom/android/server/ipm/AufSummary;->totalcount:I

    iput v0, p0, Lcom/android/server/ipm/AufSummary;->totalcount:I

    .line 54
    iget v0, p1, Lcom/android/server/ipm/AufSummary;->hit5:I

    iput v0, p0, Lcom/android/server/ipm/AufSummary;->hit5:I

    .line 55
    iget v0, p1, Lcom/android/server/ipm/AufSummary;->hit10:I

    iput v0, p0, Lcom/android/server/ipm/AufSummary;->hit10:I

    .line 56
    iget v0, p1, Lcom/android/server/ipm/AufSummary;->hit15:I

    iput v0, p0, Lcom/android/server/ipm/AufSummary;->hit15:I

    .line 57
    iget v0, p1, Lcom/android/server/ipm/AufSummary;->hit20:I

    iput v0, p0, Lcom/android/server/ipm/AufSummary;->hit20:I

    .line 58
    iget v0, p1, Lcom/android/server/ipm/AufSummary;->hit25:I

    iput v0, p0, Lcom/android/server/ipm/AufSummary;->hit25:I

    .line 59
    iget v0, p1, Lcom/android/server/ipm/AufSummary;->hit30:I

    iput v0, p0, Lcom/android/server/ipm/AufSummary;->hit30:I

    .line 60
    iget v0, p1, Lcom/android/server/ipm/AufSummary;->hitEtc:I

    iput v0, p0, Lcom/android/server/ipm/AufSummary;->hitEtc:I

    .line 61
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/ipm/AufSummary;->currentTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " resetTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/ipm/AufSummary;->resetTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " totalcount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/AufSummary;->totalcount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hit5:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/AufSummary;->hit5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hit10:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/AufSummary;->hit10:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hit15:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/AufSummary;->hit15:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hit20:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/AufSummary;->hit20:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hit25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/AufSummary;->hit25:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hit30:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/AufSummary;->hit30:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hitEtc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/AufSummary;->hitEtc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
