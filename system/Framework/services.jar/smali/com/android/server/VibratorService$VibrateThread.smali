.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field private final mAttrs:Landroid/os/VibrationAttributes;

.field private final mCommonUse:Z

.field private mForceStop:Z

.field private final mFrequency:I

.field private final mMagnitude:I

.field private final mUid:I

.field private final mVibration:Lcom/android/server/VibratorService$Vibration;

.field private final mWaveform:Landroid/os/VibrationEffect$Waveform;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/VibrationEffect$Waveform;ILandroid/os/VibrationAttributes;)V
    .registers 6
    .param p2, "waveform"    # Landroid/os/VibrationEffect$Waveform;
    .param p3, "uid"    # I
    .param p4, "attrs"    # Landroid/os/VibrationAttributes;

    .line 2012
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2013
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    .line 2014
    iput p3, p0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    .line 2015
    iput-object p4, p0, Lcom/android/server/VibratorService$VibrateThread;->mAttrs:Landroid/os/VibrationAttributes;

    .line 2016
    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/WorkSource;->set(I)V

    .line 2017
    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2021
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    .line 2022
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/VibratorService$VibrateThread;->mMagnitude:I

    .line 2023
    iput p1, p0, Lcom/android/server/VibratorService$VibrateThread;->mFrequency:I

    .line 2024
    iput-boolean p1, p0, Lcom/android/server/VibratorService$VibrateThread;->mCommonUse:Z

    .line 2026
    return-void
.end method

