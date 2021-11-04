.class Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;
.super Ljava/lang/Object;
.source "CameraMotorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/CameraMotorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraPositionStateQueue"
.end annotation


# static fields
.field private static final MAX_QUEUE_COUNT:I = 0x14


# instance fields
.field mCnt:[J

.field private mCurrentEventIndex:I

.field mEventFrom:[Ljava/lang/String;

.field mEventState:[I

.field mEventTime:[J

.field final synthetic this$0:Lcom/android/server/input/CameraMotorManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/CameraMotorManagerService;)V
    .registers 3

    .line 1261
    iput-object p1, p0, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1259
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;->mCurrentEventIndex:I

    .line 1262
    const/16 p1, 0x14

    new-array v0, p1, [J

    iput-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;->mCnt:[J

    .line 1263
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;->mEventTime:[J

    .line 1264
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;->mEventState:[I

    .line 1265
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;->mEventFrom:[Ljava/lang/String;

    .line 1266
    return-void
.end method


# virtual methods
.method add(JJII)V
    .registers 10
    .param p1, "cnt"    # J
    .param p3, "time"    # J
    .param p5, "state"    # I
    .param p6, "from"    # I

    .line 1269
    iget v0, p0, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;->mCurrentEventIndex:I

    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_9

    .line 1270
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;->mCurrentEventIndex:I

    .line 1273
    :cond_9
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;->mCnt:[J

    iget v1, p0, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;->mCurrentEventIndex:I

    aput-wide p1, v0, v1

    .line 1274
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;->mEventTime:[J

    aput-wide p3, v0, v1

    .line 1275
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;->mEventState:[I

    aput p5, v0, v1

    .line 1276
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;->mEventFrom:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->FromToString(I)Ljava/lang/String;
    invoke-static {v2, p6}, Lcom/android/server/input/CameraMotorManagerService;->access$800(Lcom/android/server/input/CameraMotorManagerService;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1278
    iget v0, p0, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;->mCurrentEventIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;->mCurrentEventIndex:I

    .line 1279
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 1282
    const-string v0, ""

    .line 1283
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    const/16 v2, 0x14

    if-ge v1, v2, :cond_5c

    .line 1284
    iget v2, p0, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;->mCurrentEventIndex:I

    if-ne v1, v2, :cond_1c

    .line 1285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " < | > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1287
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;->mCnt:[J

    aget-wide v3, v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;->mEventTime:[J

    aget-wide v4, v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;->mEventState:[I

    aget v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;->mEventFrom:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1283
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1290
    .end local v1    # "i":I
    :cond_5c
    return-object v0
.end method
