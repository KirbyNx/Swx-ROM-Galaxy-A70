.class Lcom/android/server/vr/RefreshRateModeController;
.super Ljava/lang/Object;
.source "RefreshRateModeController.java"


# static fields
.field private static final DEBUG:Z

.field private static final DELAY_SET_REFRESH_RATE_MODE:I = 0x12c

.field private static final DELAY_VR_STATE:I = 0x96

.field private static final MESSAGE_SET_REFRESH_RATE_SETTING:I = 0x1

.field private static final MESSAGE_UPDATE_NORMAL_REFRESH_RATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RefreshRateModeController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mGearVrManagerService:Lcom/android/server/vr/GearVrManagerService;

.field private final mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

.field private final mHandler:Landroid/os/Handler;

.field private mIsDaydreamPersistentVrModeEnabled:Z

.field private mIsDaydreamVrModeEnabled:Z

.field private mIsNormalRefreshRate:Z

.field private mIsPersistentVrModeEnabled:Z

.field private mIsVrModeEnabled:Z

.field private mLastRefreshRateMode:I

.field private mLock:Ljava/lang/Object;

.field private final mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

.field private mRefreshRateMode:I

.field private mRequestNormalRefreshRate:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/vr/RefreshRateModeController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vr/GearVrManagerService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gearVrManagerService"    # Lcom/android/server/vr/GearVrManagerService;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mLastRefreshRateMode:I

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Lcom/android/server/vr/RefreshRateModeController$1;

    invoke-direct {v0, p0}, Lcom/android/server/vr/RefreshRateModeController$1;-><init>(Lcom/android/server/vr/RefreshRateModeController;)V

    iput-object v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Lcom/android/server/vr/RefreshRateModeController$2;

    invoke-direct {v0, p0}, Lcom/android/server/vr/RefreshRateModeController$2;-><init>(Lcom/android/server/vr/RefreshRateModeController;)V

    iput-object v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 94
    new-instance v0, Lcom/android/server/vr/RefreshRateModeController$3;

    invoke-direct {v0, p0}, Lcom/android/server/vr/RefreshRateModeController$3;-><init>(Lcom/android/server/vr/RefreshRateModeController;)V

    iput-object v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 109
    new-instance v0, Lcom/android/server/vr/RefreshRateModeController$4;

    invoke-direct {v0, p0}, Lcom/android/server/vr/RefreshRateModeController$4;-><init>(Lcom/android/server/vr/RefreshRateModeController;)V

    iput-object v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

    .line 152
    new-instance v0, Lcom/android/server/vr/RefreshRateModeController$5;

    invoke-direct {v0, p0}, Lcom/android/server/vr/RefreshRateModeController$5;-><init>(Lcom/android/server/vr/RefreshRateModeController;)V

    iput-object v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 180
    iput-object p1, p0, Lcom/android/server/vr/RefreshRateModeController;->mContext:Landroid/content/Context;

    .line 181
    iput-object p2, p0, Lcom/android/server/vr/RefreshRateModeController;->mGearVrManagerService:Lcom/android/server/vr/GearVrManagerService;

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/vr/RefreshRateModeController;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/RefreshRateModeController;

    .line 33
    iget-object v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/vr/RefreshRateModeController;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/RefreshRateModeController;
    .param p1, "x1"    # I

    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/vr/RefreshRateModeController;->setRefreshRateModeSetting(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/vr/RefreshRateModeController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/RefreshRateModeController;

    .line 33
    iget-boolean v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsNormalRefreshRate:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/vr/RefreshRateModeController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/RefreshRateModeController;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsNormalRefreshRate:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/vr/RefreshRateModeController;)Lcom/android/server/vr/GearVrManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/RefreshRateModeController;

    .line 33
    iget-object v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mGearVrManagerService:Lcom/android/server/vr/GearVrManagerService;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/vr/RefreshRateModeController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/RefreshRateModeController;

    .line 33
    iget v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mRefreshRateMode:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/vr/RefreshRateModeController;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/RefreshRateModeController;
    .param p1, "x1"    # I

    .line 33
    iput p1, p0, Lcom/android/server/vr/RefreshRateModeController;->mRefreshRateMode:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/vr/RefreshRateModeController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/RefreshRateModeController;

    .line 33
    invoke-direct {p0}, Lcom/android/server/vr/RefreshRateModeController;->getRefreshRateModeSetting()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/vr/RefreshRateModeController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/vr/RefreshRateModeController;

    .line 33
    invoke-direct {p0}, Lcom/android/server/vr/RefreshRateModeController;->updateNormalRefreshModeLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/vr/RefreshRateModeController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/RefreshRateModeController;

    .line 33
    iget-boolean v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsDaydreamVrModeEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/vr/RefreshRateModeController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/RefreshRateModeController;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsDaydreamVrModeEnabled:Z

    return p1
