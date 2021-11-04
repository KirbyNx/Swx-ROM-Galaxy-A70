.class Lcom/android/server/power/PowerManagerLog$LogEntry;
.super Ljava/lang/Object;
.source "PowerManagerLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogEntry"
.end annotation


# instance fields
.field mArgs:[B

.field mTag:B

.field mTid:S

.field mTime:B


# direct methods
.method constructor <init>()V
    .registers 1

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private combineArgsToString([Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p1, "list"    # [Ljava/lang/Object;

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .local v0, "args":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_1c

    .line 392
    if-eqz v1, :cond_10

    .line 393
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    :cond_10
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 396
    .end local v1    # "i":I
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getFormatFromTag()Ljava/lang/String;
    .registers 2

    .line 466
    iget-byte v0, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTag:B

    packed-switch v0, :pswitch_data_64

    .line 528
    const-string/jumbo v0, "not matching tag case"

    return-object v0

    .line 526
    :pswitch_9
    const-string v0, "PowerManagerService: release WakeLock %s \'%s\'  %10s uid : %s  %s"

    return-object v0

    .line 524
    :pswitch_c
    const-string v0, "PowerManagerService: acquire WakeLock %s \'%s\'  %10s uid : %s  %s"

    return-object v0

    .line 522
    :pswitch_f
    const-string v0, "PowerManagerService: [api] setDozeAfterScreenOff: %s"

    return-object v0

    .line 520
    :pswitch_12
    const-string v0, "PowerManagerService: nativeSetInteractiveAsync %s"

    return-object v0

    .line 518
    :pswitch_15
    const-string v0, "PowerManagerService: [API] setDualScreenPolicy: dualScreenPolicy: %s"

    return-object v0

    .line 516
    :pswitch_18
    const-string v0, "PowerManagerService: [PWL] %s \'%s\'  %10s uid : %s  %s"

    return-object v0

    .line 514
    :pswitch_1b
    const-string v0, "PowerManagerService: [PWL] mBootCompleted : %s"

    return-object v0

    .line 510
    :pswitch_1e
    const-string v0, "PowerManagerService: [PWL] mDisplayPowerRequest.policy : %s"

    return-object v0

    .line 512
    :pswitch_21
    const-string v0, "PowerManagerService: [PWL] mDisplayReady : %s"

    return-object v0

    .line 508
    :pswitch_24
    const-string v0, "PowerManagerService: [PWL] mUserActivitySummary : 0x%s"

    return-object v0

    .line 506
    :pswitch_27
    const-string v0, "PowerManagerService: [PWL] Off : %s ago"

    return-object v0

    .line 504
    :pswitch_2a
    const-string v0, "PowerManagerService: [PWL] On : %s, mStayOn: %s, mWakeLockSummary & WAKE_LOCK_STAY_AWAKE: %s, mUserActivitySummary: 0x%s"

    return-object v0

    .line 502
    :pswitch_2d
    const-string v0, "LocalDisplayAdapter: !@ %s: took %s ms"

    return-object v0

    .line 500
    :pswitch_30
    const-string v0, "DisplayPowerController: updatePowerState : mUseHbmAtManualMax : %s"

    return-object v0

    .line 498
    :pswitch_33
    const-string v0, "AutomaticBrightnessController: calculateAmbientLux: No ambient light readings available"

    return-object v0

    .line 496
    :pswitch_36
    const-string v0, "PowerManagerService: UserActivityState : %s -> %s"

    return-object v0

    .line 494
    :pswitch_39
    const-string v0, "DisplayPowerState: !@ ColorFade exit"

    return-object v0

    .line 492
    :pswitch_3c
    const-string v0, "DisplayPowerState: !@ ColorFade entry"

    return-object v0

    .line 490
    :pswitch_3f
    const-string v0, "LocalDisplayAdapter: !@ display_state: %s -> %s (id:%s, limit:%s, L:%s)"

    return-object v0

    .line 488
    :pswitch_42
    const-string v0, "BrightnessMappingStrategy: addUserDataPoint: [%s] %s"

    return-object v0

    .line 486
    :pswitch_45
    const-string v0, "ShortTermModel: reset data, %s"

    return-object v0

    .line 484
    :pswitch_48
    const-string v0, "AutomaticBrightnessController: updateAutoBrightness : %s    %6s < %6s < %8s (adj:%s) %s"

    return-object v0

    .line 482
    :pswitch_4b
    const-string v0, "DisplayPowerController: Animating brightness: target=%s, rate=%s, AB limit(%s ~ %s), MB limit(%s ~ %s), sf=%s"

    return-object v0

    .line 480
    :pswitch_4e
    const-string v0, "PowerManagerService: Screen__On : Cancel (folder)"

    return-object v0

    .line 478
    :pswitch_51
    const-string v0, "PowerManagerService: Screen__On : Cancel (coverType: %s)"

    return-object v0

    .line 476
    :pswitch_54
    const-string v0, "PowerManagerService: Screen__On : Cancel (proximity)"

    return-object v0

    .line 474
    :pswitch_57
    const-string v0, "PowerManagerService: Screen__On : Cancel (notifications are disabled : %s)"

    return-object v0

    .line 472
    :pswitch_5a
    const-string v0, "PowerManagerService: Screen__On : Cancel (not allow 3rd-party app on sub screen"

    return-object v0

    .line 470
    :pswitch_5d
    const-string v0, "PowerManagerService: !@Screen__Off - %s : (uid : %s, reason : %s)"

    return-object v0

    .line 468
    :pswitch_60
    const-string v0, "PowerManagerService: !@Screen__On - %s : (uid : %s, reason : %s)"

    return-object v0

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method private getLockFlagsToString(I)Ljava/lang/String;
    .registers 5
    .param p1, "flags"    # I

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .local v0, "sb":Ljava/lang/StringBuilder;
    const v1, 0xffff

    and-int/2addr v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_65

    const/4 v2, 0x6

    if-eq v1, v2, :cond_5f

    const/16 v2, 0xa

    if-eq v1, v2, :cond_59

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_53

    const/16 v2, 0x20

    if-eq v1, v2, :cond_44

    const/16 v2, 0x40

    if-eq v1, v2, :cond_3e

    const/16 v2, 0x80

    if-eq v1, v2, :cond_38

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported wakelock level flags"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6b

    .line 438
    :cond_38
    const-string v1, "DRAW_WAKE_LOCK                 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    goto :goto_6b

    .line 435
    :cond_3e
    const-string v1, "DOZE_WAKE_LOCK                 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    goto :goto_6b

    .line 441
    :cond_44
    const-string v1, "PROXIMITY_SCREEN_OFF_WAKE_LOCK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_6b

    .line 443
    const-string v1, "WAIT_FOR_NO_PROXIMITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6b

    .line 432
    :cond_53
    const-string v1, "FULL_WAKE_LOCK                 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    goto :goto_6b

    .line 429
    :cond_59
    const-string v1, "SCREEN_BRIGHT_WAKE_LOCK        "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    goto :goto_6b

    .line 426
    :cond_5f
    const-string v1, "SCREEN_DIM_WAKE_LOCK           "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    goto :goto_6b

    .line 423
    :cond_65
    const-string v1, "PARTIAL_WAKE_LOCK              "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    nop

    .line 450
    :cond_6b
    :goto_6b
    const/high16 v1, 0x10000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_75

    .line 451
    const-string v1, "ACQUIRE_CAUSES_WAKEUP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :cond_75
    const/high16 v1, 0x20000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_7f

    .line 454
    const-string v1, "ON_AFTER_RELEASE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    :cond_7f
    const/high16 v1, 0x10000

    and-int/2addr v1, p1

    if-eqz v1, :cond_89

    .line 457
    const-string v1, "EXTERNAL_DISPLAY_ONLY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    :cond_89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public makeLogLine()Ljava/lang/String;
    .registers 4

    .line 400
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mArgs:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "#"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "args":[Ljava/lang/Object;
    iget-byte v1, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTag:B

    const/16 v2, 0x19

    if-eq v1, v2, :cond_1c

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_1c

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_2b

    .line 402
    :cond_1c
    const/4 v1, 0x0

    aget-object v2, v0, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerLog$LogEntry;->getLockFlagsToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 404
    :cond_2b
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerLog$LogEntry;->getFormatFromTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public set(BBS[Ljava/lang/Object;)V
    .registers 6
    .param p1, "tag"    # B
    .param p2, "time"    # B
    .param p3, "tid"    # S
    .param p4, "list"    # [Ljava/lang/Object;

    .line 370
    iput-byte p1, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTag:B

    .line 371
    iput-byte p2, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTime:B

    .line 372
    iput-short p3, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTid:S

    .line 373
    invoke-direct {p0, p4}, Lcom/android/server/power/PowerManagerLog$LogEntry;->combineArgsToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mArgs:[B

    .line 374
    return-void
.end method

.method public set([Ljava/lang/String;)V
    .registers 3
    .param p1, "arr"    # [Ljava/lang/String;

    .line 377
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTag:B

    .line 378
    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTime:B

    .line 379
    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    iput-short v0, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTid:S

    .line 380
    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mArgs:[B

    .line 381
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTime:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mTid:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerLog$LogEntry;->mArgs:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