.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;ILandroid/os/VibrationAttributes;Z)V
    .registers 8
    .param p2, "vib"    # Lcom/android/server/VibratorService$Vibration;
    .param p3, "uid"    # I
    .param p4, "attrs"    # Landroid/os/VibrationAttributes;
    .param p5, "commonUse"    # Z

    .line 2046
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2047
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    .line 2048
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    .line 2049
    iput p3, p0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    .line 2050
    iput-object p4, p0, Lcom/android/server/VibratorService$VibrateThread;->mAttrs:Landroid/os/VibrationAttributes;

    .line 2051
    # getter for: Lcom/android/server/VibratorService$Vibration;->mMagnitude:I
    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->access$1800(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mMagnitude:I

    .line 2052
    # getter for: Lcom/android/server/VibratorService$Vibration;->mFrequency:I
    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->access$2200(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mFrequency:I

    .line 2053
    iput-boolean p5, p0, Lcom/android/server/VibratorService$VibrateThread;->mCommonUse:Z

    .line 2054
    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    iget v1, p2, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    .line 2055
    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2056
    return-void
.end method

.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;Landroid/os/VibrationEffect$Waveform;ILandroid/os/VibrationAttributes;II)V
    .registers 9
    .param p2, "vib"    # Lcom/android/server/VibratorService$Vibration;
    .param p3, "waveform"    # Landroid/os/VibrationEffect$Waveform;
    .param p4, "uid"    # I
    .param p5, "attrs"    # Landroid/os/VibrationAttributes;
    .param p6, "magnitude"    # I
    .param p7, "frequency"    # I

    .line 2034
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2035
    iput-object p3, p0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    .line 2036
    iput p4, p0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    .line 2037
    iput-object p5, p0, Lcom/android/server/VibratorService$VibrateThread;->mAttrs:Landroid/os/VibrationAttributes;

    .line 2038
    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/os/WorkSource;->set(I)V

    .line 2039
    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2040
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    .line 2041
    iput p6, p0, Lcom/android/server/VibratorService$VibrateThread;->mMagnitude:I

    .line 2042
    iput p7, p0, Lcom/android/server/VibratorService$VibrateThread;->mFrequency:I

    .line 2043
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/VibratorService$VibrateThread;->mCommonUse:Z

    .line 2044
    return-void
.end method

.method private delay(J)V
    .registers 9
    .param p1, "duration"    # J

    .line 2199
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1f

    .line 2200
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    .line 2203
    .local v2, "bedtime":J
    :cond_b
    :try_start_b
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_f

    .line 2205
    goto :goto_10

    .line 2204
    :catch_f
    move-exception v4

    .line 2206
    :goto_10
    iget-boolean v4, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-eqz v4, :cond_15

    .line 2207
    goto :goto_1f

    .line 2209
    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long p1, v2, v4

    .line 2210
    cmp-long v4, p1, v0

    if-gtz v4, :cond_b

    .line 2212
    .end local v2    # "bedtime":J
    :cond_1f
    :goto_1f
    return-void
.end method

.method private delayLocked(J)J
    .registers 13
    .param p1, "duration"    # J

    .line 2060
    const-wide/32 v0, 0x800000

    const-string v2, "delayLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2062
    move-wide v2, p1

    .line 2063
    .local v2, "durationRemaining":J
    const-wide/16 v4, 0x0

    cmp-long v6, p1, v4

    if-lez v6, :cond_33

    .line 2064
    :try_start_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_2e

    add-long/2addr v6, p1

    .line 2067
    .local v6, "bedtime":J
    :cond_14
    :try_start_14
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_18
    .catchall {:try_start_14 .. :try_end_17} :catchall_2e

    .line 2069
    goto :goto_19

    .line 2068
    :catch_18
    move-exception v8

    .line 2070
    :goto_19
    :try_start_19
    iget-boolean v8, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-eqz v8, :cond_1e

    .line 2071
    goto :goto_28

    .line 2073
    :cond_1e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_2e

    sub-long v2, v6, v8

    .line 2074
    cmp-long v8, v2, v4

    if-gtz v8, :cond_14

    .line 2075
    :goto_28
    sub-long v4, p1, v2

    .line 2079
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2075
    return-wide v4

    .line 2079
    .end local v2    # "durationRemaining":J
    .end local v6    # "bedtime":J
    :catchall_2e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2080
    throw v2

    .line 2077
    .restart local v2    # "durationRemaining":J
    :cond_33
    nop

    .line 2079
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2077
    return-wide v4
.end method

.method private getTotalOnDuration([J[III)J
    .registers 11
    .param p1, "timings"    # [J
    .param p2, "amplitudes"    # [I
    .param p3, "startIndex"    # I
    .param p4, "repeatIndex"    # I

    .line 2173
    move v0, p3

    .line 2174
    .local v0, "i":I
    const-wide/16 v1, 0x0

    .line 2175
    .local v1, "timing":J
    :cond_3
    aget v3, p2, v0

    if-eqz v3, :cond_1c

    .line 2176
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    aget-wide v4, p1, v0

    add-long/2addr v1, v4

    .line 2177
    array-length v0, p1

    if-lt v3, v0, :cond_16

    .line 2178
    if-ltz p4, :cond_14

    .line 2179
    move v0, p4

    .line 2181
    .end local v3    # "i":I
    .restart local v0    # "i":I
    const/4 p4, -0x1

    goto :goto_17

    .line 2178
    .end local v0    # "i":I
    .restart local v3    # "i":I
    :cond_14
    move v0, v3

    goto :goto_1c

    .line 2177
    :cond_16
    move v0, v3

    .line 2186
    .end local v3    # "i":I
    .restart local v0    # "i":I
    :goto_17
    if-ne v0, p3, :cond_3

    .line 2187
    const-wide/16 v3, 0x3e8

    return-wide v3

    .line 2190
    :cond_1c
    :goto_1c
    return-wide v1
.end method

.method private playCommonPattern()Z
    .registers 28

    .line 2215
    move-object/from16 v1, p0

    monitor-enter p0

    .line 2216
    :try_start_3
    iget-object v0, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {v0}, Lcom/android/server/VibratorService$Vibration;->access$2800(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v0

    .line 2217
    .local v0, "pattern":[J
    array-length v2, v0

    .line 2218
    .local v2, "len":I
    iget-object v3, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->access$2000(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    .line 2219
    .local v3, "repeat":I
    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    iget v8, v4, Lcom/android/server/VibratorService$Vibration;->uid:I

    .line 2220
    .local v8, "uid":I
    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v9, v4, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    .line 2221
    .local v9, "attrs":Landroid/os/VibrationAttributes;
    const/4 v4, 0x0

    .line 2222
    .local v4, "index":I
    const-wide/16 v5, 0x0

    .line 2226
    .local v5, "duration":J
    :goto_1b
    iget-boolean v7, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v7, :cond_c0

    .line 2228
    if-ge v4, v2, :cond_27

    .line 2229
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "index":I
    .local v7, "index":I
    aget-wide v10, v0, v4

    add-long/2addr v5, v10

    move v4, v7

    .line 2233
    .end local v7    # "index":I
    .restart local v4    # "index":I
    :cond_27
    invoke-direct {v1, v5, v6}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    .line 2234
    iget-boolean v7, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-eqz v7, :cond_30

    .line 2235
    goto/16 :goto_c0

    .line 2238
    :cond_30
    if-ge v4, v2, :cond_b8

    .line 2241
    add-int/lit8 v13, v4, 0x1

    .end local v4    # "index":I
    .local v13, "index":I
    aget-wide v10, v0, v4

    move-wide/from16 v23, v10

    .line 2242
    .end local v5    # "duration":J
    .local v23, "duration":J
    const-wide/16 v4, 0x0

    cmp-long v4, v23, v4

    if-lez v4, :cond_b3

    .line 2243
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-wide/from16 v25, v4

    .line 2245
    .local v25, "startTime":J
    invoke-static {}, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_CIRRUS_HAPTIC()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 2246
    iget-object v5, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mMagnitude:I
    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$1800(Lcom/android/server/VibratorService$Vibration;)I

    move-result v10

    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    .line 2247
    # getter for: Lcom/android/server/VibratorService$Vibration;->mCommonType:I
    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$1900(Lcom/android/server/VibratorService$Vibration;)I

    move-result v11

    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$2000(Lcom/android/server/VibratorService$Vibration;)I

    move-result v12

    .line 2246
    move-wide/from16 v6, v23

    # invokes: Lcom/android/server/VibratorService;->doVibratorOnByIndex(JILandroid/os/VibrationAttributes;III)V
    invoke-static/range {v5 .. v12}, Lcom/android/server/VibratorService;->access$2900(Lcom/android/server/VibratorService;JILandroid/os/VibrationAttributes;III)V

    goto :goto_a7

    .line 2248
    :cond_64
    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mEngineData:[I
    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$2100(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v4

    if-nez v4, :cond_84

    .line 2249
    iget-object v14, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mMagnitude:I
    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$1800(Lcom/android/server/VibratorService$Vibration;)I

    move-result v19

    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mFrequency:I
    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$2200(Lcom/android/server/VibratorService$Vibration;)I

    move-result v20

    move-wide/from16 v15, v23

    move/from16 v17, v8

    move-object/from16 v18, v9

    # invokes: Lcom/android/server/VibratorService;->doVibratorOn(JILandroid/os/VibrationAttributes;II)V
    invoke-static/range {v14 .. v20}, Lcom/android/server/VibratorService;->access$3000(Lcom/android/server/VibratorService;JILandroid/os/VibrationAttributes;II)V

    goto :goto_a7

    .line 2251
    :cond_84
    iget-object v14, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mEngineData:[I
    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$2100(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v19

    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mMagnitude:I
    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$1800(Lcom/android/server/VibratorService$Vibration;)I

    move-result v20

    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    .line 2252
    # getter for: Lcom/android/server/VibratorService$Vibration;->mCommonType:I
    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$1900(Lcom/android/server/VibratorService$Vibration;)I

    move-result v21

    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$2000(Lcom/android/server/VibratorService$Vibration;)I

    move-result v22

    .line 2251
    move-wide/from16 v15, v23

    move/from16 v17, v8

    move-object/from16 v18, v9

    # invokes: Lcom/android/server/VibratorService;->doVibratorOn(JILandroid/os/VibrationAttributes;[IIII)V
    invoke-static/range {v14 .. v22}, Lcom/android/server/VibratorService;->access$3100(Lcom/android/server/VibratorService;JILandroid/os/VibrationAttributes;[IIII)V

    .line 2255
    :goto_a7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v25

    .line 2256
    .local v4, "endTime":J
    sub-long v6, v23, v4

    move-wide v5, v6

    move v4, v13

    .end local v23    # "duration":J
    .local v6, "duration":J
    goto/16 :goto_1b

    .line 2242
    .end local v4    # "endTime":J
    .end local v6    # "duration":J
    .end local v25    # "startTime":J
    .restart local v23    # "duration":J
    :cond_b3
    move v4, v13

    move-wide/from16 v5, v23

    goto/16 :goto_1b

    .line 2259
    .end local v13    # "index":I
    .end local v23    # "duration":J
    .local v4, "index":I
    .restart local v5    # "duration":J
    :cond_b8
    if-gez v3, :cond_bb

    .line 2260
    goto :goto_c0

    .line 2262
    :cond_bb
    move v4, v3

    .line 2263
    const-wide/16 v5, 0x0

    goto/16 :goto_1b

    .line 2267
    :cond_c0
    :goto_c0
    iget-boolean v7, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v7, :cond_c6

    const/4 v7, 0x1

    goto :goto_c7

    :cond_c6
    const/4 v7, 0x0

    :goto_c7
    monitor-exit p0

    return v7

    .line 2268
    .end local v0    # "pattern":[J
    .end local v2    # "len":I
    .end local v3    # "repeat":I
    .end local v4    # "index":I
    .end local v5    # "duration":J
    .end local v8    # "uid":I
    .end local v9    # "attrs":Landroid/os/VibrationAttributes;
    :catchall_c9
    move-exception v0

    monitor-exit p0
    :try_end_cb
    .catchall {:try_start_3 .. :try_end_cb} :catchall_c9

    throw v0
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 2161
    monitor-enter p0

    .line 2162
    :try_start_1
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$2700(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    .line 2163
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$2700(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2164
    monitor-exit p0

    .line 2165
    return-void

    .line 2164
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public playWaveform()Z
    .registers 22

    .line 2106
    move-object/from16 v1, p0

    const-wide/32 v2, 0x800000

    const-string/jumbo v0, "playWaveform"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2108
    :try_start_b
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_99

    .line 2109
    :try_start_c
    iget-object v0, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Waveform;->getTimings()[J

    move-result-object v0

    .line 2110
    .local v0, "timings":[J
    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v4}, Landroid/os/VibrationEffect$Waveform;->getAmplitudes()[I

    move-result-object v4

    .line 2111
    .local v4, "amplitudes":[I
    array-length v5, v0

    .line 2112
    .local v5, "len":I
    iget-object v6, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v6}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v6

    .line 2114
    .local v6, "repeat":I
    const/4 v7, 0x0

    .line 2115
    .local v7, "index":I
    const-wide/16 v8, 0x0

    .line 2116
    .local v8, "onDuration":J
    :goto_22
    iget-boolean v10, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v10, :cond_85

    .line 2117
    if-ge v7, v5, :cond_79

    .line 2118
    aget v10, v4, v7

    .line 2119
    .local v10, "amplitude":I
    add-int/lit8 v19, v7, 0x1

    .end local v7    # "index":I
    .local v19, "index":I
    aget-wide v11, v0, v7

    move-wide v14, v11

    .line 2120
    .local v14, "duration":J
    const-wide/16 v11, 0x0

    cmp-long v7, v14, v11

    if-gtz v7, :cond_38

    .line 2121
    move/from16 v7, v19

    goto :goto_22

    .line 2123
    :cond_38
    if-eqz v10, :cond_67

    .line 2124
    cmp-long v7, v8, v11

    if-gtz v7, :cond_5e

    .line 2131
    add-int/lit8 v7, v19, -0x1

    invoke-direct {v1, v0, v4, v7, v6}, Lcom/android/server/VibratorService$VibrateThread;->getTotalOnDuration([J[III)J

    move-result-wide v12

    .line 2134
    .end local v8    # "onDuration":J
    .local v12, "onDuration":J
    iget-object v11, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget v7, v1, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    iget-object v8, v1, Lcom/android/server/VibratorService$VibrateThread;->mAttrs:Landroid/os/VibrationAttributes;

    iget v9, v1, Lcom/android/server/VibratorService$VibrateThread;->mMagnitude:I

    iget v2, v1, Lcom/android/server/VibratorService$VibrateThread;->mFrequency:I

    move-object/from16 v20, v4

    move-wide v3, v14

    .end local v4    # "amplitudes":[I
    .end local v14    # "duration":J
    .local v3, "duration":J
    .local v20, "amplitudes":[I
    move v14, v10

    move v15, v7

    move-object/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v2

    # invokes: Lcom/android/server/VibratorService;->doVibratorOn(JIILandroid/os/VibrationAttributes;II)V
    invoke-static/range {v11 .. v18}, Lcom/android/server/VibratorService;->access$2500(Lcom/android/server/VibratorService;JIILandroid/os/VibrationAttributes;II)V

    move-wide v8, v12

    goto :goto_6a

    .line 2139
    .end local v3    # "duration":J
    .end local v12    # "onDuration":J
    .end local v20    # "amplitudes":[I
    .restart local v4    # "amplitudes":[I
    .restart local v8    # "onDuration":J
    .restart local v14    # "duration":J
    :cond_5e
    move-object/from16 v20, v4

    move-wide v3, v14

    .end local v4    # "amplitudes":[I
    .end local v14    # "duration":J
    .restart local v3    # "duration":J
    .restart local v20    # "amplitudes":[I
    iget-object v2, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V
    invoke-static {v2, v10}, Lcom/android/server/VibratorService;->access$2600(Lcom/android/server/VibratorService;I)V

    goto :goto_6a

    .line 2123
    .end local v3    # "duration":J
    .end local v20    # "amplitudes":[I
    .restart local v4    # "amplitudes":[I
    .restart local v14    # "duration":J
    :cond_67
    move-object/from16 v20, v4

    move-wide v3, v14

    .line 2143
    .end local v4    # "amplitudes":[I
    .end local v14    # "duration":J
    .restart local v3    # "duration":J
    .restart local v20    # "amplitudes":[I
    :goto_6a
    invoke-direct {v1, v3, v4}, Lcom/android/server/VibratorService$VibrateThread;->delayLocked(J)J

    move-result-wide v11

    .line 2144
    .local v11, "waitTime":J
    if-eqz v10, :cond_71

    .line 2145
    sub-long/2addr v8, v11

    .line 2147
    .end local v3    # "duration":J
    .end local v10    # "amplitude":I
    .end local v11    # "waitTime":J
    :cond_71
    move/from16 v7, v19

    move-object/from16 v4, v20

    const-wide/32 v2, 0x800000

    goto :goto_22

    .end local v19    # "index":I
    .end local v20    # "amplitudes":[I
    .restart local v4    # "amplitudes":[I
    .restart local v7    # "index":I
    :cond_79
    move-object/from16 v20, v4

    .end local v4    # "amplitudes":[I
    .restart local v20    # "amplitudes":[I
    if-gez v6, :cond_7e

    .line 2148
    goto :goto_87

    .line 2150
    :cond_7e
    move v7, v6

    move-object/from16 v4, v20

    const-wide/32 v2, 0x800000

    goto :goto_22

    .line 2116
    .end local v20    # "amplitudes":[I
    .restart local v4    # "amplitudes":[I
    :cond_85
    move-object/from16 v20, v4

    .line 2153
    .end local v4    # "amplitudes":[I
    .restart local v20    # "amplitudes":[I
    :goto_87
    iget-boolean v2, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v2, :cond_8d

    const/4 v2, 0x1

    goto :goto_8e

    :cond_8d
    const/4 v2, 0x0

    :goto_8e
    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_c .. :try_end_8f} :catchall_96

    .line 2156
    const-wide/32 v3, 0x800000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2153
    return v2

    .line 2154
    .end local v0    # "timings":[J
    .end local v5    # "len":I
    .end local v6    # "repeat":I
    .end local v7    # "index":I
    .end local v8    # "onDuration":J
    .end local v20    # "amplitudes":[I
    :catchall_96
    move-exception v0

    :try_start_97
    monitor-exit p0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    .end local p0    # "this":Lcom/android/server/VibratorService$VibrateThread;
    :try_start_98
    throw v0
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_99

    .line 2156
    .restart local p0    # "this":Lcom/android/server/VibratorService$VibrateThread;
    :catchall_99
    move-exception v0

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2157
    throw v0
.end method

.method public run()V
    .registers 3

    .line 2084
    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2085
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$2400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2087
    :try_start_d
    iget-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mCommonUse:Z

    if-eqz v0, :cond_15

    .line 2088
    invoke-direct {p0}, Lcom/android/server/VibratorService$VibrateThread;->playCommonPattern()Z

    goto :goto_20

    .line 2090
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibrateThread;->playWaveform()Z

    move-result v0

    .line 2091
    .local v0, "finished":Z
    if-eqz v0, :cond_20

    .line 2092
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-virtual {v1}, Lcom/android/server/VibratorService;->onVibrationFinished()V
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_2b

    .line 2096
    .end local v0    # "finished":Z
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$2400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2097
    nop

    .line 2098
    return-void

    .line 2096
    :catchall_2b
    move-exception v0

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2097
    throw v0
.end method
