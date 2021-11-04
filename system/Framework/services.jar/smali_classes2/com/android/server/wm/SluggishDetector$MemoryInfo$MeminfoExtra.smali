.class final Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector$MemoryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MeminfoExtra"
.end annotation


# static fields
.field private static final MEMINFO_EXTRA_PATH:Ljava/lang/String; = "/proc/meminfo_extra"


# instance fields
.field private mSystemHeap:J

.field private mZSwapDevice:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1364
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;->mSystemHeap:J

    .line 1365
    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;->mZSwapDevice:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/SluggishDetector$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/wm/SluggishDetector$1;

    .line 1360
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;-><init>()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;

    .line 1360
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;->refresh()V

    return-void
.end method

.method private refresh()V
    .registers 11

    .line 1368
    const-string v0, "/proc/meminfo_extra"

    # invokes: Lcom/android/server/wm/SluggishDetector;->getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/wm/SluggishDetector;->access$4400(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1369
    .local v0, "lines":[Ljava/lang/String;
    if-eqz v0, :cond_59

    .line 1370
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_59

    aget-object v3, v0, v2

    .line 1371
    .local v3, "line":Ljava/lang/String;
    const-string v4, "SystemHeap:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-wide/16 v6, 0x400

    const-string/jumbo v8, "kB"

    const-string v9, ""

    if-eqz v5, :cond_36

    .line 1372
    nop

    .line 1373
    invoke-virtual {v3, v4, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1374
    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1375
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1377
    .local v4, "systemHeap":Ljava/lang/String;
    :try_start_2a
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;->mSystemHeap:J

    .line 1378
    div-long/2addr v8, v6

    iput-wide v8, p0, Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;->mSystemHeap:J
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_33} :catch_34

    .line 1383
    goto :goto_35

    .line 1380
    :catch_34
    move-exception v5

    .line 1384
    .end local v4    # "systemHeap":Ljava/lang/String;
    :goto_35
    goto :goto_56

    .line 1385
    :cond_36
    const-string v4, "ZSwapDevice:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 1386
    nop

    .line 1387
    invoke-virtual {v3, v4, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1388
    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1389
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1391
    .local v4, "zswapDevice":Ljava/lang/String;
    :try_start_4b
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;->mZSwapDevice:J

    .line 1392
    div-long/2addr v8, v6

    iput-wide v8, p0, Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;->mZSwapDevice:J
    :try_end_54
    .catch Ljava/lang/NumberFormatException; {:try_start_4b .. :try_end_54} :catch_55

    .line 1397
    goto :goto_56

    .line 1394
    :catch_55
    move-exception v5

    .line 1370
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "zswapDevice":Ljava/lang/String;
    :cond_56
    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1401
    :cond_59
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;->mSystemHeap:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;->mZSwapDevice:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
