.class public Lcom/android/server/display/DisplayModeDirector;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;,
        Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;,
        Lcom/android/server/display/DisplayModeDirector$DisplayObserver;,
        Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;,
        Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;,
        Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;,
        Lcom/android/server/display/DisplayModeDirector$SettingsObserver;,
        Lcom/android/server/display/DisplayModeDirector$Vote;,
        Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;,
        Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;,
        Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;,
        Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;,
        Lcom/android/server/display/DisplayModeDirector$VoteSummary;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FLOAT_TOLERANCE:F = 0.01f

.field private static final GLOBAL_ID:I = -0x1

.field private static final MSG_BRIGHTNESS_THRESHOLDS_CHANGED:I = 0x2

.field private static final MSG_DEFAULT_PEAK_REFRESH_RATE_CHANGED:I = 0x3

.field private static final MSG_REFRESH_RATE_IN_ZONE_CHANGED:I = 0x4

.field private static final MSG_REFRESH_RATE_RANGE_CHANGED:I = 0x1

.field public static final REFRESH_RATE_MODE_PASSIVE:I = 0x3

.field static final REFRESH_RATE_VOTE_OFFSET:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DisplayModeDirector"

.field static sPassive:Z


# instance fields
.field private final mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

.field private mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

.field private final mContext:Landroid/content/Context;

.field private mDefaultModeByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field private mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

.field private final mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

.field private mDisplayModeDirectorHistory:Lcom/android/server/wm/SystemHistory;

.field private final mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

.field private final mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

.field private mIsForceApplyRefreshRateNormalMode:Z

.field private final mLock:Ljava/lang/Object;

.field final mLowRefreshRateTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;",
            ">;"
        }
    .end annotation
.end field

.field final mRefreshRateMaxLimitTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

