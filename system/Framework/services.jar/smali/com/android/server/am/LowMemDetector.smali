.class public final Lcom/android/server/am/LowMemDetector;
.super Ljava/lang/Object;
.source "LowMemDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/LowMemDetector$LowMemThread;
    }
.end annotation


# static fields
.field public static final MEM_PRESSURE_HIGH:I = 0x3

.field public static final MEM_PRESSURE_LOW:I = 0x1

.field public static final MEM_PRESSURE_MEDIUM:I = 0x2

.field public static final MEM_PRESSURE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LowMemDetector"


# instance fields
.field private final mAm:Lcom/android/server/am/ActivityManagerService;

.field private mAvailable:Z

.field private final mLowMemThread:Lcom/android/server/am/LowMemDetector$LowMemThread;

.field private mPressureState:I

.field private final mPressureStateLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 7
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LowMemDetector;->mPressureStateLock:Ljava/lang/Object;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/LowMemDetector;->mPressureState:I

    .line 46
    const-string/jumbo v1, "ro.debuggable"

    invoke-static {v1, v0}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    move v1, v0

    .line 47
    .local v1, "isDebugable":Z
    :goto_1a
    iput-object p1, p0, Lcom/android/server/am/LowMemDetector;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 48
    new-instance v3, Lcom/android/server/am/LowMemDetector$LowMemThread;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/am/LowMemDetector$LowMemThread;-><init>(Lcom/android/server/am/LowMemDetector;Lcom/android/server/am/LowMemDetector$1;)V

    iput-object v3, p0, Lcom/android/server/am/LowMemDetector;->mLowMemThread:Lcom/android/server/am/LowMemDetector$LowMemThread;

    .line 49
    if-nez v1, :cond_35

    invoke-direct {p0}, Lcom/android/server/am/LowMemDetector;->init()I

    move-result v3

    if-eqz v3, :cond_2d

    goto :goto_35

    .line 52
    :cond_2d
    iput-boolean v2, p0, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    .line 53
    iget-object v0, p0, Lcom/android/server/am/LowMemDetector;->mLowMemThread:Lcom/android/server/am/LowMemDetector$LowMemThread;

    invoke-virtual {v0}, Lcom/android/server/am/LowMemDetector$LowMemThread;->start()V

    goto :goto_37

    .line 50
    :cond_35
    :goto_35
    iput-boolean v0, p0, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    .line 55
    :goto_37
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/LowMemDetector;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/LowMemDetector;

    .line 28
    invoke-direct {p0}, Lcom/android/server/am/LowMemDetector;->waitForPressure()I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/am/LowMemDetector;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/LowMemDetector;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/am/LowMemDetector;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/LowMemDetector;

    .line 28
    iget-object v0, p0, Lcom/android/server/am/LowMemDetector;->mPressureStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/am/LowMemDetector;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/LowMemDetector;
    .param p1, "x1"    # I

    .line 28
    iput p1, p0, Lcom/android/server/am/LowMemDetector;->mPressureState:I

    return p1
.end method

.method private native init()I
.end method

.method private native waitForPressure()I
.end method


# virtual methods
.method public getMemFactor()I
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/android/server/am/LowMemDetector;->mPressureStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_3
    iget v1, p0, Lcom/android/server/am/LowMemDetector;->mPressureState:I

    monitor-exit v0

    return v1

    .line 71
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isAvailable()Z
    .registers 2

    .line 58
    iget-boolean v0, p0, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    return v0
.end method
