.class public Lcom/android/server/ipm/Record;
.super Ljava/lang/Object;
.source "Record.java"


# instance fields
.field activityName:Ljava/lang/String;

.field apkVersion:Ljava/lang/String;

.field btStatus:I

.field consumeTime:I

.field dayOfWeek:I

.field error:Ljava/lang/String;

.field hourOfDay:I

.field launchTime:J

.field predictTime:I

.field prediction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field preloaded:Z

.field previousPkg:[Ljava/lang/String;

.field runningPkg:Ljava/lang/String;

.field screenOrientation:I

.field success:Z

.field userId:I

.field wifiStatus:I


# direct methods
.method constructor <init>()V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ipm/Record;->hourOfDay:I

    .line 30
    iput v0, p0, Lcom/android/server/ipm/Record;->dayOfWeek:I

    .line 31
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/ipm/Record;->previousPkg:[Ljava/lang/String;

    .line 32
    const-string/jumbo v1, "unknown"

    iput-object v1, p0, Lcom/android/server/ipm/Record;->runningPkg:Ljava/lang/String;

    .line 33
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/ipm/Record;->userId:I

    .line 34
    iput v0, p0, Lcom/android/server/ipm/Record;->screenOrientation:I

    .line 35
    iput v0, p0, Lcom/android/server/ipm/Record;->wifiStatus:I

    .line 36
    iput v0, p0, Lcom/android/server/ipm/Record;->btStatus:I

    .line 37
    iput v2, p0, Lcom/android/server/ipm/Record;->predictTime:I

    .line 38
    iput-object v1, p0, Lcom/android/server/ipm/Record;->apkVersion:Ljava/lang/String;

    .line 39
    iput v0, p0, Lcom/android/server/ipm/Record;->consumeTime:I

    .line 40
    iput-object v1, p0, Lcom/android/server/ipm/Record;->activityName:Ljava/lang/String;

    .line 41
    iput-boolean v2, p0, Lcom/android/server/ipm/Record;->preloaded:Z

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/Record;->prediction:Ljava/util/List;

    .line 44
    return-void
.end method

.method constructor <init>(II[Ljava/lang/String;IIILjava/lang/String;III)V
    .registers 11
    .param p1, "hour"    # I
    .param p2, "day"    # I
    .param p3, "previous"    # [Ljava/lang/String;
    .param p4, "screen"    # I
    .param p5, "wifi"    # I
    .param p6, "bt"    # I
    .param p7, "version"    # Ljava/lang/String;
    .param p8, "consumeT"    # I
    .param p9, "predictT"    # I
    .param p10, "userId"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/android/server/ipm/Record;->hourOfDay:I

    .line 49
    iput p2, p0, Lcom/android/server/ipm/Record;->dayOfWeek:I

    .line 50
    iput-object p3, p0, Lcom/android/server/ipm/Record;->previousPkg:[Ljava/lang/String;

    .line 51
    iput p4, p0, Lcom/android/server/ipm/Record;->screenOrientation:I

    .line 52
    iput p5, p0, Lcom/android/server/ipm/Record;->wifiStatus:I

    .line 53
    iput p6, p0, Lcom/android/server/ipm/Record;->btStatus:I

    .line 54
    iput-object p7, p0, Lcom/android/server/ipm/Record;->apkVersion:Ljava/lang/String;

    .line 55
    iput p8, p0, Lcom/android/server/ipm/Record;->consumeTime:I

    .line 56
    iput p9, p0, Lcom/android/server/ipm/Record;->predictTime:I

    .line 57
    iput p10, p0, Lcom/android/server/ipm/Record;->userId:I

    .line 58
    return-void
.end method


# virtual methods
.method isValid()Z
    .registers 3

    .line 61
    iget v0, p0, Lcom/android/server/ipm/Record;->hourOfDay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/android/server/ipm/Record;->dayOfWeek:I

    if-ne v0, v1, :cond_a

    goto :goto_c

    .line 64
    :cond_a
    const/4 v0, 0x1

    return v0

    .line 62
    :cond_c
    :goto_c
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hour:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/Record;->hourOfDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " day:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/Record;->dayOfWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " previous:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ipm/Record;->previousPkg:[Ljava/lang/String;

    .line 70
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " activityName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ipm/Record;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " running:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ipm/Record;->runningPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/Record;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " screenOrientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/Record;->screenOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " wifi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/Record;->wifiStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/Record;->btStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " predictTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/Record;->predictTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " apkVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ipm/Record;->apkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " consumeTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/Record;->consumeTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " preloaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/ipm/Record;->preloaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    return-object v0
.end method
