.class Lcom/android/server/ipm/AppLaunchInfo;
.super Ljava/lang/Object;
.source "AufPredictor.java"


# static fields
.field static final INPUT_DATA_SIZE:I = 0x150

.field static final OUTPUT_DATA_SIZE:I = 0xa8


# instance fields
.field inputdata:[F

.field outputdata:[F

.field runningPkgname:Ljava/lang/String;

.field startDate:I

.field startHour:I

.field userId:I


# direct methods
.method constructor <init>()V
    .registers 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/android/server/ipm/AppLaunchInfo;->runningPkgname:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ipm/AppLaunchInfo;->userId:I

    .line 83
    const/16 v1, 0x150

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/server/ipm/AppLaunchInfo;->inputdata:[F

    .line 84
    const/16 v1, 0xa8

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/server/ipm/AppLaunchInfo;->outputdata:[F

    .line 85
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/ipm/AppLaunchInfo;->startDate:I

    .line 86
    iput v0, p0, Lcom/android/server/ipm/AppLaunchInfo;->startHour:I

    .line 87
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I[F[FII)V
    .registers 7
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "userid"    # I
    .param p3, "input"    # [F
    .param p4, "output"    # [F
    .param p5, "date"    # I
    .param p6, "hour"    # I

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/server/ipm/AppLaunchInfo;->runningPkgname:Ljava/lang/String;

    .line 91
    iput p2, p0, Lcom/android/server/ipm/AppLaunchInfo;->userId:I

    .line 92
    iput-object p3, p0, Lcom/android/server/ipm/AppLaunchInfo;->inputdata:[F

    .line 93
    iput-object p4, p0, Lcom/android/server/ipm/AppLaunchInfo;->outputdata:[F

    .line 94
    iput p5, p0, Lcom/android/server/ipm/AppLaunchInfo;->startDate:I

    .line 95
    iput p6, p0, Lcom/android/server/ipm/AppLaunchInfo;->startHour:I

    .line 96
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ipm/AppLaunchInfo;->runningPkgname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/AppLaunchInfo;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " inputdata:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ipm/AppLaunchInfo;->inputdata:[F

    .line 101
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " outputdata:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ipm/AppLaunchInfo;->outputdata:[F

    .line 102
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " startDate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/AppLaunchInfo;->startDate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " startHour:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/AppLaunchInfo;->startHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    return-object v0
.end method
