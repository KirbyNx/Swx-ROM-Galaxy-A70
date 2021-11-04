.class Lcom/android/server/VibratorService$Vibration;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vibration"
.end annotation


# instance fields
.field public final attrs:Landroid/os/VibrationAttributes;

.field public effect:Landroid/os/VibrationEffect;

.field private mCommonType:I

.field private mCommonUse:Z

.field private mEngineData:[I

.field private mFrequency:I

.field private mMagnitude:I

.field private mMagnitudeType:Ljava/lang/String;

.field private mPattern:[J

.field private mRepeat:I

.field private mTimeout:J

.field public final opPkg:Ljava/lang/String;

.field public originalEffect:Landroid/os/VibrationEffect;

.field public final reason:Ljava/lang/String;

.field public final startTime:J

.field public final startTimeDebug:J

.field final synthetic this$0:Lcom/android/server/VibratorService;

.field public final token:Landroid/os/IBinder;

.field public final uid:I


# direct methods
.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "attrs"    # Landroid/os/VibrationAttributes;
    .param p5, "uid"    # I
    .param p6, "opPkg"    # Ljava/lang/String;
    .param p7, "reason"    # Ljava/lang/String;

    .line 309
    iput-object p1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/VibratorService$Vibration;->mCommonUse:Z

    .line 291
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    .line 293
    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    .line 294
    iput-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mEngineData:[I

    .line 295
    iput p1, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    .line 296
    iput p1, p0, Lcom/android/server/VibratorService$Vibration;->mFrequency:I

    .line 297
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/VibratorService$Vibration;->mCommonType:I

    .line 298
    sget-object p1, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_EXTRA:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {p1}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    .line 310
    iput-object p2, p0, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    .line 311
    iput-object p3, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    .line 312
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->startTime:J

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->startTimeDebug:J

    .line 314
    iput-object p4, p0, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    .line 315
    iput p5, p0, Lcom/android/server/VibratorService$Vibration;->uid:I

    .line 316
    iput-object p6, p0, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    .line 317
    iput-object p7, p0, Lcom/android/server/VibratorService$Vibration;->reason:Ljava/lang/String;

    .line 318
    return-void
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "attrs"    # Landroid/os/VibrationAttributes;
    .param p5, "uid"    # I
    .param p6, "opPkg"    # Ljava/lang/String;
    .param p7, "reason"    # Ljava/lang/String;
    .param p8, "repeat"    # I

    .line 410
    invoke-direct/range {p0 .. p7}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;)V

    .line 411
    iput p8, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    .line 413
    invoke-virtual {p0}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 414
    sget-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_CALL:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {p3, v0}, Landroid/os/VibrationEffect;->semSetMagnitudeType(Landroid/os/VibrationEffect$SemMagnitudeType;)V

    .line 416
    :cond_10
    invoke-virtual {p3}, Landroid/os/VibrationEffect;->semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    .line 417
    invoke-virtual {p3}, Landroid/os/VibrationEffect;->semGetMagnitude()I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    .line 418
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    .line 419
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    # invokes: Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {p1, v0, p6}, Lcom/android/server/VibratorService;->access$1000(Lcom/android/server/VibratorService;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    .line 421
    :cond_2b
    return-void
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 11
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "attrs"    # Landroid/os/VibrationAttributes;
    .param p5, "uid"    # I
    .param p6, "opPkg"    # Ljava/lang/String;
    .param p7, "reason"    # Ljava/lang/String;
    .param p8, "repeat"    # I
    .param p9, "magnitude"    # I
    .param p10, "magnitudeType"    # Ljava/lang/String;

    .line 425
    invoke-direct/range {p0 .. p7}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;)V

    .line 427
    iput p8, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    .line 428
    iput p9, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    .line 429
    iput-object p10, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    .line 430
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/android/server/VibratorService$1;)V
    .registers 12
    .param p1, "x0"    # Lcom/android/server/VibratorService;
    .param p2, "x1"    # Landroid/os/IBinder;
    .param p3, "x2"    # Landroid/os/VibrationEffect;
    .param p4, "x3"    # Landroid/os/VibrationAttributes;
    .param p5, "x4"    # I
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # I
    .param p9, "x8"    # I
    .param p10, "x9"    # Ljava/lang/String;
    .param p11, "x10"    # Lcom/android/server/VibratorService$1;

    .line 276
    invoke-direct/range {p0 .. p10}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;ILcom/android/server/VibratorService$1;)V
    .registers 10
    .param p1, "x0"    # Lcom/android/server/VibratorService;
    .param p2, "x1"    # Landroid/os/IBinder;
    .param p3, "x2"    # Landroid/os/VibrationEffect;
    .param p4, "x3"    # Landroid/os/VibrationAttributes;
    .param p5, "x4"    # I
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # I
    .param p9, "x8"    # Lcom/android/server/VibratorService$1;

    .line 276
    invoke-direct/range {p0 .. p8}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;J[JIIIILjava/lang/String;[I)V
    .registers 27
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "attrs"    # Landroid/os/VibrationAttributes;
    .param p5, "uid"    # I
    .param p6, "opPkg"    # Ljava/lang/String;
    .param p7, "reason"    # Ljava/lang/String;
    .param p8, "timeout"    # J
    .param p10, "pattern"    # [J
    .param p11, "repeat"    # I
    .param p12, "magnitude"    # I
    .param p13, "frequency"    # I
    .param p14, "type"    # I
    .param p15, "magnitudeType"    # Ljava/lang/String;
    .param p16, "data"    # [I

    .line 435
    move-object v0, p0

    invoke-direct/range {p0 .. p7}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;)V

    .line 437
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/VibratorService$Vibration;->mCommonUse:Z

    .line 438
    move-wide/from16 v1, p8

    iput-wide v1, v0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    .line 439
    move-object/from16 v3, p10

    iput-object v3, v0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    .line 440
    move/from16 v4, p11

    iput v4, v0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    .line 441
    move/from16 v5, p12

    iput v5, v0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    .line 442
    move/from16 v6, p13

    iput v6, v0, Lcom/android/server/VibratorService$Vibration;->mFrequency:I

    .line 443
    move/from16 v7, p14

    iput v7, v0, Lcom/android/server/VibratorService$Vibration;->mCommonType:I

    .line 444
    move-object/from16 v8, p15

    iput-object v8, v0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    .line 445
    move-object/from16 v9, p16

    iput-object v9, v0, Lcom/android/server/VibratorService$Vibration;->mEngineData:[I

    .line 446
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;J[JIIIILjava/lang/String;[ILcom/android/server/VibratorService$1;)V
    .registers 18
    .param p1, "x0"    # Lcom/android/server/VibratorService;
    .param p2, "x1"    # Landroid/os/IBinder;
    .param p3, "x2"    # Landroid/os/VibrationEffect;
    .param p4, "x3"    # Landroid/os/VibrationAttributes;
    .param p5, "x4"    # I
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # J
    .param p10, "x8"    # [J
    .param p11, "x9"    # I
    .param p12, "x10"    # I
    .param p13, "x11"    # I
    .param p14, "x12"    # I
    .param p15, "x13"    # Ljava/lang/String;
    .param p16, "x14"    # [I
    .param p17, "x15"    # Lcom/android/server/VibratorService$1;

    .line 276
    invoke-direct/range {p0 .. p16}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;J[JIIIILjava/lang/String;[I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/VibratorService$1;)V
    .registers 9
    .param p1, "x0"    # Lcom/android/server/VibratorService;
    .param p2, "x1"    # Landroid/os/IBinder;
    .param p3, "x2"    # Landroid/os/VibrationEffect;
    .param p4, "x3"    # Landroid/os/VibrationAttributes;
    .param p5, "x4"    # I
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Lcom/android/server/VibratorService$1;

    .line 276
    invoke-direct/range {p0 .. p7}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .line 276
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/VibratorService$Vibration;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .line 276
    iget-boolean v0, p0, Lcom/android/server/VibratorService$Vibration;->mCommonUse:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/VibratorService$Vibration;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .line 276
    iget-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/android/server/VibratorService$Vibration;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .line 276
    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/VibratorService$Vibration;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .line 276
    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mCommonType:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/VibratorService$Vibration;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .line 276
    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/VibratorService$Vibration;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .line 276
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mEngineData:[I

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/VibratorService$Vibration;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .line 276
    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mFrequency:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/VibratorService$Vibration;)[J
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .line 276
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    return-object v0
.end method

.method private getCaller()Ljava/lang/String;
    .registers 8

    .line 390
    const-string v0, ""

    .line 391
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 393
    .local v1, "e":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_40

    aget-object v4, v1, v3

    .line 394
    .local v4, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Vibrator"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    goto :goto_40

    .line 393
    .end local v4    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 400
    :cond_40
    :goto_40
    return-object v0
.end method

.method private onComplete()V
    .registers 3

    .line 334
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$100(Lcom/android/server/VibratorService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 335
    :try_start_7
    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v1

    if-ne p0, v1, :cond_14

    .line 336
    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    .line 338
    :cond_14
    monitor-exit v0

    .line 339
    return-void

    .line 338
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v1
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 321
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$100(Lcom/android/server/VibratorService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 322
    :try_start_7
    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v1

    if-ne p0, v1, :cond_1b

    .line 324
    const-string v1, "VibratorService"

    const-string v2, "binderDied()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    .line 328
    :cond_1b
    monitor-exit v0

    .line 329
    return-void

    .line 328
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public hasTimeoutLongerThan(J)Z
    .registers 7
    .param p1, "millis"    # J

    .line 342
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    .line 343
    .local v0, "duration":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_12

    cmp-long v2, v0, p1

    if-lez v2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return v2
.end method

.method public isAlarm()Z
    .registers 2

    .line 366
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    # invokes: Lcom/android/server/VibratorService;->isAlarm(I)Z
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$700(I)Z

    move-result v0

    return v0
.end method

.method public isEnforcedVibration()Z
    .registers 3

    .line 450
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isFromSystem()Z
    .registers 3

    .line 370
    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->uid:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_19

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mSystemUiPackage:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$800(Lcom/android/server/VibratorService;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method public isHapticFeedback()Z
    .registers 2

    .line 347
    iget-boolean v0, p0, Lcom/android/server/VibratorService$Vibration;->mCommonUse:Z

    if-eqz v0, :cond_c

    .line 348
    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    if-gez v0, :cond_a

    .line 349
    const/4 v0, 0x1

    return v0

    .line 351
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 354
    :cond_c
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    # invokes: Lcom/android/server/VibratorService;->isHapticFeedback(I)Z
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$400(I)Z

    move-result v0

    return v0
.end method

.method public isNotification()Z
    .registers 2

    .line 358
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    # invokes: Lcom/android/server/VibratorService;->isNotification(I)Z
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$500(I)Z

    move-result v0

    return v0
.end method

.method public isRingtone()Z
    .registers 2

    .line 362
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    # invokes: Lcom/android/server/VibratorService;->isRingtone(I)Z
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$600(I)Z

    move-result v0

    return v0
.end method

.method public toExtraInfo()Lcom/android/server/VibratorService$VibrationInfo;
    .registers 22

    .line 380
    move-object/from16 v0, p0

    const-string v1, "/"

    .line 381
    .local v1, "caller":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    const-string v3, "android"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService$Vibration;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 384
    :cond_21
    new-instance v20, Lcom/android/server/VibratorService$VibrationInfo;

    iget-wide v3, v0, Lcom/android/server/VibratorService$Vibration;->startTimeDebug:J

    iget-object v5, v0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    iget-object v6, v0, Lcom/android/server/VibratorService$Vibration;->originalEffect:Landroid/os/VibrationEffect;

    iget-object v7, v0, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    iget v8, v0, Lcom/android/server/VibratorService$Vibration;->uid:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/VibratorService$Vibration;->reason:Ljava/lang/String;

    iget-wide v11, v0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    iget-object v13, v0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    iget v14, v0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    .line 385
    iget-object v2, v0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mIsFrequencySupported:Z
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$900(Lcom/android/server/VibratorService;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget v2, v0, Lcom/android/server/VibratorService$Vibration;->mFrequency:I

    goto :goto_52

    :cond_51
    const/4 v2, -0x1

    :goto_52
    move v15, v2

    iget v2, v0, Lcom/android/server/VibratorService$Vibration;->mCommonType:I

    move/from16 v16, v2

    iget-object v2, v0, Lcom/android/server/VibratorService$Vibration;->mEngineData:[I

    move-object/from16 v17, v2

    iget v2, v0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    move/from16 v18, v2

    iget-object v2, v0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    move-object/from16 v19, v2

    move-object/from16 v2, v20

    invoke-direct/range {v2 .. v19}, Lcom/android/server/VibratorService$VibrationInfo;-><init>(JLandroid/os/VibrationEffect;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;J[JIII[IILjava/lang/String;)V

    .line 384
    return-object v20
.end method

.method public toInfo()Lcom/android/server/VibratorService$VibrationInfo;
    .registers 11

    .line 374
    new-instance v9, Lcom/android/server/VibratorService$VibrationInfo;

    iget-wide v1, p0, Lcom/android/server/VibratorService$Vibration;->startTimeDebug:J

    iget-object v3, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    iget-object v4, p0, Lcom/android/server/VibratorService$Vibration;->originalEffect:Landroid/os/VibrationEffect;

    iget-object v5, p0, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    iget v6, p0, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v7, p0, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/VibratorService$Vibration;->reason:Ljava/lang/String;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/server/VibratorService$VibrationInfo;-><init>(JLandroid/os/VibrationEffect;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method
