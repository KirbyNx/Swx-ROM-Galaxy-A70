.class public Lcom/android/server/wm/CoreLiveLog$StatisticPool;
.super Ljava/lang/Object;
.source "CoreLiveLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/CoreLiveLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatisticPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;
    }
.end annotation


# static fields
.field private static final SYSTEMUI_WINDOWS:[Ljava/lang/String;

.field private static sInstance:Lcom/android/server/wm/CoreLiveLog$StatisticPool;


# instance fields
.field private pool:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 146
    const-string v0, "StatusBar"

    const-string v1, "NavigationBar"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/CoreLiveLog$StatisticPool;->SYSTEMUI_WINDOWS:[Ljava/lang/String;

    .line 147
    new-instance v0, Lcom/android/server/wm/CoreLiveLog$StatisticPool;

    invoke-direct {v0}, Lcom/android/server/wm/CoreLiveLog$StatisticPool;-><init>()V

    sput-object v0, Lcom/android/server/wm/CoreLiveLog$StatisticPool;->sInstance:Lcom/android/server/wm/CoreLiveLog$StatisticPool;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool;->pool:Ljava/util/concurrent/ConcurrentHashMap;

    .line 151
    const-string v0, "STAT_ROTATION"

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/CoreLiveLog$StatisticPool;->addStatistic(Ljava/lang/String;I)V

    .line 152
    const-string v0, "STAT_HOME_LAUNCH"

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/CoreLiveLog$StatisticPool;->addStatistic(Ljava/lang/String;I)V

    .line 153
    return-void
.end method

.method public static getInstance()Lcom/android/server/wm/CoreLiveLog$StatisticPool;
    .registers 1

    .line 160
    sget-object v0, Lcom/android/server/wm/CoreLiveLog$StatisticPool;->sInstance:Lcom/android/server/wm/CoreLiveLog$StatisticPool;

    return-object v0
.end method

.method public static isSystemUIWindowName(Ljava/lang/String;)Z
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/server/wm/CoreLiveLog$StatisticPool;->SYSTEMUI_WINDOWS:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_13

    .line 229
    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 230
    const/4 v1, 0x1

    return v1

    .line 228
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 233
    .end local v0    # "i":I
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$addArithmeticData$0(Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;)V
    .registers 3
    .param p0, "item"    # Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;

    .line 254
    # invokes: Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->calculate()V
    invoke-static {p0}, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->access$200(Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;)V

    .line 255
    iget-object v0, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mRawData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 256
    new-instance v0, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;

    invoke-direct {v0}, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;-><init>()V

    .line 257
    invoke-virtual {p0}, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-virtual {v0, v1}, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->addStaticMessage(Ljava/lang/String;)Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lcom/android/server/wm/CoreLiveLog$SnapshotBuilder;->build()Lcom/android/server/wm/CoreLiveLog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/CoreLiveLog;->sendLogImmediate(Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .line 156
    # setter for: Lcom/android/server/wm/CoreLiveLog;->sContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/server/wm/CoreLiveLog;->access$002(Landroid/content/Context;)Landroid/content/Context;

    .line 157
    return-void
.end method


# virtual methods
.method public addArithmeticData(Ljava/lang/String;J)V
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "raw"    # J

    .line 246
    iget-object v0, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool;->pool:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;

    .line 247
    .local v0, "item":Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;
    if-nez v0, :cond_21

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CoreLiveLog"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void

    .line 251
    :cond_21
    iget-object v1, v0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mRawData:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v1, v0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mRawData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, v0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mInterval:I

    if-lt v1, v2, :cond_3c

    .line 253
    new-instance v1, Lcom/android/server/wm/-$$Lambda$CoreLiveLog$StatisticPool$z7GJRl5y3o8kMQfhdlUbFcItY1E;

    invoke-direct {v1, v0}, Lcom/android/server/wm/-$$Lambda$CoreLiveLog$StatisticPool$z7GJRl5y3o8kMQfhdlUbFcItY1E;-><init>(Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;)V

    invoke-static {v1}, Lcom/android/server/wm/CoreLiveLogUtil;->sendLogAsync(Ljava/lang/Runnable;)V

    .line 260
    :cond_3c
    return-void
.end method

.method public addCountableData(Ljava/lang/String;I)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "count"    # I

    .line 237
    iget-object v0, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool;->pool:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;

    .line 238
    .local v0, "item":Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;
    if-nez v0, :cond_21

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CoreLiveLog"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void

    .line 242
    :cond_21
    iget v1, v0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mCount:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mCount:I

    .line 243
    return-void
.end method

.method public addStatistic(Ljava/lang/String;I)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "interval"    # I

    .line 222
    new-instance v0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;-><init>(Ljava/lang/String;I)V

    .line 223
    .local v0, "item":Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;
    iput-object p1, v0, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->mTag:Ljava/lang/String;

    .line 224
    iget-object v1, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool;->pool:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void
.end method

.method public dump()V
    .registers 5

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/CoreLiveLog$StatisticPool;->pool:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 165
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;

    invoke-virtual {v3}, Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;->rawString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CoreLiveLog"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wm/CoreLiveLog$StatisticPool$StatisticItem;>;"
    goto :goto_a

    .line 167
    :cond_46
    return-void
.end method
