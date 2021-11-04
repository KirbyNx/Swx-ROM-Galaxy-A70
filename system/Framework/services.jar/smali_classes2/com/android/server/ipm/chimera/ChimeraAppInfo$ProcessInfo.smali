.class public Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
.super Ljava/lang/Object;
.source "ChimeraAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/ChimeraAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProcessInfo"
.end annotation


# instance fields
.field avgPss:J

.field initialIdlePss:J

.field pid:I

.field processName:Ljava/lang/String;

.field pss:J

.field final synthetic this$0:Lcom/android/server/ipm/chimera/ChimeraAppInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/ipm/chimera/ChimeraAppInfo;ILjava/lang/String;JJJ)V
    .registers 10
    .param p1, "this$0"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    .param p2, "pid"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "pss"    # J
    .param p6, "initialIdlePss"    # J
    .param p8, "avgPss"    # J

    .line 39
    iput-object p1, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->this$0:Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p2, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 41
    iput-object p3, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 42
    iput-wide p4, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pss:J

    .line 43
    iput-wide p6, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->initialIdlePss:J

    .line 44
    iput-wide p8, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->avgPss:J

    .line 45
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->avgPss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
