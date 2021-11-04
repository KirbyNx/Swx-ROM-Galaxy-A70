.class final Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector$IoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IoInfoData"
.end annotation


# instance fields
.field private mReadByte:J

.field private mWriteByte:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->mReadByte:J

    .line 1125
    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->mWriteByte:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/SluggishDetector$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/wm/SluggishDetector$1;

    .line 1122
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;-><init>()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    .param p1, "x1"    # Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;

    .line 1122
    invoke-direct {p0, p1}, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->add(Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;)V

    return-void
.end method

.method static synthetic access$5202(Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    .param p1, "x1"    # J

    .line 1122
    iput-wide p1, p0, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->mReadByte:J

    return-wide p1
.end method

.method static synthetic access$5302(Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    .param p1, "x1"    # J

    .line 1122
    iput-wide p1, p0, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->mWriteByte:J

    return-wide p1
.end method

.method static synthetic access$7100(Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    .param p1, "x1"    # I

    .line 1122
    invoke-direct {p0, p1}, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->divide(I)V

    return-void
.end method

.method private add(Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;)V
    .registers 6
    .param p1, "operand"    # Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;

    .line 1128
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->mReadByte:J

    iget-wide v2, p1, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->mReadByte:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->mReadByte:J

    .line 1129
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->mWriteByte:J

    iget-wide v2, p1, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->mWriteByte:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->mWriteByte:J

    .line 1130
    return-void
.end method

.method private divide(I)V
    .registers 6
    .param p1, "count"    # I

    .line 1139
    if-eqz p1, :cond_e

    .line 1140
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->mReadByte:J

    int-to-long v2, p1

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->mReadByte:J

    .line 1141
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->mWriteByte:J

    int-to-long v2, p1

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->mWriteByte:J

    .line 1143
    :cond_e
    return-void
.end method

.method private sub(Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;)V
    .registers 6
    .param p1, "operand"    # Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;

    .line 1133
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->mReadByte:J

    iget-wide v2, p1, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->mReadByte:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->mReadByte:J

    .line 1134
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->mWriteByte:J

    iget-wide v2, p1, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->mWriteByte:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->mWriteByte:J

    .line 1135
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->mReadByte:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->mWriteByte:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
