.class final Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;
.super Landroid/os/Handler;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SluggishDetectorHandler"
.end annotation


# static fields
.field private static final ENABLE_DELAY_AFTER_BOOT:J = 0x493e0L

.field private static ENABLE_HANDLER:Z = false

.field private static final MSG_ENABLE_HANDLER:I = 0x1

.field private static final MSG_REPORT_LAUNCH:I = 0xc

.field private static final MSG_REPORT_LOCK_CONTENTION:I = 0xd

.field private static final MSG_REPORT_SLUGGISH:I = 0x2

.field private static final MSG_SET_COLLECT_FLAG_FOR_PERIODIC_MEMORY:I = 0x65

.field private static final MSG_SET_LAUNCH:I = 0xb

.field private static final MSG_SET_REPORT_FLAG_FOR_PERIODIC_LAUNCH:I = 0x3e9

.field private static final MSG_SET_REPORT_FLAG_FOR_PERIODIC_MEMORY:I = 0x3ea

.field private static final MSG_STORE_OLOG_Day:I = 0x15

.field private static final MSG_STORE_OLOG_Now:I = 0x16

.field private static final TAG:Ljava/lang/String;

.field private static sHandler:Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

.field private static sHandlerThread:Lcom/android/server/ServiceThread;


# instance fields
.field private mCurSetLaunchInfo:Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    .line 164
    sput-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    .line 166
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->ENABLE_HANDLER:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;

    .line 284
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 382
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->mCurSetLaunchInfo:Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

    .line 288
    return-void
.end method

.method static synthetic access$300()V
    .registers 0

    .line 146
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->init()V

    return-void
.end method

