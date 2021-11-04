.class final Lcom/android/server/wm/SluggishDetector$MemoryInfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MemoryInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;,
        Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1358
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

    sput-object v0, Lcom/android/server/wm/SluggishDetector$MemoryInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$6400()Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;
    .registers 1

    .line 1356
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$MemoryInfo;->getMeminfo()Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6500()Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;
    .registers 1

    .line 1356
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$MemoryInfo;->getMeminfoExtra()Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;

    move-result-object v0

    return-object v0
.end method

.method private static getMeminfo()Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;
    .registers 2

    .line 1487
    new-instance v0, Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;-><init>(Lcom/android/server/wm/SluggishDetector$1;)V

    .line 1488
    .local v0, "meminfo":Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;
    # invokes: Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;->refresh()V
    invoke-static {v0}, Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;->access$5700(Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;)V

    .line 1493
    return-object v0
.end method

.method private static getMeminfoExtra()Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;
    .registers 2

    .line 1418
    new-instance v0, Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;-><init>(Lcom/android/server/wm/SluggishDetector$1;)V

    .line 1419
    .local v0, "meminfoExtra":Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;
    # invokes: Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;->refresh()V
    invoke-static {v0}, Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;->access$5500(Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;)V

    .line 1424
    return-object v0
.end method
