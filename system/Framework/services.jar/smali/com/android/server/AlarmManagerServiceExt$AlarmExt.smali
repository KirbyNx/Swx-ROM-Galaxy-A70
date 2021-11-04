.class public Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
.super Lcom/android/server/AlarmManagerService$Alarm;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlarmExt"
.end annotation


# static fields
.field public static final DEFAULT_SUSPICIOUS_TIME_THRESHOLD:J = 0x2710L

.field public static volatile SUSPICIOUS_TIME_THRESHOLD:J


# instance fields
.field public isExact:Z

.field public isIntervalChanged:Z

.field public isPassedAlarm:Z

.field private isSuspiciousAlarm:Z

.field public isWhitelist:Z

.field public keyId:I

.field public lastTriggerWhen:J

.field public repeatIntervalOriginal:J

.field public repeatIntervalWindow:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 405
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->SUSPICIOUS_TIME_THRESHOLD:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService;)V
    .registers 25
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "ams"    # Lcom/android/server/AlarmManagerService;

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p0

    .line 413
    iget v1, v14, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-wide v2, v14, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v4, v14, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v6, v14, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    iget-wide v8, v14, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iget-wide v10, v14, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    iget-object v12, v14, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v13, v14, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v15, v14, Lcom/android/server/AlarmManagerService$Alarm;->listenerTag:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object v0, v14

    move-object v14, v15

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move/from16 v21, v1

    iget v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v17, v1

    iget v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move/from16 v18, v1

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    move-object/from16 v19, v1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct/range {v0 .. v19}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .line 416
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    move-object/from16 v2, p0

    iput v1, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->count:I

    .line 417
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    iput-wide v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    .line 418
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_4c

    iget-wide v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    goto :goto_57

    .line 419
    :cond_4c
    iget-wide v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iget-wide v7, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    iget-wide v9, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    sub-long/2addr v7, v9

    invoke-static {v3, v4, v7, v8}, Lcom/android/server/AlarmManagerServiceExt;->maxRepeatInterval(JJ)J

    move-result-wide v3

    :goto_57
    iput-wide v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 420
    iput-wide v5, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->lastTriggerWhen:J

    .line 421
    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    iput-boolean v1, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    iput-boolean v1, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isPassedAlarm:Z

    .line 422
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-nez v3, :cond_6c

    move v1, v4

    :cond_6c
    iput-boolean v1, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isExact:Z

    .line 423
    iget-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v1, :cond_7b

    .line 424
    iget-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v3, p2

    # invokes: Lcom/android/server/AlarmManagerServiceExt;->getKidFromPendingIntent(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)I
    invoke-static {v3, v1}, Lcom/android/server/AlarmManagerServiceExt;->access$000(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)I

    move-result v1

    goto :goto_87

    .line 425
    :cond_7b
    move-object/from16 v3, p2

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v1}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_87
    iput v1, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->keyId:I

    .line 426
    iput-boolean v4, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isSuspiciousAlarm:Z

    .line 427
    return-void
.end method


# virtual methods
.method public checkSuspiciousAlarm(J)V
    .registers 5
    .param p1, "distanceToAlarm"    # J

    .line 438
    sget-wide v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->SUSPICIOUS_TIME_THRESHOLD:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_9

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isSuspiciousAlarm:Z

    .line 443
    :cond_9
    return-void
.end method

.method public bridge synthetic dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .registers 8

    .line 340
    invoke-super/range {p0 .. p7}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    return-void
.end method

.method public bridge synthetic dumpDebug(Landroid/util/proto/ProtoOutputStream;JJJ)V
    .registers 8

    .line 340
    invoke-super/range {p0 .. p7}, Lcom/android/server/AlarmManagerService$Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJJ)V

    return-void
.end method

.method public isSuspiciousAlarm()Z
    .registers 2

    .line 451
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isSuspiciousAlarm:Z

    return v0
.end method

.method public bridge synthetic makeWakeupEvent(J)Lcom/android/server/AlarmManagerService$WakeupEvent;
    .registers 3

    .line 340
    invoke-super {p0, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->makeWakeupEvent(J)Lcom/android/server/AlarmManagerService$WakeupEvent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z
    .registers 3

    .line 340
    invoke-super {p0, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic matches(Ljava/lang/String;)Z
    .registers 2

    .line 340
    invoke-super {p0, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .line 340
    invoke-super {p0}, Lcom/android/server/AlarmManagerService$Alarm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
