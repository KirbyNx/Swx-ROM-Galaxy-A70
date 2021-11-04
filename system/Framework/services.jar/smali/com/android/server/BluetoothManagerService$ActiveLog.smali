.class Lcom/android/server/BluetoothManagerService$ActiveLog;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActiveLog"
.end annotation


# instance fields
.field private mEnable:Z

.field private mPackageName:Ljava/lang/String;

.field private mReason:I

.field private mTimestamp:J

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;ZJ)V
    .registers 7
    .param p2, "reason"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "enable"    # Z
    .param p5, "timestamp"    # J

    .line 325
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput p2, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mReason:I

    .line 327
    iput-object p3, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mPackageName:Ljava/lang/String;

    .line 328
    iput-boolean p4, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mEnable:Z

    .line 329
    iput-wide p5, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mTimestamp:J

    .line 330
    return-void
.end method


# virtual methods
.method dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 338
    iget-wide v0, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mTimestamp:J

    const-wide v2, 0x10300000001L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 339
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mEnable:Z

    const-wide v1, 0x10800000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 340
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mPackageName:Ljava/lang/String;

    const-wide v1, 0x10900000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 341
    iget v0, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mReason:I

    const-wide v1, 0x10e00000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 342
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mTimestamp:J

    # invokes: Lcom/android/server/BluetoothManagerService;->timeToLog(J)Ljava/lang/CharSequence;
    invoke-static {v1, v2}, Lcom/android/server/BluetoothManagerService;->access$000(J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mEnable:Z

    if-eqz v1, :cond_15

    const-string v1, "  Enabled "

    goto :goto_17

    :cond_15
    const-string v1, " Disabled "

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mReason:I

    .line 334
    # invokes: Lcom/android/server/BluetoothManagerService;->getEnableDisableReasonString(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$100(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ActiveLog;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    return-object v0
.end method
