.class public Lcom/samsung/android/server/audio/DvfsHelper;
.super Ljava/lang/Object;
.source "DvfsHelper.java"


# static fields
.field private static final DVFS_CPU_BOOST_MAX_TIME:I = 0x7530

.field private static final DVFS_CPU_BOOST_RETRY_DELAY_MS:I = 0x6d60

.field private static final MSG_CHECK_DVFS_CPU_BOOST_FOR_VOIP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AS.DvfsHelper"

.field private static sInstance:Lcom/samsung/android/server/audio/DvfsHelper;


# instance fields
.field private mCPUBoostValueForVoIP:I

.field private mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

.field private mHandler:Landroid/os/Handler;

.field private mIsCPUBoostedForVoIP:Z

.field private mIsScreenOn:Z

.field private mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    .line 36
    iput-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsCPUBoostedForVoIP:Z

    .line 39
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsScreenOn:Z

    .line 48
    :try_start_e
    const-string v1, "0"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCPUBoostValueForVoIP:I
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_16} :catch_17

    .line 51
    goto :goto_1a

    .line 49
    :catch_17
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/NumberFormatException;
    iput v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCPUBoostValueForVoIP:I

    .line 53
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_1a
    new-instance v0, Lcom/samsung/android/server/audio/DvfsHelper$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/audio/DvfsHelper$1;-><init>(Lcom/samsung/android/server/audio/DvfsHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mHandler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/audio/DvfsHelper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/DvfsHelper;

    .line 30
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsCPUBoostedForVoIP:Z

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/DvfsHelper;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 73
    sget-object v0, Lcom/samsung/android/server/audio/DvfsHelper;->sInstance:Lcom/samsung/android/server/audio/DvfsHelper;

    if-nez v0, :cond_b

    .line 74
    new-instance v0, Lcom/samsung/android/server/audio/DvfsHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/DvfsHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/server/audio/DvfsHelper;->sInstance:Lcom/samsung/android/server/audio/DvfsHelper;

    .line 76
    :cond_b
    sget-object v0, Lcom/samsung/android/server/audio/DvfsHelper;->sInstance:Lcom/samsung/android/server/audio/DvfsHelper;

    return-object v0
.end method


# virtual methods
.method public acquireCPUBoost()V
    .registers 5

    .line 94
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_5

    .line 95
    return-void

    .line 102
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acquire() cpu min lock for audio VoIP : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCPUBoostValueForVoIP:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.DvfsHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    iget v2, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCPUBoostValueForVoIP:I

    .line 104
    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequency(I)I

    move-result v2

    .line 103
    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v2, 0x7530

    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 107
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_CPU_STATE_LOCK:Z

    if-eqz v0, :cond_41

    .line 108
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_41

    .line 109
    const-string v0, "acquireCPUBoost CPU state lock"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 115
    :cond_41
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_51

    .line 116
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x6d60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 119
    :cond_51
    return-void
.end method

.method public getCPUBoostValueForVoIP()I
    .registers 2

    .line 158
    iget v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCPUBoostValueForVoIP:I

    return v0
.end method

.method public getIsScreenOn()Z
    .registers 2

    .line 166
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsScreenOn:Z

    return v0
.end method

.method public releaseCPUBoost()V
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    const-string v1, "AS.DvfsHelper"

    if-eqz v0, :cond_10

    .line 81
    const-string v0, "release() cpu min lock"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 85
    :cond_10
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_CPU_STATE_LOCK:Z

    if-eqz v0, :cond_22

    .line 86
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_22

    .line 87
    const-string v0, "releaseCPUBoost CPU state lock"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 91
    :cond_22
    return-void
.end method

.method public setScreenOn(Z)V
    .registers 2
    .param p1, "isScreenOn"    # Z

    .line 162
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsScreenOn:Z

    .line 163
    return-void
.end method

.method public startCPUBoostForVoIP(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 122
    iget v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCPUBoostValueForVoIP:I

    if-nez v0, :cond_5

    .line 123
    return-void

    .line 126
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsCPUBoostedForVoIP:Z

    .line 129
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    const-string v1, "AS.DvfsHelper"

    if-nez v0, :cond_16

    .line 130
    const/16 v0, 0xc

    invoke-static {p1, v1, v0}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    .line 133
    :cond_16
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_20

    .line 134
    const-string v0, "DvfsManager is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void

    .line 138
    :cond_20
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_CPU_STATE_LOCK:Z

    if-eqz v0, :cond_31

    .line 139
    const-string v0, "initCPUBoost create cpu state lock"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/16 v0, 0x17

    invoke-static {p1, v1, v0}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    .line 144
    :cond_31
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/DvfsHelper;->acquireCPUBoost()V

    .line 145
    return-void
.end method

.method public stopCPUBoostForVoIP()V
    .registers 3

    .line 148
    iget v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCPUBoostValueForVoIP:I

    if-nez v0, :cond_5

    .line 149
    return-void

    .line 151
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsCPUBoostedForVoIP:Z

    .line 152
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 153
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 155
    :cond_16
    return-void
.end method
