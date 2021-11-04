.class final Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector$ThroughputInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThroughputInfoElement"
.end annotation


# instance fields
.field private rx_bytes:J

.field private time:J

.field private tx_bytes:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->time:J

    .line 881
    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->rx_bytes:J

    .line 882
    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->tx_bytes:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/SluggishDetector$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/wm/SluggishDetector$1;

    .line 878
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;-><init>()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    .line 878
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->rx_bytes:J

    return-wide v0
.end method

.method static synthetic access$4002(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;
    .param p1, "x1"    # J

    .line 878
    iput-wide p1, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->rx_bytes:J

    return-wide p1
.end method

.method static synthetic access$4100(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    .line 878
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->time:J

    return-wide v0
.end method

.method static synthetic access$4102(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;
    .param p1, "x1"    # J

    .line 878
    iput-wide p1, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->time:J

    return-wide p1
.end method

.method static synthetic access$4200(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    .line 878
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->tx_bytes:J

    return-wide v0
.end method

.method static synthetic access$4202(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;
    .param p1, "x1"    # J

    .line 878
    iput-wide p1, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->tx_bytes:J

    return-wide p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rx_bytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->rx_bytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tx_bytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->tx_bytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
