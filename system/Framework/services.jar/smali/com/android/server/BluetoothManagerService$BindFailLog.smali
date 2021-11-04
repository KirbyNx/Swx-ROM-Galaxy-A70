.class Lcom/android/server/BluetoothManagerService$BindFailLog;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindFailLog"
.end annotation


# instance fields
.field private mCaller:Ljava/lang/String;

.field private mReason:Ljava/lang/String;

.field private mTimestamp:J

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;JLjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p2, "timestamp"    # J
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    .line 385
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BindFailLog;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-wide p2, p0, Lcom/android/server/BluetoothManagerService$BindFailLog;->mTimestamp:J

    .line 387
    iput-object p4, p0, Lcom/android/server/BluetoothManagerService$BindFailLog;->mReason:Ljava/lang/String;

    .line 388
    if-nez p5, :cond_11

    .line 389
    const-string/jumbo p1, "unknown"

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BindFailLog;->mCaller:Ljava/lang/String;

    goto :goto_13

    .line 391
    :cond_11
    iput-object p5, p0, Lcom/android/server/BluetoothManagerService$BindFailLog;->mCaller:Ljava/lang/String;

    .line 393
    :goto_13
    return-void
.end method


# virtual methods
.method public getCaller()Ljava/lang/String;
    .registers 2

    .line 396
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$BindFailLog;->mCaller:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/server/BluetoothManagerService$BindFailLog;->mTimestamp:J

    # invokes: Lcom/android/server/BluetoothManagerService;->timeToLog(J)Ljava/lang/CharSequence;
    invoke-static {v1, v2}, Lcom/android/server/BluetoothManagerService;->access$000(J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " bind fail by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$BindFailLog;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$BindFailLog;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