.method static synthetic access$8400(ILjava/lang/Object;)V
    .registers 2
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/Object;

    .line 146
    invoke-static {p0, p1}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendDataToHandler(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$8900(IJ)V
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # J

    .line 146
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendMessageToHandlerDelayed(IJ)V

    return-void
.end method

.method static synthetic access$9200(ILjava/lang/Object;J)V
    .registers 4
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # J

    .line 146
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendDataToHandlerWithDelay(ILjava/lang/Object;J)V

    return-void
.end method

.method private static check()Z
    .registers 1

    .line 191
    sget-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static init()V
    .registers 4

    .line 170
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_2d

    .line 175
    new-instance v0, Lcom/android/server/ServiceThread;

    const-class v1, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    .line 176
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 177
    new-instance v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    sget-object v1, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    .line 179
    # invokes: Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->setReportFlagForPeriodicWithDelay()V
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->access$700()V

    .line 180
    # invokes: Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->setReportFlagForPeriodicWithDelay()V
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->access$800()V

    .line 182
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->setEnableWithDelay()V

    .line 184
    :cond_2d
    return-void
.end method

.method private static sendDataToHandler(ILjava/lang/Object;)V
    .registers 4
    .param p0, "type"    # I
    .param p1, "obj"    # Ljava/lang/Object;

    .line 218
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_20

    .line 220
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->ENABLE_HANDLER:Z

    if-nez v0, :cond_9

    .line 223
    return-void

    .line 229
    :cond_9
    if-nez p1, :cond_c

    .line 233
    return-void

    .line 239
    :cond_c
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->check()Z

    move-result v0

    if-nez v0, :cond_15

    .line 240
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->init()V

    .line 242
    :cond_15
    sget-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 244
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 251
    .end local v0    # "msg":Landroid/os/Message;
    :cond_20
    return-void
.end method

.method private static sendDataToHandlerWithDelay(ILjava/lang/Object;J)V
    .registers 6
    .param p0, "type"    # I
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "delay"    # J

    .line 255
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_1b

    .line 260
    if-nez p1, :cond_7

    .line 263
    return-void

    .line 269
    :cond_7
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->check()Z

    move-result v0

    if-nez v0, :cond_10

    .line 270
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->init()V

    .line 272
    :cond_10
    sget-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 274
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 281
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1b
    return-void
.end method

.method private static sendMessageToHandlerDelayed(IJ)V
    .registers 4
    .param p0, "type"    # I
    .param p1, "delay"    # J

    .line 196
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_12

    .line 204
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->check()Z

    move-result v0

    if-nez v0, :cond_d

    .line 205
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->init()V

    .line 207
    :cond_d
    sget-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 214
    :cond_12
    return-void
.end method

.method private sendToInfoForLockContention(Lcom/android/server/wm/SluggishDetector$LockContentionInfo;)V
    .registers 2
    .param p1, "info"    # Lcom/android/server/wm/SluggishDetector$LockContentionInfo;

    .line 379
    # invokes: Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->LockInfo_Logging()V
    invoke-static {p1}, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->access$1000(Lcom/android/server/wm/SluggishDetector$LockContentionInfo;)V

    .line 380
    return-void
.end method

.method private sendToInfoSluggish(Lcom/android/server/wm/SluggishDetector$DetectInfo;)V
    .registers 2
    .param p1, "info"    # Lcom/android/server/wm/SluggishDetector$DetectInfo;

    .line 372
    # invokes: Lcom/android/server/wm/SluggishDetector$DetectInfo;->SluggishInfo_Logging()V
    invoke-static {p1}, Lcom/android/server/wm/SluggishDetector$DetectInfo;->access$900(Lcom/android/server/wm/SluggishDetector$DetectInfo;)V

    .line 373
    return-void
.end method

.method private setCollectFlagForPeriodicMemory()V
    .registers 2

    .line 431
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->removeMessages(I)V

    .line 432
    # invokes: Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->setCollectFlagForPeriodic()V
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->access$1500()V

    .line 433
    return-void
.end method

.method private static setEnable()V
    .registers 1

    .line 451
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->ENABLE_HANDLER:Z

    .line 452
    return-void
.end method

.method private static setEnableWithDelay()V
    .registers 3

    .line 459
    const/4 v0, 0x1

    const-wide/32 v1, 0x493e0

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendMessageToHandlerDelayed(IJ)V

    .line 460
    return-void
.end method

.method private setReportFlagForPeriodicLaunch()V
    .registers 2

    .line 413
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->removeMessages(I)V

    .line 414
    # invokes: Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->setReportFlagForPeriodic()V
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->access$1300()V

    .line 415
    return-void
.end method

.method private setReportFlagForPeriodicMemory()V
    .registers 2

    .line 422
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->removeMessages(I)V

    .line 423
    # invokes: Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->setReportFlagForPeriodic()V
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->access$1400()V

    .line 424
    return-void
.end method

.method private storeOLOGDay()V
    .registers 2

    .line 438
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->removeMessages(I)V

    .line 439
    const-string v0, "/data/log/remaining_olog"

    # invokes: Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->storeOLOG(Ljava/lang/String;)Z
    invoke-static {v0}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->access$1600(Ljava/lang/String;)Z

    .line 440
    return-void
.end method

.method private storeOLOGNow()V
    .registers 2

    .line 445
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->removeMessages(I)V

    .line 446
    const-string v0, "/data/log/remaining_olog_now"

    # invokes: Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->storeOLOG(Ljava/lang/String;)Z
    invoke-static {v0}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->access$1600(Ljava/lang/String;)Z

    .line 447
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 293
    if-nez p1, :cond_3

    .line 294
    return-void

    .line 303
    :cond_3
    :try_start_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_78

    const/16 v1, 0x15

    if-eq v0, v1, :cond_74

    const/16 v1, 0x16

    if-eq v0, v1, :cond_70

    const/16 v1, 0x65

    if-eq v0, v1, :cond_6c

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_68

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_64

    packed-switch v0, :pswitch_data_98

    goto/16 :goto_95

    .line 327
    :pswitch_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_95

    .line 328
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "lcInfo":Ljava/lang/String;
    new-instance v1, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;

    invoke-direct {v1, v0}, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;-><init>(Ljava/lang/String;)V

    .line 330
    .local v1, "info":Lcom/android/server/wm/SluggishDetector$LockContentionInfo;
    invoke-virtual {v1}, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->checkTime()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 331
    invoke-virtual {v1}, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->updateLCD()V

    .line 332
    invoke-direct {p0, v1}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendToInfoForLockContention(Lcom/android/server/wm/SluggishDetector$LockContentionInfo;)V

    .line 334
    .end local v0    # "lcInfo":Ljava/lang/String;
    .end local v1    # "info":Lcom/android/server/wm/SluggishDetector$LockContentionInfo;
    :cond_3f
    goto :goto_95

    .line 321
    :pswitch_40
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_95

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    if-eqz v0, :cond_95

    .line 322
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->reportLaunch(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V

    goto :goto_95

    .line 315
    :pswitch_52
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_95

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

    if-eqz v0, :cond_95

    .line 316
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->setLaunch(Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)V

    goto :goto_95

    .line 351
    :cond_64
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->setReportFlagForPeriodicMemory()V

    .line 352
    goto :goto_95

    .line 348
    :cond_68
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->setReportFlagForPeriodicLaunch()V

    .line 349
    goto :goto_95

    .line 345
    :cond_6c
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->setCollectFlagForPeriodicMemory()V

    .line 346
    goto :goto_95

    .line 342
    :cond_70
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->storeOLOGNow()V

    .line 343
    goto :goto_95

    .line 339
    :cond_74
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->storeOLOGDay()V

    .line 340
    goto :goto_95

    .line 309
    :cond_78
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_95

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;

    if-eqz v0, :cond_95

    .line 310
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;

    invoke-direct {p0, v0}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendToInfoSluggish(Lcom/android/server/wm/SluggishDetector$DetectInfo;)V

    goto :goto_95

    .line 305
    :cond_8a
    sget-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    const-string v1, "case MSG_ENABLE_HANDLER"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->setEnable()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_94} :catch_96

    .line 307
    nop

    .line 361
    :cond_95
    :goto_95
    goto :goto_97

    .line 358
    :catch_96
    move-exception v0

    .line 365
    :goto_97
    return-void

    :pswitch_data_98
    .packed-switch 0xb
        :pswitch_52
        :pswitch_40
        :pswitch_24
    .end packed-switch
.end method

.method reportLaunch(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V
    .registers 4
    .param p1, "info"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 403
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->mCurSetLaunchInfo:Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

    .line 404
    .local v0, "setLaunchInfo":Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->mCurSetLaunchInfo:Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

    .line 405
    # invokes: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->reportLaunch(Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)V
    invoke-static {p1, v0}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$1200(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)V

    .line 406
    return-void
.end method

.method setLaunch(Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)V
    .registers 2
    .param p1, "info"    # Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

    .line 391
    iput-object p1, p0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->mCurSetLaunchInfo:Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

    .line 392
    # invokes: Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->setLaunch()V
    invoke-static {p1}, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->access$1100(Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)V

    .line 396
    return-void
.end method
