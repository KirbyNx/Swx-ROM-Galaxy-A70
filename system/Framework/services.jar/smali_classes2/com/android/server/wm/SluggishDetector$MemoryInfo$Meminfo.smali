.class final Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector$MemoryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Meminfo"
.end annotation


# static fields
.field private static final MEMINFO_PATH:Ljava/lang/String; = "/proc/meminfo"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mShmem:J

.field private mSlab:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/wm/SluggishDetector$MemoryInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1433
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;->mSlab:J

    .line 1434
    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;->mShmem:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/SluggishDetector$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/wm/SluggishDetector$1;

    .line 1427
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;-><init>()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;

    .line 1427
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;->refresh()V

    return-void
.end method

.method private refresh()V
    .registers 11

    .line 1437
    const-string v0, "/proc/meminfo"

    # invokes: Lcom/android/server/wm/SluggishDetector;->getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/wm/SluggishDetector;->access$4400(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1438
    .local v0, "lines":[Ljava/lang/String;
    if-eqz v0, :cond_59

    .line 1439
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_59

    aget-object v3, v0, v2

    .line 1440
    .local v3, "line":Ljava/lang/String;
    const-string v4, "Shmem:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-wide/16 v6, 0x400

    const-string/jumbo v8, "kB"

    const-string v9, ""

    if-eqz v5, :cond_36

    .line 1441
    nop

    .line 1442
    invoke-virtual {v3, v4, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1443
    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1444
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1446
    .local v4, "shmem":Ljava/lang/String;
    :try_start_2a
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;->mShmem:J

    .line 1447
    div-long/2addr v8, v6

    iput-wide v8, p0, Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;->mShmem:J
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_33} :catch_34

    .line 1452
    goto :goto_35

    .line 1449
    :catch_34
    move-exception v5

    .line 1453
    .end local v4    # "shmem":Ljava/lang/String;
    :goto_35
    goto :goto_56

    .line 1454
    :cond_36
    const-string v4, "Slab:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 1455
    nop

    .line 1456
    invoke-virtual {v3, v4, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1457
    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1458
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1460
    .local v4, "slab":Ljava/lang/String;
    :try_start_4b
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;->mSlab:J

    .line 1461
    div-long/2addr v8, v6

    iput-wide v8, p0, Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;->mSlab:J
    :try_end_54
    .catch Ljava/lang/NumberFormatException; {:try_start_4b .. :try_end_54} :catch_55

    .line 1466
    goto :goto_56

    .line 1463
    :catch_55
    move-exception v5

    .line 1439
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "slab":Ljava/lang/String;
    :cond_56
    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1470
    :cond_59
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 1475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;->mShmem:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;->mSlab:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
