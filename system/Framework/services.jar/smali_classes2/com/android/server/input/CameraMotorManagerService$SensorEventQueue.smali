.class Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;
.super Ljava/lang/Object;
.source "CameraMotorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/CameraMotorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorEventQueue"
.end annotation


# instance fields
.field private MAX_QUEUE_COUNT:I

.field private mCurrentEventIndex:I

.field mEventTime:[J

.field mEventValue:[I

.field final synthetic this$0:Lcom/android/server/input/CameraMotorManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/CameraMotorManagerService;I)V
    .registers 3
    .param p2, "queueSize"    # I

    .line 1300
    iput-object p1, p0, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1298
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->mCurrentEventIndex:I

    .line 1301
    iput p2, p0, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->MAX_QUEUE_COUNT:I

    .line 1302
    new-array p1, p2, [J

    iput-object p1, p0, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->mEventTime:[J

    .line 1303
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->mEventValue:[I

    .line 1304
    return-void
.end method


# virtual methods
.method add(JI)V
    .registers 6
    .param p1, "time"    # J
    .param p3, "value"    # I

    .line 1307
    iget v0, p0, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->mCurrentEventIndex:I

    iget v1, p0, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->MAX_QUEUE_COUNT:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_a

    .line 1308
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->mCurrentEventIndex:I

    .line 1311
    :cond_a
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->mEventTime:[J

    iget v1, p0, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->mCurrentEventIndex:I

    aput-wide p1, v0, v1

    .line 1312
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->mEventValue:[I

    aput p3, v0, v1

    .line 1314
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->mCurrentEventIndex:I

    .line 1315
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1318
    const-string v0, ""

    .line 1319
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget v2, p0, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->MAX_QUEUE_COUNT:I

    if-ge v1, v2, :cond_48

    .line 1320
    iget v2, p0, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->mCurrentEventIndex:I

    if-ne v1, v2, :cond_1c

    .line 1321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " < | > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1323
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->mEventTime:[J

    aget-wide v3, v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->mEventValue:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1319
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1325
    .end local v1    # "i":I
    :cond_48
    return-object v0
.end method
