.class final Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetLaunchInfo"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static isReady:Z


# instance fields
.field private mCurTime:J

.field private mIoInfoData:Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;

.field private mShortComponentName:Ljava/lang/String;

.field private mSlgInfoData:Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;

.field private mThroughputInfo:Lcom/android/server/wm/SluggishDetector$ThroughputInfo;

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->TAG:Ljava/lang/String;

    .line 1503
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->isReady:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "shortComponentName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1505
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->mCurTime:J

    .line 1506
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->mShortComponentName:Ljava/lang/String;

    .line 1507
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->mUid:I

    .line 1508
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->mSlgInfoData:Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;

    .line 1509
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->mIoInfoData:Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;

    .line 1510
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->mThroughputInfo:Lcom/android/server/wm/SluggishDetector$ThroughputInfo;

    .line 1514
    iput-object p1, p0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->mShortComponentName:Ljava/lang/String;

    .line 1515
    iput p2, p0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->mUid:I

    .line 1520
    const-class v0, Lcom/android/server/wm/SluggishDetector;

    monitor-enter v0

    .line 1521
    const/4 v1, 0x1

    :try_start_1e
    sput-boolean v1, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->isReady:Z

    .line 1522
    monitor-exit v0

    .line 1523
    return-void

    .line 1522
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_22

    throw v1
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/server/wm/SluggishDetector$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/wm/SluggishDetector$1;

    .line 1499
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

    .line 1499
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->setLaunch()V

    return-void
.end method

.method static synthetic access$4700()Z
    .registers 1

    .line 1499
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->isReady:Z

    return v0
.end method

.method static synthetic access$6600(Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

    .line 1499
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->mShortComponentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

    .line 1499
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->mCurTime:J

    return-wide v0
.end method

.method private refresh()V
    .registers 3

    .line 1533
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->mCurTime:J

    .line 1540
    return-void
.end method

.method private setLaunch()V
    .registers 3

    .line 1550
    const-class v0, Lcom/android/server/wm/SluggishDetector;

    monitor-enter v0

    .line 1551
    const/4 v1, 0x0

    :try_start_4
    sput-boolean v1, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->isReady:Z

    .line 1552
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 1554
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->refresh()V

    .line 1558
    return-void

    .line 1552
    :catchall_b
    move-exception v1

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 1562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mShortComponentName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->mShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIoInfoData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->mIoInfoData:Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
