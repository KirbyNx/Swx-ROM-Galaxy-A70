.class public Lcom/android/server/display/AdaptiveBrightnessStatsTracker;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessStatsTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;,
        Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;,
        Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;,
        Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;
    }
.end annotation


# static fields
.field private static final BUCKET_BOUNDARIES_RATIO_FOR_STAT:F = 1.2f

.field private static final DEBUG:Z = false

.field static final MAX_DAYS_TO_TRACK:I = 0x7

.field private static final SIMILAR_LUX_BOUNDARY_RATIO:F = 2.5f

.field private static final TAG:Ljava/lang/String; = "AdaptiveBrightnessStatsTracker"


# instance fields
.field private final mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

.field private mBucketBoundariesForStats:[F

.field private mCurrentAmbientLux:F

.field private mCurrentScreenBrightness:F

.field private mCurrentScreenBrightnessSpline:Landroid/util/Spline;

.field private mCurrentUserId:I

.field private final mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

.field private final mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/os/UserManager;ILcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;Lcom/android/server/display/BrightnessMappingStrategy;)V
    .registers 7
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "hbmLux"    # I
    .param p3, "injector"    # Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;
    .param p4, "brightnessMapper"    # Lcom/android/server/display/BrightnessMappingStrategy;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mUserManager:Landroid/os/UserManager;

    .line 82
    if-eqz p3, :cond_a

    .line 83
    iput-object p3, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    goto :goto_11

    .line 85
    :cond_a
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    invoke-direct {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    .line 87
    :goto_11
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    invoke-direct {v0, p0, p4}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;-><init>(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;Lcom/android/server/display/BrightnessMappingStrategy;)V

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    .line 88
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    new-instance v1, Lcom/android/server/display/-$$Lambda$AdaptiveBrightnessStatsTracker$HEnpqUomoM_7p64CLU6TYc2O5Ec;

    invoke-direct {v1, p0}, Lcom/android/server/display/-$$Lambda$AdaptiveBrightnessStatsTracker$HEnpqUomoM_7p64CLU6TYc2O5Ec;-><init>(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)V

    invoke-direct {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;-><init>(Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;)V

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    .line 89
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentAmbientLux:F

    .line 91
    invoke-direct {p0, p2}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->initBucketBoundariesForStats(I)V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)Landroid/os/UserManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 58
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 58
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)[F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 58
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mBucketBoundariesForStats:[F

    return-object v0
.end method

.method private initBucketBoundariesForStats(I)V
    .registers 6
    .param p1, "hbmLux"    # I

    .line 177
    const/16 v0, 0x38

    new-array v0, v0, [F

    fill-array-data v0, :array_1e

    .line 183
    .local v0, "candidateBoundariesForStats":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, v0

    if-ge v1, v2, :cond_16

    .line 184
    aget v2, v0, v1

    int-to-float v3, p1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_13

    .line 185
    goto :goto_16

    .line 183
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 188
    :cond_16
    :goto_16
    move v2, v1

    .line 190
    .local v2, "bucketSize":I
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mBucketBoundariesForStats:[F

    .line 191
    return-void

    :array_1e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40c00000    # 6.0f
        0x40e00000    # 7.0f
        0x41100000    # 9.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41700000    # 15.0f
        0x41900000    # 18.0f
        0x41a80000    # 21.0f
        0x41d00000    # 26.0f
        0x41f80000    # 31.0f
        0x42140000    # 37.0f
        0x42340000    # 45.0f
        0x42540000    # 53.0f
        0x42800000    # 64.0f
        0x429a0000    # 77.0f
        0x42b80000    # 92.0f
        0x42de0000    # 111.0f
        0x43050000    # 133.0f
        0x43200000    # 160.0f
        0x43400000    # 192.0f
        0x43660000    # 230.0f
        0x438a0000    # 276.0f
        0x43a58000    # 331.0f
        0x43c68000    # 397.0f
        0x43ee8000    # 477.0f
        0x440f0000    # 572.0f
        0x442bc000    # 687.0f
        0x444e0000    # 824.0f
        0x44774000    # 989.0f
        0x44946000    # 1187.0f
        0x44b20000    # 1424.0f
        0x44d5a000    # 1709.0f
        0x45003000    # 2051.0f
        0x4519d000    # 2461.0f
        0x45389000    # 2953.0f
        0x455d8000    # 3544.0f
        0x4584e800    # 4253.0f
        0x459f7800    # 5103.0f
        0x45bf6000    # 6124.0f
        0x45e5a800    # 7349.0f
        0x4609cc00    # 8819.0f
        0x46255800    # 10582.0f
        0x46466c00    # 12699.0f
        0x466e1c00    # 15239.0f
        0x468edc00    # 18286.0f
        0x46ab7000    # 21944.0f
        0x46cdb800    # 26332.0f
        0x46f6de00    # 31599.0f
        0x47141e00    # 37918.0f
        0x4731be00    # 45502.0f
    .end array-data
.end method


# virtual methods
.method public declared-synchronized add(IFFLandroid/util/Spline;Landroid/hardware/display/BrightnessChangeEvent;Z)V
    .registers 20
    .param p1, "userId"    # I
    .param p2, "newAmbientLux"    # F
    .param p3, "newScreenBrightness"    # F
    .param p4, "newScreenBrightnessSpline"    # Landroid/util/Spline;
    .param p5, "brightnessChangeEvent"    # Landroid/hardware/display/BrightnessChangeEvent;
    .param p6, "userInitiated"    # Z

    move-object v1, p0

    move v0, p1

    monitor-enter p0

    .line 126
    :try_start_3
    iget-object v2, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    invoke-virtual {v2}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 127
    iget v2, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentUserId:I

    if-ne v0, v2, :cond_2f

    .line 128
    iget-object v3, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    iget v4, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentUserId:I

    iget-object v2, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v5

    iget v6, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentAmbientLux:F

    iget v7, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentScreenBrightness:F

    iget-object v2, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    .line 129
    invoke-virtual {v2}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->totalDurationSec()F

    move-result v8

    iget-object v9, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentScreenBrightnessSpline:Landroid/util/Spline;

    .line 128
    move-object/from16 v10, p5

    move-object/from16 v11, p4

    move/from16 v12, p6

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->log(ILjava/time/LocalDate;FFFLandroid/util/Spline;Landroid/hardware/display/BrightnessChangeEvent;Landroid/util/Spline;Z)V

    goto :goto_31

    .line 135
    .end local p0    # "this":Lcom/android/server/display/AdaptiveBrightnessStatsTracker;
    :cond_2f
    iput v0, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentUserId:I

    .line 137
    :goto_31
    iget-object v2, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    invoke-virtual {v2}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->isPaused()Z

    move-result v2

    if-nez v2, :cond_3b

    const/4 v2, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v2, 0x0

    .line 138
    .local v2, "needToRestart":Z
    :goto_3c
    iget-object v3, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    invoke-virtual {v3}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->reset()V

    .line 139
    if-eqz v2, :cond_48

    iget-object v3, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    invoke-virtual {v3}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->start()V

    .line 146
    .end local v2    # "needToRestart":Z
    :cond_48
    move v2, p2

    iput v2, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentAmbientLux:F

    .line 147
    move/from16 v3, p3

    iput v3, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentScreenBrightness:F

    .line 148
    move-object/from16 v4, p4

    iput-object v4, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentScreenBrightnessSpline:Landroid/util/Spline;
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_55

    .line 149
    monitor-exit p0

    return-void

    .line 125
    .end local p1    # "userId":I
    .end local p2    # "newAmbientLux":F
    .end local p3    # "newScreenBrightness":F
    .end local p4    # "newScreenBrightnessSpline":Landroid/util/Spline;
    .end local p5    # "brightnessChangeEvent":Landroid/hardware/display/BrightnessChangeEvent;
    .end local p6    # "userInitiated":Z
    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addDirectly(IFFFLandroid/util/Spline;)V
    .registers 19
    .param p1, "userId"    # I
    .param p2, "newAmbientLux"    # F
    .param p3, "newScreenBrightness"    # F
    .param p4, "durationSec"    # F
    .param p5, "newScreenBrightnessSpline"    # Landroid/util/Spline;

    move-object v1, p0

    monitor-enter p0

    .line 196
    :try_start_2
    iget v0, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentUserId:I

    move v2, p1

    if-ne v2, v0, :cond_1e

    .line 197
    iget-object v3, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    iget v4, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentUserId:I

    iget-object v0, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->log(ILjava/time/LocalDate;FFFLandroid/util/Spline;Landroid/hardware/display/BrightnessChangeEvent;Landroid/util/Spline;Z)V
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_20

    .line 201
    .end local p0    # "this":Lcom/android/server/display/AdaptiveBrightnessStatsTracker;
    :cond_1e
    monitor-exit p0

    return-void

    .line 195
    .end local p1    # "userId":I
    .end local p2    # "newAmbientLux":F
    .end local p3    # "newScreenBrightness":F
    .end local p4    # "durationSec":F
    .end local p5    # "newScreenBrightnessSpline":Landroid/util/Spline;
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 172
    :try_start_1
    const-string v0, "AdaptiveBrightnessStats:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 174
    monitor-exit p0

    return-void

    .line 171
    .end local p0    # "this":Lcom/android/server/display/AdaptiveBrightnessStatsTracker;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getUserStats(I)Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .registers 3
    .param p1, "userId"    # I

    monitor-enter p0

    .line 160
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->getUserStats(I)Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 160
    .end local p0    # "this":Lcom/android/server/display/AdaptiveBrightnessStatsTracker;
    .end local p1    # "userId":I
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic lambda$new$0$AdaptiveBrightnessStatsTracker()J
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;->elapsedRealtimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized pause()V
    .registers 2

    monitor-enter p0

    .line 120
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->pause()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 121
    monitor-exit p0

    return-void

    .line 119
    .end local p0    # "this":Lcom/android/server/display/AdaptiveBrightnessStatsTracker;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readStats(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 156
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->readFromXML(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 157
    monitor-exit p0

    return-void

    .line 155
    .end local p0    # "this":Lcom/android/server/display/AdaptiveBrightnessStatsTracker;
    .end local p1    # "stream":Ljava/io/InputStream;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resume()V
    .registers 2

    monitor-enter p0

    .line 112
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_f

    .line 113
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->start()V

    goto :goto_1c

    .line 114
    .end local p0    # "this":Lcom/android/server/display/AdaptiveBrightnessStatsTracker;
    :cond_f
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 115
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->resume()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 117
    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void

    .line 111
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxWeight(I)V
    .registers 3
    .param p1, "userId"    # I

    monitor-enter p0

    .line 164
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->setMaxWeight(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 165
    monitor-exit p0

    return-void

    .line 163
    .end local p0    # "this":Lcom/android/server/display/AdaptiveBrightnessStatsTracker;
    .end local p1    # "userId":I
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start(Z)V
    .registers 3
    .param p1, "immediately"    # Z

    monitor-enter p0

    .line 95
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->reset()V

    .line 96
    if-eqz p1, :cond_d

    .line 97
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->start()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 99
    .end local p0    # "this":Lcom/android/server/display/AdaptiveBrightnessStatsTracker;
    :cond_d
    monitor-exit p0

    return-void

    .line 94
    .end local p1    # "immediately":Z
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop()V
    .registers 12

    monitor-enter p0

    .line 102
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 103
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    iget v2, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentUserId:I

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentAmbientLux:F

    iget v5, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentScreenBrightness:F

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    .line 104
    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->totalDurationSec()F

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentScreenBrightnessSpline:Landroid/util/Spline;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 103
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->log(ILjava/time/LocalDate;FFFLandroid/util/Spline;Landroid/hardware/display/BrightnessChangeEvent;Landroid/util/Spline;Z)V

    .line 107
    .end local p0    # "this":Lcom/android/server/display/AdaptiveBrightnessStatsTracker;
    :cond_25
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->reset()V

    .line 108
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentAmbientLux:F
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 109
    monitor-exit p0

    return-void

    .line 101
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized summarizeStats(I)V
    .registers 4
    .param p1, "userId"    # I

    monitor-enter p0

    .line 168
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->summarizeStats(ILjava/time/LocalDate;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 169
    monitor-exit p0

    return-void

    .line 167
    .end local p0    # "this":Lcom/android/server/display/AdaptiveBrightnessStatsTracker;
    .end local p1    # "userId":I
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized writeStats(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 152
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->writeToXML(Ljava/io/OutputStream;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 153
    monitor-exit p0

    return-void

    .line 151
    .end local p0    # "this":Lcom/android/server/display/AdaptiveBrightnessStatsTracker;
    .end local p1    # "stream":Ljava/io/OutputStream;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method
