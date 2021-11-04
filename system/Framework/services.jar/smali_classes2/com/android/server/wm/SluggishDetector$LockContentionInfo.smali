.class final Lcom/android/server/wm/SluggishDetector$LockContentionInfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LockContentionInfo"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static prevTime:J


# instance fields
.field private LcdOnValue:I

.field private mOwnerFileLine:I

.field private mOwnerFileName:Ljava/lang/String;

.field private mOwnerMethod:Ljava/lang/String;

.field private mThreadName:Ljava/lang/String;

.field private mWaitTime:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 3731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->TAG:Ljava/lang/String;

    .line 3732
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->prevTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "info"    # Ljava/lang/String;

    .line 3741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3742
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3743
    .local v0, "token":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->mThreadName:Ljava/lang/String;

    .line 3744
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->mWaitTime:I

    .line 3745
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->mOwnerFileName:Ljava/lang/String;

    .line 3746
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->mOwnerFileLine:I

    .line 3747
    const/4 v1, 0x4

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->mOwnerMethod:Ljava/lang/String;

    .line 3748
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->LcdOnValue:I

    .line 3749
    return-void
.end method

.method private LockInfo_Logging()V
    .registers 5

    .line 3808
    invoke-virtual {p0}, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3809
    .local v0, "LockInfo":Ljava/lang/String;
    sget-object v1, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LockInfo_Logging() - LockInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3813
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/SluggishDetector$LockContentionInfo;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$LockContentionInfo;

    .line 3730
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->LockInfo_Logging()V

    return-void
.end method


# virtual methods
.method public checkTime()Z
    .registers 7

    .line 3752
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3753
    .local v0, "curTime":J
    sget-wide v2, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->prevTime:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_19

    .line 3754
    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 3755
    .local v2, "timeDiff":J
    const-wide/16 v4, 0x5

    cmp-long v4, v2, v4

    if-gez v4, :cond_19

    .line 3756
    const/4 v4, 0x0

    return v4

    .line 3760
    .end local v2    # "timeDiff":J
    :cond_19
    sput-wide v0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->prevTime:J

    .line 3761
    const/4 v2, 0x1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 3776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3779
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\"SDVR\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1.2.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3782
    const-string v2, ",\"THNM\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->mThreadName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3785
    const-string v2, ",\"OMTD\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->mOwnerMethod:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3788
    const-string v2, ",\"OFNM\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->mOwnerFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3791
    const-string v2, ",\"OFLN\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->mOwnerFileLine:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3794
    const-string v2, ",\"WTTM\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->mWaitTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3797
    const-string v2, ",\"LCDV\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->LcdOnValue:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3799
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateLCD()V
    .registers 4

    .line 3766
    const/16 v0, -0x63

    .line 3767
    .local v0, "LCDValue":I
    # getter for: Lcom/android/server/wm/SluggishDetector;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$9700()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 3768
    .local v1, "powerManager":Landroid/os/PowerManager;
    if-eqz v1, :cond_16

    .line 3769
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    move v0, v2

    .line 3771
    :cond_16
    iput v0, p0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->LcdOnValue:I

    .line 3772
    return-void
.end method
