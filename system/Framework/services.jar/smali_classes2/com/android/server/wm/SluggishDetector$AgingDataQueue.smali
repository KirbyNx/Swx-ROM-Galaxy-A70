.class Lcom/android/server/wm/SluggishDetector$AgingDataQueue;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AgingDataQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mElementList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;",
            ">;"
        }
    .end annotation
.end field

.field private mElementMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 2112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2117
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->init()V

    .line 2118
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/SluggishDetector$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/wm/SluggishDetector$1;

    .line 1779
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;-><init>()V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/wm/SluggishDetector$AgingDataQueue;Ljava/lang/String;)Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1779
    invoke-direct {p0, p1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->get(Ljava/lang/String;)Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/server/wm/SluggishDetector$AgingDataQueue;Ljava/lang/String;)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1779
    invoke-direct {p0, p1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->getAverageLaunchTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$8600(Lcom/android/server/wm/SluggishDetector$AgingDataQueue;Ljava/lang/String;JJJLcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;III)V
    .registers 12
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # J
    .param p6, "x4"    # J
    .param p8, "x5"    # Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    .param p9, "x6"    # I
    .param p10, "x7"    # I
    .param p11, "x8"    # I

    .line 1779
    invoke-direct/range {p0 .. p11}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->add(Ljava/lang/String;JJJLcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;III)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/wm/SluggishDetector$AgingDataQueue;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue;

    .line 1779
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->clear()V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/server/wm/SluggishDetector$AgingDataQueue;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 1779
    invoke-direct {p0, p1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/wm/SluggishDetector$AgingDataQueue;J)Ljava/util/LinkedList;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue;
    .param p1, "x1"    # J

    .line 1779
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->getElementListForPeriodicLaunchReport(J)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9300(Lcom/android/server/wm/SluggishDetector$AgingDataQueue;JJ)Ljava/util/LinkedList;
    .registers 6
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .line 1779
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->getElementListForPeriodicMemoryReport(JJ)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method private add(Ljava/lang/String;JJIII)V
    .registers 21
    .param p1, "procName"    # Ljava/lang/String;
    .param p2, "pss"    # J
    .param p4, "swapUsed"    # J
    .param p6, "maximumQueueListCount"    # I
    .param p7, "maximumElementListCount"    # I
    .param p8, "minimumElementListCount"    # I

    .line 2289
    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p6

    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2290
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->init()V

    .line 2294
    :cond_d
    :try_start_d
    iget-object v0, v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2295
    iget-object v0, v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    .line 2296
    .local v0, "newElement":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    iget-object v4, v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 2299
    .end local v0    # "newElement":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    :cond_23
    new-instance v0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    const/4 v4, 0x0

    invoke-direct {v0, p1, v4}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;-><init>(Ljava/lang/String;Lcom/android/server/wm/SluggishDetector$1;)V

    .line 2300
    .restart local v0    # "newElement":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    iget-object v4, v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2303
    :goto_2e
    move-object v5, v0

    move-wide v6, p2

    move-wide/from16 v8, p4

    move/from16 v10, p7

    move/from16 v11, p8

    # invokes: Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->add(JJII)V
    invoke-static/range {v5 .. v11}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->access$7700(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;JJII)V

    .line 2306
    iget-object v4, v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2308
    if-lez v3, :cond_5b

    .line 2309
    :goto_40
    iget-object v4, v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-le v4, v3, :cond_5b

    .line 2310
    iget-object v4, v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    .line 2311
    .local v4, "removeElement":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    iget-object v5, v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    # getter for: Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mShortComponentName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->access$3900(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_59} :catch_5c

    .line 2312
    nop

    .end local v4    # "removeElement":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    goto :goto_40

    .line 2317
    .end local v0    # "newElement":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    :cond_5b
    goto :goto_64

    .line 2315
    :catch_5c
    move-exception v0

    .line 2316
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->TAG:Ljava/lang/String;

    const-string v5, "add() - Exception"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_64
    return-void
.end method

.method private add(Ljava/lang/String;JJJLcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;III)V
    .registers 27
    .param p1, "shortComponentName"    # Ljava/lang/String;
    .param p2, "launchTime"    # J
    .param p4, "pss"    # J
    .param p6, "swapUsed"    # J
    .param p8, "ioInfoData"    # Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    .param p9, "maximumQueueListCount"    # I
    .param p10, "maximumElementListCount"    # I
    .param p11, "minimumElementListCount"    # I

    .line 2185
    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p9

    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2186
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->init()V

    .line 2190
    :cond_e
    :try_start_e
    iget-object v0, v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2191
    iget-object v0, v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    .line 2192
    .local v0, "newElement":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    iget-object v4, v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 2195
    .end local v0    # "newElement":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    :cond_24
    new-instance v0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;-><init>(Ljava/lang/String;Lcom/android/server/wm/SluggishDetector$1;)V

    .line 2196
    .restart local v0    # "newElement":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    iget-object v4, v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2199
    :goto_2f
    move-object v5, v0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object/from16 v12, p8

    move/from16 v13, p10

    move/from16 v14, p11

    # invokes: Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->add(JJJLcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;II)V
    invoke-static/range {v5 .. v14}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->access$7500(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;JJJLcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;II)V

    .line 2204
    iget-object v4, v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2206
    if-lez v3, :cond_61

    .line 2207
    :goto_46
    iget-object v4, v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-le v4, v3, :cond_61

    .line 2208
    iget-object v4, v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    .line 2209
    .local v4, "removeElement":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    iget-object v5, v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    # getter for: Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mShortComponentName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->access$3900(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_5f} :catch_62

    .line 2210
    nop

    .end local v4    # "removeElement":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    goto :goto_46

    .line 2216
    .end local v0    # "newElement":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    :cond_61
    goto :goto_63

    .line 2213
    :catch_62
    move-exception v0

    .line 2220
    :goto_63
    return-void
.end method

.method private add(Ljava/lang/String;JJJLcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;III)V
    .registers 33
    .param p1, "shortComponentName"    # Ljava/lang/String;
    .param p2, "launchTime"    # J
    .param p4, "pss"    # J
    .param p6, "swapUsed"    # J
    .param p8, "beforeSlgInfoData"    # Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;
    .param p9, "afterSlgInfoData"    # Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;
    .param p10, "ioInfoData"    # Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    .param p11, "throughputInfoData"    # Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;
    .param p12, "maximumQueueListCount"    # I
    .param p13, "maximumElementListCount"    # I
    .param p14, "minimumElementListCount"    # I

    .line 2238
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p12

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2239
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->init()V

    .line 2243
    :cond_f
    :try_start_f
    iget-object v0, v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2244
    iget-object v0, v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    .line 2245
    .local v0, "newElement":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    iget-object v4, v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_30

    .line 2248
    .end local v0    # "newElement":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    :cond_25
    new-instance v0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;-><init>(Ljava/lang/String;Lcom/android/server/wm/SluggishDetector$1;)V

    .line 2249
    .restart local v0    # "newElement":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    iget-object v4, v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2252
    :goto_30
    move-object v5, v0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move/from16 v16, p13

    move/from16 v17, p14

    # invokes: Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->add(JJJLcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;II)V
    invoke-static/range {v5 .. v17}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->access$7600(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;JJJLcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;II)V

    .line 2260
    iget-object v4, v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2262
    if-lez v3, :cond_68

    .line 2263
    :goto_4d
    iget-object v4, v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-le v4, v3, :cond_68

    .line 2264
    iget-object v4, v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    .line 2265
    .local v4, "removeElement":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    iget-object v5, v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    # getter for: Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mShortComponentName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->access$3900(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_66} :catch_69

    .line 2266
    nop

    .end local v4    # "removeElement":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    goto :goto_4d

    .line 2272
    .end local v0    # "newElement":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    :cond_68
    goto :goto_6a

    .line 2269
    :catch_69
    move-exception v0

    .line 2276
    :goto_6a
    return-void
.end method

.method private checkStatus()Z
    .registers 2

    .line 2134
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private clear()V
    .registers 2

    .line 2142
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2143
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->init()V

    .line 2145
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2146
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 2147
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2407
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2408
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->init()V

    .line 2410
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    .line 2411
    .local v1, "e":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    # invokes: Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->toDumpString()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->access$8000(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v1    # "e":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    goto :goto_f

    .line 2415
    :cond_23
    return-void
.end method

.method private get(Ljava/lang/String;)Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    .registers 3
    .param p1, "shortComponentName"    # Ljava/lang/String;

    .line 2154
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2155
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->init()V

    .line 2157
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2158
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    return-object v0

    .line 2160
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAverageLaunchTime(Ljava/lang/String;)J
    .registers 5
    .param p1, "shortComponentName"    # Ljava/lang/String;

    .line 2165
    invoke-direct {p0, p1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->get(Ljava/lang/String;)Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    move-result-object v0

    .line 2166
    .local v0, "element":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    if-eqz v0, :cond_b

    .line 2167
    # getter for: Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAverageLaunchTime:J
    invoke-static {v0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->access$2300(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v1

    return-wide v1

    .line 2169
    :cond_b
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private getElementListForPeriodicLaunchReport(J)Ljava/util/LinkedList;
    .registers 9
    .param p1, "reportCount"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;",
            ">;"
        }
    .end annotation

    .line 2331
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2332
    .local v0, "sortedElementList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;>;"
    iget-object v1, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 2334
    new-instance v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$1;-><init>(Lcom/android/server/wm/SluggishDetector$AgingDataQueue;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2341
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 2342
    .local v1, "reportElementList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;>;"
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    .line 2343
    .local v3, "e":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2344
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, p1

    if-ltz v4, :cond_34

    .line 2345
    goto :goto_35

    .line 2346
    .end local v3    # "e":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    :cond_34
    goto :goto_1b

    .line 2351
    :cond_35
    :goto_35
    return-object v1
.end method

.method private getElementListForPeriodicMemoryReport(JJ)Ljava/util/LinkedList;
    .registers 12
    .param p1, "reportCount"    # J
    .param p3, "subListCount"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;",
            ">;"
        }
    .end annotation

    .line 2362
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2363
    .local v0, "sortedBySizeElementList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;>;"
    iget-object v1, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 2365
    new-instance v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$2;-><init>(Lcom/android/server/wm/SluggishDetector$AgingDataQueue;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2372
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 2373
    .local v1, "sortedBySlopeElementList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_32

    int-to-long v3, v2

    cmp-long v3, v3, p3

    if-gez v3, :cond_32

    .line 2374
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    .line 2375
    .local v3, "e":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    # invokes: Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->refreshPssSlope()V
    invoke-static {v3}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->access$7800(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)V

    .line 2376
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2373
    .end local v3    # "e":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 2379
    .end local v2    # "i":I
    :cond_32
    new-instance v2, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$3;

    invoke-direct {v2, p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$3;-><init>(Lcom/android/server/wm/SluggishDetector$AgingDataQueue;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2386
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 2387
    .local v2, "reportElementList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;>;"
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    .line 2388
    .local v4, "e":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2389
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v5, p1

    if-ltz v5, :cond_5c

    .line 2390
    goto :goto_5d

    .line 2391
    .end local v4    # "e":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    :cond_5c
    goto :goto_43

    .line 2396
    :cond_5d
    :goto_5d
    return-object v2
.end method

.method private init()V
    .registers 2

    .line 2125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    .line 2126
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    .line 2127
    return-void
.end method