.field private mSupportedModesByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field private mVotesByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mRefreshRateMaxLimitTokens:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLowRefreshRateTokens:Ljava/util/ArrayList;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector;->mIsForceApplyRefreshRateNormalMode:Z

    .line 164
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 165
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 166
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    .line 167
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 169
    new-instance v0, Lcom/android/server/wm/SystemHistory;

    const/16 v1, 0xf

    const-string v2, "DisplayModeDirector"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/SystemHistory;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayModeDirectorHistory:Lcom/android/server/wm/SystemHistory;

    .line 171
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 172
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    .line 173
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    .line 174
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    .line 175
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    .line 176
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    .line 177
    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/DisplayModeDirector;Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;
    .param p1, "x1"    # Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->removeRefreshRateMaxLimitTokenLocked(Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/DisplayModeDirector;Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;
    .param p1, "x1"    # Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->removeLowRefreshRateTokenLocked(Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 98
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 98
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 98
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/DisplayModeDirector;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 98
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 98
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$SettingsObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 98
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/display/DisplayModeDirector;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 98
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 98
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 98
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(ILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayModeDirector;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 98
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector;->mIsForceApplyRefreshRateNormalMode:Z

    return v0
.end method

.method private filterModes([Landroid/view/Display$Mode;Lcom/android/server/display/DisplayModeDirector$VoteSummary;)[I
    .registers 10
    .param p1, "supportedModes"    # [Landroid/view/Display$Mode;
    .param p2, "summary"    # Lcom/android/server/display/DisplayModeDirector$VoteSummary;

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v0, "availableModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display$Mode;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_38

    aget-object v3, p1, v2

    .line 465
    .local v3, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    iget v5, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    if-ne v4, v5, :cond_35

    .line 466
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v4

    iget v5, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    if-eq v4, v5, :cond_1c

    .line 474
    goto :goto_35

    .line 477
    :cond_1c
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v4

    .line 481
    .local v4, "refreshRate":F
    iget v5, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    const v6, 0x3c23d70a    # 0.01f

    sub-float/2addr v5, v6

    cmpg-float v5, v4, v5

    if-ltz v5, :cond_35

    iget v5, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    add-float/2addr v5, v6

    cmpl-float v5, v4, v5

    if-lez v5, :cond_32

    .line 490
    goto :goto_35

    .line 492
    :cond_32
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    .end local v3    # "mode":Landroid/view/Display$Mode;
    .end local v4    # "refreshRate":F
    :cond_35
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 494
    :cond_38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 495
    .local v1, "size":I
    new-array v2, v1, [I

    .line 496
    .local v2, "availableModeIds":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3f
    if-ge v3, v1, :cond_50

    .line 497
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Display$Mode;

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    aput v4, v2, v3

    .line 496
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 500
    .end local v3    # "i":I
    :cond_50
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v3, :cond_57

    .line 501
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 504
    :cond_57
    return-object v2
.end method

.method private getOrCreateVotesByDisplay(I)Landroid/util/SparseArray;
    .registers 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;"
        }
    .end annotation

    .line 641
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 642
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_17

    .line 643
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    return-object v1

    .line 645
    :cond_17
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 646
    .local v1, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 647
    return-object v1
.end method

.method public static getPassiveMode()Z
    .registers 1

    .line 146
    sget-boolean v0, Lcom/android/server/display/DisplayModeDirector;->sPassive:Z

    return v0
.end method

.method private getVotesLocked(I)Landroid/util/SparseArray;
    .registers 8
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 207
    .local v0, "displayVotes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    if-eqz v0, :cond_f

    .line 208
    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .local v1, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    goto :goto_14

    .line 210
    .end local v1    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    :cond_f
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 213
    .restart local v1    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    :goto_14
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 214
    .local v2, "globalVotes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    if-eqz v2, :cond_3c

    .line 215
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3c

    .line 216
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 217
    .local v4, "priority":I
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_39

    .line 218
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayModeDirector$Vote;

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 215
    .end local v4    # "priority":I
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 222
    .end local v3    # "i":I
    :cond_3c
    return-object v1
.end method

.method private notifyDesiredDisplayModeSpecsChangedLocked()V
    .registers 4

    .line 628
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 629
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 634
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 636
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 638
    .end local v0    # "msg":Landroid/os/Message;
    :cond_18
    return-void
.end method

.method private removeLowRefreshRateTokenLocked(Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;)V
    .registers 4
    .param p1, "lowRefreshRateToken"    # Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;

    .line 1364
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLowRefreshRateTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1365
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    # invokes: Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateLowPowerModeSettingLocked()V
    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->access$1400(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;)V

    .line 1366
    # getter for: Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;->mToken:Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;->access$1500(Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1367
    # getter for: Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;->mToken:Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;->access$1500(Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1369
    :cond_18
    return-void
.end method

.method private removeRefreshRateMaxLimitTokenLocked(Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;)V
    .registers 4
    .param p1, "refreshRateMaxLimitToken"    # Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;

    .line 1302
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mRefreshRateMaxLimitTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1303
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    # invokes: Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateMaxLimitTokenLocked()V
    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->access$1100(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;)V

    .line 1304
    # getter for: Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;->mToken:Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;->access$1200(Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1305
    # getter for: Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;->mToken:Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;->access$1200(Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1307
    :cond_18
    return-void
.end method

.method static setPassiveMode(ZLjava/lang/String;)V
    .registers 4
    .param p0, "passive"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPassiveMode, passiveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayModeDirector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sput-boolean p0, Lcom/android/server/display/DisplayModeDirector;->sPassive:Z

    .line 152
    return-void
.end method

.method private summarizeVotes(Landroid/util/SparseArray;ILcom/android/server/display/DisplayModeDirector$VoteSummary;)V
    .registers 8
    .param p2, "lowestConsideredPriority"    # I
    .param p3, "summary"    # Lcom/android/server/display/DisplayModeDirector$VoteSummary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;I",
            "Lcom/android/server/display/DisplayModeDirector$VoteSummary;",
            ")V"
        }
    .end annotation

    .line 247
    .local p1, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    invoke-virtual {p3}, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->reset()V

    .line 248
    sget v0, Lcom/android/server/display/DisplayModeDirector$Vote;->MAX_PRIORITY:I

    .local v0, "priority":I
    :goto_5
    if-lt v0, p2, :cond_44

    .line 249
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 250
    .local v1, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    if-nez v1, :cond_10

    .line 251
    goto :goto_41

    .line 254
    :cond_10
    iget v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget-object v3, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v3, v3, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    .line 255
    iget v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    iget-object v3, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v3, v3, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    .line 258
    iget v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_41

    iget v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    if-ne v2, v3, :cond_41

    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    if-lez v2, :cond_41

    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    if-lez v2, :cond_41

    .line 260
    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    iput v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    .line 261
    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    iput v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    .line 248
    .end local v1    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_41
    :goto_41
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 264
    .end local v0    # "priority":I
    :cond_44
    return-void
.end method

.method private updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "priority"    # I
    .param p3, "vote"    # Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 602
    if-ltz p2, :cond_29

    sget v0, Lcom/android/server/display/DisplayModeDirector$Vote;->MAX_PRIORITY:I

    if-le p2, v0, :cond_7

    goto :goto_29

    .line 608
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->getOrCreateVotesByDisplay(I)Landroid/util/SparseArray;

    move-result-object v0

    .line 610
    .local v0, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 611
    .local v1, "currentVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    if-eqz p3, :cond_17

    .line 612
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1a

    .line 614
    :cond_17
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 617
    :goto_1a
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_25

    .line 621
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 624
    :cond_25
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 625
    return-void

    .line 603
    .end local v0    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .end local v1    # "currentVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_29
    :goto_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received a vote with an invalid priority, ignoring: priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    invoke-static {p2}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", vote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 603
    const-string v2, "DisplayModeDirector"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 606
    return-void
.end method

.method private updateVoteLocked(ILcom/android/server/display/DisplayModeDirector$Vote;)V
    .registers 4
    .param p1, "priority"    # I
    .param p2, "vote"    # Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 593
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 594
    return-void
.end method


# virtual methods
.method createLowRefreshRateToken(Landroid/os/IBinder;Ljava/lang/String;)Lcom/samsung/android/hardware/display/ILowRefreshRateToken;
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;

    .line 1345
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1346
    const v1, 0x13af12

    const/4 v2, 0x2

    :try_start_7
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v4, 0x1

    const-string v5, "acquire"

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1348
    new-instance v1, Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_32

    .line 1349
    .local v1, "lowRefreshRateToken":Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;
    if-eqz p1, :cond_26

    .line 1351
    :try_start_1b
    invoke-interface {p1, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_1f
    .catchall {:try_start_1b .. :try_end_1e} :catchall_32

    .line 1355
    goto :goto_26

    .line 1352
    :catch_1f
    move-exception v2

    .line 1354
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_20
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/display/DisplayModeDirector;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "tag":Ljava/lang/String;
    throw v3

    .line 1357
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/display/DisplayModeDirector;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "tag":Ljava/lang/String;
    :cond_26
    :goto_26
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mLowRefreshRateTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1358
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    # invokes: Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateLowPowerModeSettingLocked()V
    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->access$1400(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;)V

    .line 1359
    monitor-exit v0

    return-object v1

    .line 1360
    .end local v1    # "lowRefreshRateToken":Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_32

    throw v1
.end method

.method createRefreshRateMaxLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken;
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "refreshRate"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .line 1283
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1284
    :try_start_3
    new-instance v1, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/os/IBinder;ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_22

    .line 1286
    .local v1, "refreshRateMaxLimitToken":Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;
    if-eqz p1, :cond_16

    .line 1288
    const/4 v2, 0x0

    :try_start_b
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f
    .catchall {:try_start_b .. :try_end_e} :catchall_22

    .line 1292
    goto :goto_16

    .line 1289
    :catch_f
    move-exception v2

    .line 1291
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_10
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/display/DisplayModeDirector;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "refreshRate":I
    .end local p3    # "tag":Ljava/lang/String;
    throw v3

    .line 1294
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/display/DisplayModeDirector;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "refreshRate":I
    .restart local p3    # "tag":Ljava/lang/String;
    :cond_16
    :goto_16
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mRefreshRateMaxLimitTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1295
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    # invokes: Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateMaxLimitTokenLocked()V
    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->access$1100(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;)V

    .line 1296
    monitor-exit v0

    return-object v1

    .line 1297
    .end local v1    # "refreshRateMaxLimitToken":Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 534
    const-string v0, "DisplayModeDirector"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 536
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  seamlessModeOfDisplay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/Display$SeamlessRefreshRateConfig;->getSecVrrType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    const-string v1, "  mSupportedModesByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_26
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5f

    .line 539
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 540
    .local v2, "id":I
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/Display$Mode;

    .line 541
    .local v3, "modes":[Landroid/view/Display$Mode;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    .end local v2    # "id":I
    .end local v3    # "modes":[Landroid/view/Display$Mode;
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 543
    .end local v1    # "i":I
    :cond_5f
    const-string v1, "  mDefaultModeByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_65
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_9a

    .line 545
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 546
    .restart local v2    # "id":I
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$Mode;

    .line 547
    .local v3, "mode":Landroid/view/Display$Mode;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    .end local v2    # "id":I
    .end local v3    # "mode":Landroid/view/Display$Mode;
    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 549
    .end local v1    # "i":I
    :cond_9a
    const-string v1, "  mVotesByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_a0
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_102

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 553
    .local v2, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    sget v3, Lcom/android/server/display/DisplayModeDirector$Vote;->MAX_PRIORITY:I

    .local v3, "p":I
    :goto_d1
    if-ltz v3, :cond_ff

    .line 554
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 555
    .local v4, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    if-nez v4, :cond_dc

    .line 556
    goto :goto_fc

    .line 558
    :cond_dc
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    .end local v4    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :goto_fc
    add-int/lit8 v3, v3, -0x1

    goto :goto_d1

    .line 550
    .end local v2    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .end local v3    # "p":I
    :cond_ff
    add-int/lit8 v1, v1, 0x1

    goto :goto_a0

    .line 563
    .end local v1    # "i":I
    :cond_102
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v1, :cond_16e

    .line 564
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mLowRefreshRateTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13a

    .line 565
    const-string v1, "  mLowRefreshRateTokens:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mLowRefreshRateTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_119
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;

    .line 567
    .local v2, "token":Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    .end local v2    # "token":Lcom/android/server/display/DisplayModeDirector$LowRefreshRateTokenImpl;
    goto :goto_119

    .line 570
    :cond_13a
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mRefreshRateMaxLimitTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16e

    .line 571
    const-string v1, "  mRefreshRateMaxLimitTokens:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mRefreshRateMaxLimitTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;

    .line 573
    .local v2, "token":Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    .end local v2    # "token":Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitTokenImpl;
    goto :goto_14d

    .line 579
    :cond_16e
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 580
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 581
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 582
    monitor-exit v0

    .line 583
    return-void

    .line 582
    :catchall_17f
    move-exception v1

    monitor-exit v0
    :try_end_181
    .catchall {:try_start_8 .. :try_end_181} :catchall_17f

    throw v1
.end method

.method public dumpHistory(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 587
    const-string v0, "DisplayModeDirector History"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayModeDirectorHistory:Lcom/android/server/wm/SystemHistory;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SystemHistory;->dump(Ljava/io/PrintWriter;)V

    .line 589
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 590
    return-void
.end method

.method public getAppRequestObserver()Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;
    .registers 2

    .line 514
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    return-object v0
.end method

.method public getDesiredDisplayModeSpecs(I)Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
    .registers 3
    .param p1, "displayId"    # I

    .line 277
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayModeDirector;->getDesiredDisplayModeSpecs(II)Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    move-result-object v0

    return-object v0
.end method

.method public getDesiredDisplayModeSpecs(II)Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
    .registers 20
    .param p1, "displayId"    # I
    .param p2, "targetBasedModeId"    # I

    .line 283
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    iget-object v4, v1, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 284
    :try_start_9
    invoke-direct/range {p0 .. p1}, Lcom/android/server/display/DisplayModeDirector;->getVotesLocked(I)Landroid/util/SparseArray;

    move-result-object v0

    .line 285
    .local v0, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    iget-object v5, v1, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/view/Display$Mode;

    .line 286
    .local v5, "modes":[Landroid/view/Display$Mode;
    iget-object v6, v1, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/Display$Mode;

    .line 287
    .local v6, "defaultMode":Landroid/view/Display$Mode;
    if-eqz v5, :cond_103

    if-nez v6, :cond_25

    move-object/from16 v16, v0

    goto/16 :goto_105

    .line 296
    :cond_25
    const/4 v7, 0x0

    if-lez v3, :cond_65

    .line 297
    const/4 v8, 0x0

    .line 298
    .local v8, "targetBasedMode":Landroid/view/Display$Mode;
    array-length v9, v5

    move v10, v7

    :goto_2b
    if-ge v10, v9, :cond_39

    aget-object v11, v5, v10

    .line 299
    .local v11, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v11}, Landroid/view/Display$Mode;->getModeId()I

    move-result v12

    if-ne v3, v12, :cond_36

    .line 300
    move-object v8, v11

    .line 298
    .end local v11    # "mode":Landroid/view/Display$Mode;
    :cond_36
    add-int/lit8 v10, v10, 0x1

    goto :goto_2b

    .line 303
    :cond_39
    if-eqz v8, :cond_65

    .line 304
    invoke-virtual {v8}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v10

    if-eq v9, v10, :cond_65

    .line 305
    const-string v9, "DisplayModeDirector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getDesiredDisplayModeSpecs,  defaultMode is updated from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    move-object v6, v8

    .line 313
    .end local v8    # "targetBasedMode":Landroid/view/Display$Mode;
    :cond_65
    const/4 v8, 0x1

    new-array v8, v8, [I

    invoke-virtual {v6}, Landroid/view/Display$Mode;->getModeId()I

    move-result v9

    aput v9, v8, v7

    .line 314
    .local v8, "availableModes":[I
    new-instance v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;

    invoke-direct {v9}, Lcom/android/server/display/DisplayModeDirector$VoteSummary;-><init>()V

    .line 315
    .local v9, "primarySummary":Lcom/android/server/display/DisplayModeDirector$VoteSummary;
    const/4 v10, 0x0

    .line 316
    .local v10, "lowestConsideredPriority":I
    :goto_74
    sget v11, Lcom/android/server/display/DisplayModeDirector$Vote;->MAX_PRIORITY:I

    if-gt v10, v11, :cond_9c

    .line 317
    invoke-direct {v1, v0, v10, v9}, Lcom/android/server/display/DisplayModeDirector;->summarizeVotes(Landroid/util/SparseArray;ILcom/android/server/display/DisplayModeDirector$VoteSummary;)V

    .line 322
    iget v11, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_84

    iget v11, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    if-ne v11, v12, :cond_90

    .line 324
    :cond_84
    invoke-virtual {v6}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v11

    iput v11, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    .line 325
    invoke-virtual {v6}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v11

    iput v11, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    .line 328
    :cond_90
    invoke-direct {v1, v5, v9}, Lcom/android/server/display/DisplayModeDirector;->filterModes([Landroid/view/Display$Mode;Lcom/android/server/display/DisplayModeDirector$VoteSummary;)[I

    move-result-object v11

    move-object v8, v11

    .line 329
    array-length v11, v8

    if-lez v11, :cond_99

    .line 340
    goto :goto_9c

    .line 355
    :cond_99
    add-int/lit8 v10, v10, 0x1

    goto :goto_74

    .line 358
    :cond_9c
    :goto_9c
    new-instance v11, Lcom/android/server/display/DisplayModeDirector$VoteSummary;

    invoke-direct {v11}, Lcom/android/server/display/DisplayModeDirector$VoteSummary;-><init>()V

    .line 359
    .local v11, "appRequestSummary":Lcom/android/server/display/DisplayModeDirector$VoteSummary;
    const/4 v12, 0x4

    invoke-direct {v1, v0, v12, v11}, Lcom/android/server/display/DisplayModeDirector;->summarizeVotes(Landroid/util/SparseArray;ILcom/android/server/display/DisplayModeDirector$VoteSummary;)V

    .line 361
    iget v12, v11, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget v13, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    .line 362
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    iput v12, v11, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    .line 363
    iget v12, v11, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    iget v13, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    .line 364
    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    iput v12, v11, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    .line 372
    invoke-virtual {v6}, Landroid/view/Display$Mode;->getModeId()I

    move-result v12

    .line 373
    .local v12, "baseModeId":I
    array-length v13, v8

    if-lez v13, :cond_c3

    .line 374
    aget v7, v8, v7

    move v12, v7

    .line 378
    :cond_c3
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v7, :cond_e8

    invoke-static {}, Landroid/view/Display$SeamlessRefreshRateConfig;->isSwitchableType()Z

    move-result v7

    if-eqz v7, :cond_e8

    .line 379
    new-instance v7, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    new-instance v13, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v14, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    iget v15, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-direct {v13, v14, v15}, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;-><init>(FF)V

    new-instance v14, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v15, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    move-object/from16 v16, v0

    .end local v0    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .local v16, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    iget v0, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-direct {v14, v15, v0}, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;-><init>(FF)V

    invoke-direct {v7, v12, v13, v14}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>(ILcom/android/server/display/DisplayModeDirector$RefreshRateRange;Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;)V

    monitor-exit v4

    return-object v7

    .line 378
    .end local v16    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .restart local v0    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    :cond_e8
    move-object/from16 v16, v0

    .line 390
    .end local v0    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .restart local v16    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    new-instance v7, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v13, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget v14, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-direct {v7, v13, v14}, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;-><init>(FF)V

    new-instance v13, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v14, v11, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget v15, v11, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-direct {v13, v14, v15}, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;-><init>(FF)V

    invoke-direct {v0, v12, v7, v13}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>(ILcom/android/server/display/DisplayModeDirector$RefreshRateRange;Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;)V

    monitor-exit v4

    return-object v0

    .line 287
    .end local v8    # "availableModes":[I
    .end local v9    # "primarySummary":Lcom/android/server/display/DisplayModeDirector$VoteSummary;
    .end local v10    # "lowestConsideredPriority":I
    .end local v11    # "appRequestSummary":Lcom/android/server/display/DisplayModeDirector$VoteSummary;
    .end local v12    # "baseModeId":I
    .end local v16    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .restart local v0    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    :cond_103
    move-object/from16 v16, v0

    .line 288
    .end local v0    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .restart local v16    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    :goto_105
    const-string v0, "DisplayModeDirector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Asked about unknown display, returning empty display mode specs!(id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v0}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    monitor-exit v4

    return-object v0

    .line 395
    .end local v5    # "modes":[Landroid/view/Display$Mode;
    .end local v6    # "defaultMode":Landroid/view/Display$Mode;
    .end local v16    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    :catchall_127
    move-exception v0

    monitor-exit v4
    :try_end_129
    .catchall {:try_start_9 .. :try_end_129} :catchall_127

    throw v0
.end method

.method getDesiredDisplayModeSpecsWithInjectedFpsSettings(FFF)Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
    .registers 6
    .param p1, "minRefreshRate"    # F
    .param p2, "peakRefreshRate"    # F
    .param p3, "defaultRefreshRate"    # F

    .line 674
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 675
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    # invokes: Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked(FFF)V
    invoke-static {v1, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->access$100(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;FFF)V

    .line 677
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayModeDirector;->getDesiredDisplayModeSpecs(I)Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 678
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getRefreshRateMode()I
    .registers 3

    .line 400
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->getRefreshRateModeLocked()I

    move-result v1

    monitor-exit v0

    return v1

    .line 402
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method injectBrightnessObserver(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V
    .registers 2
    .param p1, "brightnessObserver"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    .line 668
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    .line 669
    return-void
.end method

.method injectDefaultModeByDisplay(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/Display$Mode;",
            ">;)V"
        }
    .end annotation

    .line 658
    .local p1, "defaultModeByDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/Display$Mode;>;"
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 659
    return-void
.end method

.method injectSupportedModesByDisplay(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/view/Display$Mode;",
            ">;)V"
        }
    .end annotation

    .line 653
    .local p1, "supportedModesByDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[Landroid/view/Display$Mode;>;"
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 654
    return-void
.end method

.method injectVotesByDisplay(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;>;)V"
        }
    .end annotation

    .line 663
    .local p1, "votesByDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;>;"
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    .line 664
    return-void
.end method

.method public logCurrentState(ILcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .registers 10
    .param p1, "displayId"    # I
    .param p2, "desiredDisplayModeSpecs"    # Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 406
    if-eqz p1, :cond_3

    .line 407
    return-void

    .line 410
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 411
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "Schedule to change allowedModes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {p2}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", displayId="

    .line 414
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 416
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_6a

    .line 417
    const-string v3, "\n "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 419
    .local v3, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    sget v4, Lcom/android/server/display/DisplayModeDirector$Vote;->MAX_PRIORITY:I

    .local v4, "p":I
    :goto_45
    if-ltz v4, :cond_67

    .line 420
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 421
    .local v5, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    if-nez v5, :cond_50

    .line 422
    goto :goto_64

    .line 424
    :cond_50
    const-string v6, "\n   "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 419
    .end local v5    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :goto_64
    add-int/lit8 v4, v4, -0x1

    goto :goto_45

    .line 416
    .end local v3    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .end local v4    # "p":I
    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 427
    .end local v2    # "i":I
    :cond_6a
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mLowRefreshRateTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_81

    .line 428
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   mLowRefreshRateTokens: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mLowRefreshRateTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 430
    :cond_81
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mRefreshRateMaxLimitTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_98

    .line 431
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   mRefreshRateMaxLimitTokens: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mRefreshRateMaxLimitTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 433
    :cond_98
    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector;->mIsForceApplyRefreshRateNormalMode:Z

    if-eqz v2, :cond_a6

    .line 434
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   mIsForceApplyRefreshRateNormalMode=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :cond_a6
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->logCurrentState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->logCurrentState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->logCurrentState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayModeDirectorHistory:Lcom/android/server/wm/SystemHistory;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/SystemHistory;->add(Ljava/lang/String;)V

    .line 442
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    monitor-exit v0

    .line 443
    return-void

    .line 442
    :catchall_db
    move-exception v1

    monitor-exit v0
    :try_end_dd
    .catchall {:try_start_6 .. :try_end_dd} :catchall_db

    throw v1
.end method

.method public setDesiredDisplayModeSpecsListener(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;)V
    .registers 4
    .param p1, "desiredDisplayModeSpecsListener"    # Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    .line 523
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_3
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    .line 525
    monitor-exit v0

    .line 526
    return-void

    .line 525
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setForceApplyRefreshRateNormalMode(Z)V
    .registers 7
    .param p1, "isForceApplyRefreshRateNormalMode"    # Z

    .line 446
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector;->mIsForceApplyRefreshRateNormalMode:Z

    if-eq v1, p1, :cond_3b

    .line 448
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->getRefreshRateModeLocked()I

    move-result v1

    .line 449
    .local v1, "oldRefreshRate":I
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v2, :cond_34

    .line 450
    const-string v2, "DisplayModeDirector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setForceApplyRefreshRateNormalMode, isForceApplyRefreshRateNormalMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", oldRefreshRate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-static {v1}, Landroid/provider/Settings$Secure;->refreshRateModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 450
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_34
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector;->mIsForceApplyRefreshRateNormalMode:Z

    .line 456
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    # invokes: Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateModeLocked()V
    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->access$000(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;)V

    .line 458
    .end local v1    # "oldRefreshRate":I
    :cond_3b
    monitor-exit v0

    .line 459
    return-void

    .line 458
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public start(Landroid/hardware/SensorManager;)V
    .registers 4
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;

    .line 187
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->observe()V

    .line 188
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->observe()V

    .line 189
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->observe()V

    .line 191
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isSensorNeeded()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 192
    :cond_1b
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->observe(Landroid/hardware/SensorManager;)V

    .line 195
    :cond_20
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_23
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 199
    monitor-exit v0

    .line 201
    return-void

    .line 199
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_28

    throw v1
.end method
