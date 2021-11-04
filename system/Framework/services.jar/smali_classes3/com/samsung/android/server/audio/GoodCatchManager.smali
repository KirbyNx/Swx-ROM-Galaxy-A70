.class public Lcom/samsung/android/server/audio/GoodCatchManager;
.super Ljava/lang/Object;
.source "GoodCatchManager.java"


# static fields
.field private static final AS_MODULE:Ljava/lang/String; = "AudioService"

.field private static final CALL_MODE:I = 0x1

.field private static final RINGER_MODE:I = 0x0

.field private static final SOUND_MODE:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AS.GoodCatchManager"

.field private static final VIBRATION_MODE:Ljava/lang/String; = "vibration"

.field private static final VS_MODULE:Ljava/lang/String; = "VibratorService"


# instance fields
.field private mAudioStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

.field private final mContext:Landroid/content/Context;

.field private mModule:Ljava/lang/String;

.field private mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

.field private mSoundMode:[Z

.field private mVibrateStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

.field private mVibrationMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    const-string v0, "ringermode"

    const-string v1, "callmode"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_MODE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "module"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_50

    iput-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundMode:[Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrationMode:Z

    .line 78
    new-instance v0, Lcom/samsung/android/server/audio/GoodCatchManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/GoodCatchManager$1;-><init>(Lcom/samsung/android/server/audio/GoodCatchManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mAudioStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    .line 101
    new-instance v0, Lcom/samsung/android/server/audio/GoodCatchManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/GoodCatchManager$2;-><init>(Lcom/samsung/android/server/audio/GoodCatchManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrateStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    .line 66
    iput-object p1, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mModule:Ljava/lang/String;

    .line 69
    const-string v0, "AudioService"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 70
    new-instance v1, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    iget-object v2, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_MODE:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mAudioStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    iput-object v1, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    goto :goto_4f

    .line 72
    :cond_36
    const-string v0, "VibratorService"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 73
    new-instance v1, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    iget-object v2, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mContext:Landroid/content/Context;

    const-string v3, "vibration"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrateStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    iput-object v1, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 76
    :cond_4f
    :goto_4f
    return-void

    :array_50
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    .line 26
    sget-object v0, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_MODE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/server/audio/GoodCatchManager;)[Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundMode:[Z

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/server/audio/GoodCatchManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/GoodCatchManager;
    .param p1, "x1"    # Z

    .line 26
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrationMode:Z

    return p1
.end method


# virtual methods
.method public isCallModeCatchEnabled()Z
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mModule:Ljava/lang/String;

    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 53
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundMode:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0

    .line 55
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public isRingerModeCatchEnabled()Z
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mModule:Ljava/lang/String;

    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 46
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundMode:[Z

    aget-boolean v0, v0, v1

    return v0

    .line 48
    :cond_10
    return v1
.end method

.method public isVibrateCatchEnabled()Z
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mModule:Ljava/lang/String;

    const-string v1, "VibratorService"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 60
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrationMode:Z

    return v0

    .line 62
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public updateCallMode(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    sget-object v1, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_MODE:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v4, ""

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public updateRingerMode(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    sget-object v1, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_MODE:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v4, ""

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public updateVibrateMode(Ljava/lang/String;)V
    .registers 8
    .param p1, "caller"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    const-string v1, "vibration"

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method
