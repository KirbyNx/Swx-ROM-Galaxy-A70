.class Lcom/android/server/VibratorService$AbortVibration;
.super Ljava/lang/Object;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AbortVibration"
.end annotation


# instance fields
.field private mCount:I

.field private mPackageName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 4224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4226
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/VibratorService$AbortVibration;->mCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/VibratorService$1;

    .line 4224
    invoke-direct {p0}, Lcom/android/server/VibratorService$AbortVibration;-><init>()V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/VibratorService$AbortVibration;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$AbortVibration;

    .line 4224
    invoke-direct {p0}, Lcom/android/server/VibratorService$AbortVibration;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/server/VibratorService$AbortVibration;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/VibratorService$AbortVibration;

    .line 4224
    invoke-direct {p0}, Lcom/android/server/VibratorService$AbortVibration;->addCount()V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/VibratorService$AbortVibration;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$AbortVibration;
    .param p1, "x1"    # Ljava/lang/String;

    .line 4224
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService$AbortVibration;->setPackageName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/VibratorService$AbortVibration;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$AbortVibration;

    .line 4224
    invoke-direct {p0}, Lcom/android/server/VibratorService$AbortVibration;->getCount()I

    move-result v0

    return v0
.end method

.method private declared-synchronized addCount()V
    .registers 2

    monitor-enter p0

    .line 4241
    :try_start_1
    iget v0, p0, Lcom/android/server/VibratorService$AbortVibration;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/VibratorService$AbortVibration;->mCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 4242
    monitor-exit p0

    return-void

    .line 4240
    .end local p0    # "this":Lcom/android/server/VibratorService$AbortVibration;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getCount()I
    .registers 2

    monitor-enter p0

    .line 4237
    :try_start_1
    iget v0, p0, Lcom/android/server/VibratorService$AbortVibration;->mCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 4237
    .end local p0    # "this":Lcom/android/server/VibratorService$AbortVibration;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPackageName()Ljava/lang/String;
    .registers 2

    .line 4229
    iget-object v0, p0, Lcom/android/server/VibratorService$AbortVibration;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "mPackageName"    # Ljava/lang/String;

    .line 4233
    iput-object p1, p0, Lcom/android/server/VibratorService$AbortVibration;->mPackageName:Ljava/lang/String;

    .line 4234
    return-void
.end method
