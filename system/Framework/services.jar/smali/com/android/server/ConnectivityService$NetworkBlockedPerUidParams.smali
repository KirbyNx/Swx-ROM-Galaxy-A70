.class public Lcom/android/server/ConnectivityService$NetworkBlockedPerUidParams;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkBlockedPerUidParams"
.end annotation


# instance fields
.field mBlocked:Z

.field mLastCallTime:J


# direct methods
.method constructor <init>(JZ)V
    .registers 4
    .param p1, "now"    # J
    .param p3, "blocked"    # Z

    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 972
    iput-wide p1, p0, Lcom/android/server/ConnectivityService$NetworkBlockedPerUidParams;->mLastCallTime:J

    .line 973
    iput-boolean p3, p0, Lcom/android/server/ConnectivityService$NetworkBlockedPerUidParams;->mBlocked:Z

    .line 974
    return-void
.end method


# virtual methods
.method public getBlocked()Z
    .registers 2

    .line 981
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService$NetworkBlockedPerUidParams;->mBlocked:Z

    return v0
.end method

.method public getLastCallTime()J
    .registers 3

    .line 977
    iget-wide v0, p0, Lcom/android/server/ConnectivityService$NetworkBlockedPerUidParams;->mLastCallTime:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mLastCallTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/ConnectivityService$NetworkBlockedPerUidParams;->mLastCallTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mBlocked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/ConnectivityService$NetworkBlockedPerUidParams;->mBlocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