.end method

.method static synthetic access$400()Z
    .registers 1

    .line 33
    sget-boolean v0, Lcom/android/server/vr/RefreshRateModeController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/vr/RefreshRateModeController;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/RefreshRateModeController;

    .line 33
    iget-object v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/vr/RefreshRateModeController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/RefreshRateModeController;

    .line 33
    iget-boolean v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsDaydreamPersistentVrModeEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/vr/RefreshRateModeController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/RefreshRateModeController;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsDaydreamPersistentVrModeEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/vr/RefreshRateModeController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/RefreshRateModeController;

    .line 33
    iget-boolean v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsPersistentVrModeEnabled:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/vr/RefreshRateModeController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/RefreshRateModeController;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsPersistentVrModeEnabled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/vr/RefreshRateModeController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/RefreshRateModeController;

    .line 33
    iget-boolean v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsVrModeEnabled:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/vr/RefreshRateModeController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/RefreshRateModeController;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsVrModeEnabled:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/vr/RefreshRateModeController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/RefreshRateModeController;

    .line 33
    invoke-direct {p0}, Lcom/android/server/vr/RefreshRateModeController;->getNormalRefreshRateMode()Z

    move-result v0

    return v0
.end method

.method private getNormalRefreshRateMode()Z
    .registers 4

    .line 264
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 265
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/vr/RefreshRateModeController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 266
    iget v1, v0, Landroid/view/DisplayInfo;->refreshRateMode:I

    if-nez v1, :cond_14

    const/4 v2, 0x1

    :cond_14
    return v2
.end method

.method private getRefreshRateModeSetting()I
    .registers 5

    .line 270
    iget-object v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "refresh_rate_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private isNormalRefreshModeNeeded()Z
    .registers 2

    .line 260
    iget-boolean v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsDaydreamVrModeEnabled:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsVrModeEnabled:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsDaydreamPersistentVrModeEnabled:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsPersistentVrModeEnabled:Z

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private setRefreshRateModeSetting(I)V
    .registers 5
    .param p1, "refreshRateMode"    # I

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRefreshRateModeSetting refreshRateMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RefreshRateModeController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iput p1, p0, Lcom/android/server/vr/RefreshRateModeController;->mRefreshRateMode:I

    .line 278
    iget-object v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "refresh_rate_mode"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 282
    return-void
.end method

