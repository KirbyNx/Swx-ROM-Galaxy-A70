.class public Lcom/android/server/am/kpm/ComponentCallCounterDefault;
.super Ljava/lang/Object;
.source "ComponentCallCounterDefault.java"

# interfaces
.implements Lcom/android/server/am/kpm/ComponentCallCounter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/kpm/ComponentCallCounterDefault$LazyHolder;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "ComponentCallCounterDefault"


# instance fields
.field protected final mCallCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/kpm/CallCount;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTimeMillis:J


# direct methods
.method constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/kpm/ComponentCallCounterDefault;->mCallCountMap:Ljava/util/Map;

    .line 59
    invoke-virtual {p0}, Lcom/android/server/am/kpm/ComponentCallCounterDefault;->clear()V

    .line 60
    return-void
.end method

.method public static getInstance()Lcom/android/server/am/kpm/ComponentCallCounterDefault;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/server/am/kpm/ComponentCallCounterDefault$LazyHolder;->INSTANCE:Lcom/android/server/am/kpm/ComponentCallCounterDefault;

    return-object v0
.end method

.method static synthetic lambda$countActivity$3(Ljava/lang/String;)Lcom/android/server/am/kpm/CallCount;
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .line 137
    new-instance v0, Lcom/android/server/am/kpm/CallCount;

    invoke-direct {v0}, Lcom/android/server/am/kpm/CallCount;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$countBroadcast$2(Ljava/lang/String;)Lcom/android/server/am/kpm/CallCount;
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .line 118
    new-instance v0, Lcom/android/server/am/kpm/CallCount;

    invoke-direct {v0}, Lcom/android/server/am/kpm/CallCount;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$countContentProvider$5(Ljava/lang/String;)Lcom/android/server/am/kpm/CallCount;
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .line 175
    new-instance v0, Lcom/android/server/am/kpm/CallCount;

    invoke-direct {v0}, Lcom/android/server/am/kpm/CallCount;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$countService$4(Ljava/lang/String;)Lcom/android/server/am/kpm/CallCount;
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .line 156
    new-instance v0, Lcom/android/server/am/kpm/CallCount;

    invoke-direct {v0}, Lcom/android/server/am/kpm/CallCount;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$dump$6(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 4
    .param p0, "entryA"    # Ljava/util/Map$Entry;
    .param p1, "entryB"    # Ljava/util/Map$Entry;

    .line 186
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/kpm/CallCount;

    invoke-virtual {v0}, Lcom/android/server/am/kpm/CallCount;->getTotalCount()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/kpm/CallCount;

    invoke-virtual {v1}, Lcom/android/server/am/kpm/CallCount;->getTotalCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic lambda$dump$7(Ljava/io/PrintWriter;Ljava/util/Map$Entry;)V
    .registers 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "entry"    # Ljava/util/Map$Entry;

    .line 188
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/kpm/CallCount;

    invoke-virtual {v1}, Lcom/android/server/am/kpm/CallCount;->getActivityCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 189
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/kpm/CallCount;

    invoke-virtual {v1}, Lcom/android/server/am/kpm/CallCount;->getBroadcastCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/kpm/CallCount;

    invoke-virtual {v1}, Lcom/android/server/am/kpm/CallCount;->getContentProviderCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 190
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/kpm/CallCount;

    invoke-virtual {v1}, Lcom/android/server/am/kpm/CallCount;->getServiceCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 188
    const-string v1, " %50.50s %10d %10d %10d %10d"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 191
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 192
    return-void
.end method

.method static synthetic lambda$toList$1(Ljava/util/List;Ljava/util/Map$Entry;)V
    .registers 5
    .param p0, "list"    # Ljava/util/List;
    .param p1, "entry"    # Ljava/util/Map$Entry;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/kpm/CallCount;

    invoke-virtual {v2}, Lcom/android/server/am/kpm/CallCount;->getActivityCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/kpm/CallCount;

    invoke-virtual {v2}, Lcom/android/server/am/kpm/CallCount;->getBroadcastCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/kpm/CallCount;

    invoke-virtual {v2}, Lcom/android/server/am/kpm/CallCount;->getContentProviderCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/kpm/CallCount;

    invoke-virtual {v1}, Lcom/android/server/am/kpm/CallCount;->getServiceCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method static synthetic lambda$toMap$0(Ljava/util/Map;Ljava/util/Map$Entry;)V
    .registers 4
    .param p0, "newMap"    # Ljava/util/Map;
    .param p1, "entry"    # Ljava/util/Map$Entry;

    .line 77
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/kpm/CallCount;

    invoke-virtual {v1}, Lcom/android/server/am/kpm/CallCount;->deepCopy()Lcom/android/server/am/kpm/CallCount;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 64
    monitor-enter p0

    .line 65
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/kpm/ComponentCallCounterDefault;->mStartTimeMillis:J

    .line 66
    iget-object v0, p0, Lcom/android/server/am/kpm/ComponentCallCounterDefault;->mCallCountMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 67
    monitor-exit p0

    .line 68
    return-void

    .line 67
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public countActivity(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 125
    if-nez p1, :cond_3

    .line 129
    return-void

    .line 132
    :cond_3
    monitor-enter p0

    .line 136
    :try_start_4
    iget-object v0, p0, Lcom/android/server/am/kpm/ComponentCallCounterDefault;->mCallCountMap:Ljava/util/Map;

    sget-object v1, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$kjablgNtoJlOlo8hGZ58vGO8hns;->INSTANCE:Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$kjablgNtoJlOlo8hGZ58vGO8hns;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/kpm/CallCount;

    .line 138
    .local v0, "callCount":Lcom/android/server/am/kpm/CallCount;
    invoke-virtual {v0}, Lcom/android/server/am/kpm/CallCount;->incrementActivityCount()V

    .line 139
    .end local v0    # "callCount":Lcom/android/server/am/kpm/CallCount;
    monitor-exit p0

    .line 140
    return-void

    .line 139
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public countBroadcast(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 106
    if-nez p1, :cond_3

    .line 110
    return-void

    .line 113
    :cond_3
    monitor-enter p0

    .line 117
    :try_start_4
    iget-object v0, p0, Lcom/android/server/am/kpm/ComponentCallCounterDefault;->mCallCountMap:Ljava/util/Map;

    sget-object v1, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$p0gP0392VjOA5eM3WUBCZoCPli8;->INSTANCE:Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$p0gP0392VjOA5eM3WUBCZoCPli8;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/kpm/CallCount;

    .line 119
    .local v0, "callCount":Lcom/android/server/am/kpm/CallCount;
    invoke-virtual {v0}, Lcom/android/server/am/kpm/CallCount;->incrementBroadcastCount()V

    .line 120
    .end local v0    # "callCount":Lcom/android/server/am/kpm/CallCount;
    monitor-exit p0

    .line 121
    return-void

    .line 120
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public countContentProvider(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 163
    if-nez p1, :cond_3

    .line 167
    return-void

    .line 170
    :cond_3
    monitor-enter p0

    .line 174
    :try_start_4
    iget-object v0, p0, Lcom/android/server/am/kpm/ComponentCallCounterDefault;->mCallCountMap:Ljava/util/Map;

    sget-object v1, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$J_9YfDjFOwqN1rXeXyABhBF1hSs;->INSTANCE:Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$J_9YfDjFOwqN1rXeXyABhBF1hSs;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/kpm/CallCount;

    .line 176
    .local v0, "callCount":Lcom/android/server/am/kpm/CallCount;
    invoke-virtual {v0}, Lcom/android/server/am/kpm/CallCount;->incrementContentProviderCount()V

    .line 177
    .end local v0    # "callCount":Lcom/android/server/am/kpm/CallCount;
    monitor-exit p0

    .line 178
    return-void

    .line 177
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public countService(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 144
    if-nez p1, :cond_3

    .line 148
    return-void

    .line 151
    :cond_3
    monitor-enter p0

    .line 155
    :try_start_4
    iget-object v0, p0, Lcom/android/server/am/kpm/ComponentCallCounterDefault;->mCallCountMap:Ljava/util/Map;

    sget-object v1, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$LV9JhPNtgT1sszJZ0mF4WE_PR9U;->INSTANCE:Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$LV9JhPNtgT1sszJZ0mF4WE_PR9U;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/kpm/CallCount;

    .line 157
    .local v0, "callCount":Lcom/android/server/am/kpm/CallCount;
    invoke-virtual {v0}, Lcom/android/server/am/kpm/CallCount;->incrementServiceCount()V

    .line 158
    .end local v0    # "callCount":Lcom/android/server/am/kpm/CallCount;
    monitor-exit p0

    .line 159
    return-void

    .line 158
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 181
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "formatter":Ljava/text/DateFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Component Call Count: (Since "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/am/kpm/ComponentCallCounterDefault;->mStartTimeMillis:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    const-string v1, " [                                      packageName,  activity, broadcast, cprovider,   service]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/server/am/kpm/ComponentCallCounterDefault;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 185
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$wbI7_lB6D4jM1wCAkHi_MRoZ--w;->INSTANCE:Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$wbI7_lB6D4jM1wCAkHi_MRoZ--w;

    .line 186
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$eaSzhrmFu8kKjMz54vTgJF2QKVs;

    invoke-direct {v2, p1}, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$eaSzhrmFu8kKjMz54vTgJF2QKVs;-><init>(Ljava/io/PrintWriter;)V

    .line 187
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 193
    return-void
.end method

.method public getStartTimeMillis()J
    .registers 3

    .line 101
    iget-wide v0, p0, Lcom/android/server/am/kpm/ComponentCallCounterDefault;->mStartTimeMillis:J

    return-wide v0
.end method

.method public toList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 88
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/kpm/ComponentCallCounterDefault;->mCallCountMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$TWpHB9dua8TywAWb1f5yT5Wuxkg;

    invoke-direct {v2, v0}, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$TWpHB9dua8TywAWb1f5yT5Wuxkg;-><init>(Ljava/util/List;)V

    .line 89
    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 95
    monitor-exit p0

    .line 96
    return-object v0

    .line 95
    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public toMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/kpm/CallCount;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 74
    .local v0, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/am/kpm/CallCount;>;"
    monitor-enter p0

    .line 75
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/kpm/ComponentCallCounterDefault;->mCallCountMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$t5io8xLw-y-yEq58rI5CzIB-a0o;

    invoke-direct {v2, v0}, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$t5io8xLw-y-yEq58rI5CzIB-a0o;-><init>(Ljava/util/Map;)V

    .line 76
    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 79
    monitor-exit p0

    .line 80
    return-object v0

    .line 79
    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_16

    throw v1
.end method
