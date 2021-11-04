.class Lcom/android/server/VibratorService$VibrationInfo;
.super Ljava/lang/Object;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VibrationInfo"
.end annotation


# instance fields
.field private final mAttrs:Landroid/os/VibrationAttributes;

.field private mCommonType:I

.field private mData:[I

.field private final mEffect:Landroid/os/VibrationEffect;

.field private mFrequency:I

.field private mIntensity:I

.field private mMagnitudeType:Ljava/lang/String;

.field private final mOpPkg:Ljava/lang/String;

.field private final mOriginalEffect:Landroid/os/VibrationEffect;

.field private mPattern:[J

.field private final mReason:Ljava/lang/String;

.field private mRepeat:I

.field private final mStartTimeDebug:J

.field private mTimeout:J

.field private final mUid:I


# direct methods
.method constructor <init>(JLandroid/os/VibrationEffect;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "startTimeDebug"    # J
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "originalEffect"    # Landroid/os/VibrationEffect;
    .param p5, "attrs"    # Landroid/os/VibrationAttributes;
    .param p6, "uid"    # I
    .param p7, "opPkg"    # Ljava/lang/String;
    .param p8, "reason"    # Ljava/lang/String;

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-wide p1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mStartTimeDebug:J

    .line 479
    iput-object p3, p0, Lcom/android/server/VibratorService$VibrationInfo;->mEffect:Landroid/os/VibrationEffect;

    .line 480
    iput-object p4, p0, Lcom/android/server/VibratorService$VibrationInfo;->mOriginalEffect:Landroid/os/VibrationEffect;

    .line 481
    iput-object p5, p0, Lcom/android/server/VibratorService$VibrationInfo;->mAttrs:Landroid/os/VibrationAttributes;

    .line 482
    iput p6, p0, Lcom/android/server/VibratorService$VibrationInfo;->mUid:I

    .line 483
    iput-object p7, p0, Lcom/android/server/VibratorService$VibrationInfo;->mOpPkg:Ljava/lang/String;

    .line 484
    iput-object p8, p0, Lcom/android/server/VibratorService$VibrationInfo;->mReason:Ljava/lang/String;

    .line 485
    return-void
.end method

.method constructor <init>(JLandroid/os/VibrationEffect;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;J[JIII[IILjava/lang/String;)V
    .registers 28
    .param p1, "startTimeDebug"    # J
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "originalEffect"    # Landroid/os/VibrationEffect;
    .param p5, "attrs"    # Landroid/os/VibrationAttributes;
    .param p6, "uid"    # I
    .param p7, "opPkg"    # Ljava/lang/String;
    .param p8, "reason"    # Ljava/lang/String;
    .param p9, "timeout"    # J
    .param p11, "pattern"    # [J
    .param p12, "repeat"    # I
    .param p13, "frequency"    # I
    .param p14, "type"    # I
    .param p15, "data"    # [I
    .param p16, "intensity"    # I
    .param p17, "magnitudeType"    # Ljava/lang/String;

    .line 492
    move-object v0, p0

    invoke-direct/range {p0 .. p8}, Lcom/android/server/VibratorService$VibrationInfo;-><init>(JLandroid/os/VibrationEffect;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;)V

    .line 493
    move-wide/from16 v1, p9

    iput-wide v1, v0, Lcom/android/server/VibratorService$VibrationInfo;->mTimeout:J

    .line 494
    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/android/server/VibratorService$VibrationInfo;->mPattern:[J

    .line 495
    move/from16 v4, p12

    iput v4, v0, Lcom/android/server/VibratorService$VibrationInfo;->mRepeat:I

    .line 496
    move/from16 v5, p13

    iput v5, v0, Lcom/android/server/VibratorService$VibrationInfo;->mFrequency:I

    .line 497
    move/from16 v6, p14

    iput v6, v0, Lcom/android/server/VibratorService$VibrationInfo;->mCommonType:I

    .line 498
    move-object/from16 v7, p15

    iput-object v7, v0, Lcom/android/server/VibratorService$VibrationInfo;->mData:[I

    .line 499
    move/from16 v8, p16

    iput v8, v0, Lcom/android/server/VibratorService$VibrationInfo;->mIntensity:I

    .line 500
    move-object/from16 v9, p17

    iput-object v9, v0, Lcom/android/server/VibratorService$VibrationInfo;->mMagnitudeType:Ljava/lang/String;

    .line 501
    return-void
.end method


# virtual methods
.method dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 560
    monitor-enter p0

    .line 561
    :try_start_1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 562
    .local v0, "token":J
    const-wide v2, 0x10300000001L

    iget-wide v4, p0, Lcom/android/server/VibratorService$VibrationInfo;->mStartTimeDebug:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 563
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 564
    .end local v0    # "token":J
    monitor-exit p0

    .line 565
    return-void

    .line 564
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    const-string/jumbo v1, "startTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-static {}, Landroid/icu/text/DateFormat;->getDateTimeInstance()Landroid/icu/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/VibratorService$VibrationInfo;->mStartTimeDebug:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    const-string v1, ", effect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mEffect:Landroid/os/VibrationEffect;

    .line 511
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 512
    const-string v1, ", originalEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mOriginalEffect:Landroid/os/VibrationEffect;

    .line 513
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 514
    const-string v1, ", attrs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mAttrs:Landroid/os/VibrationAttributes;

    .line 515
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 516
    const-string v1, ", uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mUid:I

    .line 517
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 518
    const-string v1, ", opPkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mOpPkg:Ljava/lang/String;

    .line 519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mReason:Ljava/lang/String;

    .line 521
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    const-string v1, ", timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mTimeout:J

    .line 523
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 524
    const-string v1, ", pattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mPattern:[J

    .line 525
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    const-string v1, ", repeat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mRepeat:I

    .line 527
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 528
    const-string v1, " f: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mFrequency:I

    .line 529
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 530
    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mCommonType:I

    .line 531
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 532
    const-string v1, ", i: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mIntensity:I

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 534
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mMagnitudeType:Ljava/lang/String;

    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    const-string v1, ", d: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mData:[I

    if-eqz v1, :cond_af

    const-string v1, "O"

    goto :goto_b1

    :cond_af
    const-string v1, "X"

    :goto_b1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 507
    return-object v0
.end method