.method private updateNormalRefreshModeLocked()V
    .registers 9

    .line 237
    invoke-direct {p0}, Lcom/android/server/vr/RefreshRateModeController;->isNormalRefreshModeNeeded()Z

    move-result v0

    .line 238
    .local v0, "requestNormalRefreshRate":Z
    iget-boolean v1, p0, Lcom/android/server/vr/RefreshRateModeController;->mRequestNormalRefreshRate:Z

    if-eq v1, v0, :cond_73

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNormalRefreshModeLocked requestNormalRefreshRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mRefreshRateMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vr/RefreshRateModeController;->mRefreshRateMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mLastRefreshRateMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vr/RefreshRateModeController;->mLastRefreshRateMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsNormalRefreshRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsNormalRefreshRate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RefreshRateModeController"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iput-boolean v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mRequestNormalRefreshRate:Z

    .line 243
    const-wide/16 v1, 0x12c

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v0, :cond_5d

    .line 244
    iget v6, p0, Lcom/android/server/vr/RefreshRateModeController;->mLastRefreshRateMode:I

    if-ne v6, v4, :cond_73

    .line 245
    iget v4, p0, Lcom/android/server/vr/RefreshRateModeController;->mRefreshRateMode:I

    iput v4, p0, Lcom/android/server/vr/RefreshRateModeController;->mLastRefreshRateMode:I

    .line 246
    iget-object v4, p0, Lcom/android/server/vr/RefreshRateModeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    iget-object v4, p0, Lcom/android/server/vr/RefreshRateModeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_73

    .line 250
    :cond_5d
    iget v6, p0, Lcom/android/server/vr/RefreshRateModeController;->mLastRefreshRateMode:I

    if-eq v6, v4, :cond_73

    .line 251
    iget-object v6, p0, Lcom/android/server/vr/RefreshRateModeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 252
    iget-object v6, p0, Lcom/android/server/vr/RefreshRateModeController;->mHandler:Landroid/os/Handler;

    iget v7, p0, Lcom/android/server/vr/RefreshRateModeController;->mLastRefreshRateMode:I

    invoke-virtual {v6, v5, v7, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v6, v3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 253
    iput v4, p0, Lcom/android/server/vr/RefreshRateModeController;->mLastRefreshRateMode:I

    .line 257
    :cond_73
    :goto_73
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 285
    const-string v0, "RefreshRateModeController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRefreshRateMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/RefreshRateModeController;->mRefreshRateMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLastRefreshRateMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/RefreshRateModeController;->mLastRefreshRateMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsNormalRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsNormalRefreshRate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRequestNormalRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/RefreshRateModeController;->mRequestNormalRefreshRate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsDaydreamVrModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsDaydreamVrModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsDaydreamPersistentVrModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsDaydreamPersistentVrModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsVrModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsVrModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsPersistentVrModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsPersistentVrModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method isNormalRefreshRate()Z
    .registers 2

    .line 233
    iget-boolean v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsNormalRefreshRate:Z

    return v0
.end method

.method public onSystemServiceReady()V
    .registers 8

    .line 185
    iget-object v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 186
    invoke-direct {p0}, Lcom/android/server/vr/RefreshRateModeController;->getRefreshRateModeSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mRefreshRateMode:I

    .line 187
    iget-object v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 188
    const-string/jumbo v1, "refresh_rate_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/vr/RefreshRateModeController$6;

    iget-object v3, p0, Lcom/android/server/vr/RefreshRateModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/vr/RefreshRateModeController$6;-><init>(Lcom/android/server/vr/RefreshRateModeController;Landroid/os/Handler;)V

    .line 187
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 203
    invoke-direct {p0}, Lcom/android/server/vr/RefreshRateModeController;->getNormalRefreshRateMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsNormalRefreshRate:Z

    .line 204
    iget-object v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mGearVrManagerService:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->updateLowPersistenceModeAllowedLocked()V

    .line 206
    iget-object v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/vr/RefreshRateModeController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 208
    const-string/jumbo v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v0

    .line 209
    .local v0, "vrManager":Landroid/service/vr/IVrManager;
    const-string v1, "RefreshRateModeController"

    if-eqz v0, :cond_67

    .line 211
    :try_start_4c
    iget-object v2, p0, Lcom/android/server/vr/RefreshRateModeController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_51} :catch_52

    .line 214
    goto :goto_67

    .line 212
    :catch_52
    move-exception v2

    .line 213
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to register VR mode state listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_67
    :goto_67
    const-class v2, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vr/VrManagerInternal;

    .line 218
    .local v2, "vrManagerInternal":Lcom/android/server/vr/VrManagerInternal;
    if-eqz v2, :cond_76

    .line 219
    iget-object v3, p0, Lcom/android/server/vr/RefreshRateModeController;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-virtual {v2, v3}, Lcom/android/server/vr/VrManagerInternal;->addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 222
    :cond_76
    const-string/jumbo v3, "vr"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/vr/IGearVrManagerService;

    move-result-object v3

    .line 224
    .local v3, "vr":Lcom/samsung/android/vr/IGearVrManagerService;
    if-eqz v3, :cond_9f

    .line 225
    :try_start_83
    iget-object v4, p0, Lcom/android/server/vr/RefreshRateModeController;->mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

    invoke-interface {v3, v4}, Lcom/samsung/android/vr/IGearVrManagerService;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_88} :catch_89

    goto :goto_9f

    .line 227
    :catch_89
    move-exception v4

    .line 228
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to register GearVR state listener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 229
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_9f
    :goto_9f
    nop

    .line 230
    :goto_a0
    return-void
.end method
