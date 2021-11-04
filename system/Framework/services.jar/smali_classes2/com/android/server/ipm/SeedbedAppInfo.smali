.class public Lcom/android/server/ipm/SeedbedAppInfo;
.super Ljava/lang/Object;
.source "SeedbedAppInfo.java"


# instance fields
.field private isSystem:Z

.field private mInsertTime:J

.field private mPkgName:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/ipm/SeedbedAppInfo;->mInsertTime:J

    .line 13
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/android/server/ipm/SeedbedAppInfo;->mPkgName:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ipm/SeedbedAppInfo;->mUid:I

    .line 15
    iput-boolean v0, p0, Lcom/android/server/ipm/SeedbedAppInfo;->isSystem:Z

    .line 16
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;I)V
    .registers 5
    .param p1, "insertTime"    # J
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/android/server/ipm/SeedbedAppInfo;->mInsertTime:J

    .line 26
    iput-object p3, p0, Lcom/android/server/ipm/SeedbedAppInfo;->mPkgName:Ljava/lang/String;

    .line 27
    iput p4, p0, Lcom/android/server/ipm/SeedbedAppInfo;->mUid:I

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/ipm/SeedbedAppInfo;->mInsertTime:J

    .line 20
    iput-object p1, p0, Lcom/android/server/ipm/SeedbedAppInfo;->mPkgName:Ljava/lang/String;

    .line 21
    iput p2, p0, Lcom/android/server/ipm/SeedbedAppInfo;->mUid:I

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "arg0"    # Ljava/lang/Object;

    .line 56
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 57
    return v0

    .line 58
    :cond_4
    instance-of v1, p1, Lcom/android/server/ipm/SeedbedAppInfo;

    if-eqz v1, :cond_1d

    .line 59
    move-object v1, p1

    check-cast v1, Lcom/android/server/ipm/SeedbedAppInfo;

    .line 60
    .local v1, "info":Lcom/android/server/ipm/SeedbedAppInfo;
    iget v2, v1, Lcom/android/server/ipm/SeedbedAppInfo;->mUid:I

    iget v3, p0, Lcom/android/server/ipm/SeedbedAppInfo;->mUid:I

    if-ne v2, v3, :cond_1d

    iget-object v2, p0, Lcom/android/server/ipm/SeedbedAppInfo;->mPkgName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/ipm/SeedbedAppInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 61
    const/4 v0, 0x1

    return v0

    .line 63
    .end local v1    # "info":Lcom/android/server/ipm/SeedbedAppInfo;
    :cond_1d
    return v0
.end method

.method public getInsertTime()J
    .registers 3

    .line 31
    iget-wide v0, p0, Lcom/android/server/ipm/SeedbedAppInfo;->mInsertTime:J

    return-wide v0
.end method

.method public getPkgName()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedAppInfo;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/android/server/ipm/SeedbedAppInfo;->mUid:I

    return v0
.end method

.method public setInsertTime(J)V
    .registers 3
    .param p1, "insertTime"    # J

    .line 43
    iput-wide p1, p0, Lcom/android/server/ipm/SeedbedAppInfo;->mInsertTime:J

    .line 44
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/android/server/ipm/SeedbedAppInfo;->mPkgName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setUid(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 51
    iput p1, p0, Lcom/android/server/ipm/SeedbedAppInfo;->mUid:I

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<insertTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/ipm/SeedbedAppInfo;->mInsertTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " pkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ipm/SeedbedAppInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/SeedbedAppInfo;->mUid:I

    .line 69
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/SeedbedAppInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isSystem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/ipm/SeedbedAppInfo;->isSystem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ">>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    return-object v0
.end method
