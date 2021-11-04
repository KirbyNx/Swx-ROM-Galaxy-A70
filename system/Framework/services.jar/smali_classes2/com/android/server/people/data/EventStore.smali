.class Lcom/android/server/people/data/EventStore;
.super Ljava/lang/Object;
.source "EventStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/data/EventStore$EventCategory;
    }
.end annotation


# static fields
.field static final CATEGORY_CALL:I = 0x2

.field static final CATEGORY_CLASS_BASED:I = 0x4

.field static final CATEGORY_LOCUS_ID_BASED:I = 0x1

.field static final CATEGORY_SHORTCUT_BASED:I = 0x0

.field static final CATEGORY_SMS:I = 0x3


# instance fields
.field private final mEventHistoryMaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/EventHistoryImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mEventsCategoryDirs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 12
    .param p1, "packageDir"    # Ljava/io/File;
    .param p2, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventsCategoryDirs:Ljava/util/List;

    .line 74
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v4, 0x2

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v5, 0x3

    invoke-interface {v0, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v6, 0x4

    invoke-interface {v0, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 80
    new-instance v0, Ljava/io/File;

    const-string v1, "event"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    .local v0, "eventDir":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/people/data/EventStore;->mEventsCategoryDirs:Ljava/util/List;

    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "shortcut"

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v2, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 82
    iget-object v1, p0, Lcom/android/server/people/data/EventStore;->mEventsCategoryDirs:Ljava/util/List;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v7, "locus"

    invoke-direct {v2, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 83
    iget-object v1, p0, Lcom/android/server/people/data/EventStore;->mEventsCategoryDirs:Ljava/util/List;

    new-instance v2, Ljava/io/File;

    const-string v3, "call"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 84
    iget-object v1, p0, Lcom/android/server/people/data/EventStore;->mEventsCategoryDirs:Ljava/util/List;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "sms"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 85
    iget-object v1, p0, Lcom/android/server/people/data/EventStore;->mEventsCategoryDirs:Ljava/util/List;

    new-instance v2, Ljava/io/File;

    const-string v3, "class"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 87
    iput-object p2, p0, Lcom/android/server/people/data/EventStore;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 88
    return-void
.end method


# virtual methods
.method declared-synchronized deleteEventHistories(I)V
    .registers 4
    .param p1, "category"    # I

    monitor-enter p0

    .line 161
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/EventHistoryImpl;

    .line 162
    .local v1, "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    invoke-virtual {v1}, Lcom/android/server/people/data/EventHistoryImpl;->onDestroy()V

    .line 163
    .end local v1    # "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    goto :goto_11

    .line 164
    .end local p0    # "this":Lcom/android/server/people/data/EventStore;
    :cond_21
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 165
    monitor-exit p0

    return-void

    .line 160
    .end local p1    # "category":I
    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized deleteEventHistory(ILjava/lang/String;)V
    .registers 4
    .param p1, "category"    # I
    .param p2, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 153
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/EventHistoryImpl;

    .line 154
    .local v0, "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    if-eqz v0, :cond_14

    .line 155
    invoke-virtual {v0}, Lcom/android/server/people/data/EventHistoryImpl;->onDestroy()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 157
    .end local p0    # "this":Lcom/android/server/people/data/EventStore;
    :cond_14
    monitor-exit p0

    return-void

    .line 152
    .end local v0    # "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    .end local p1    # "category":I
    .end local p2    # "key":Ljava/lang/String;
    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;
    .registers 4
    .param p1, "category"    # I
    .param p2, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 127
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/EventHistory;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    .line 127
    .end local p0    # "this":Lcom/android/server/people/data/EventStore;
    .end local p1    # "category":I
    .end local p2    # "key":Ljava/lang/String;
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;
    .registers 5
    .param p1, "category"    # I
    .param p2, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 140
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lcom/android/server/people/data/-$$Lambda$EventStore$Wdeg-tsj4laxwiSP6mHBYZP59i0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/people/data/-$$Lambda$EventStore$Wdeg-tsj4laxwiSP6mHBYZP59i0;-><init>(Lcom/android/server/people/data/EventStore;ILjava/lang/String;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/EventHistoryImpl;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    .line 140
    .end local p0    # "this":Lcom/android/server/people/data/EventStore;
    .end local p1    # "category":I
    .end local p2    # "key":Ljava/lang/String;
    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic lambda$getOrCreateEventHistory$0$EventStore(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;
    .registers 8
    .param p1, "category"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "k"    # Ljava/lang/String;

    .line 141
    new-instance v0, Lcom/android/server/people/data/EventHistoryImpl;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/people/data/EventStore;->mEventsCategoryDirs:Ljava/util/List;

    .line 142
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/people/data/EventStore;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1, v2}, Lcom/android/server/people/data/EventHistoryImpl;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 141
    return-object v0
.end method

.method declared-synchronized loadFromDisk()V
    .registers 5

    monitor-enter p0

    .line 96
    const/4 v0, 0x0

    .local v0, "category":I
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/people/data/EventStore;->mEventsCategoryDirs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 98
    iget-object v1, p0, Lcom/android/server/people/data/EventStore;->mEventsCategoryDirs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 99
    .local v1, "categoryDir":Ljava/io/File;
    iget-object v2, p0, Lcom/android/server/people/data/EventStore;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 100
    invoke-static {v1, v2}, Lcom/android/server/people/data/EventHistoryImpl;->eventHistoriesImplFromDisk(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/Map;

    move-result-object v2

    .line 102
    .local v2, "existingEventHistoriesImpl":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/people/data/EventHistoryImpl;>;"
    iget-object v3, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_28

    .line 97
    .end local v1    # "categoryDir":Ljava/io/File;
    .end local v2    # "existingEventHistoriesImpl":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/people/data/EventHistoryImpl;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 104
    .end local v0    # "category":I
    .end local p0    # "this":Lcom/android/server/people/data/EventStore;
    :cond_26
    monitor-exit p0

    return-void

    .line 95
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onDestroy()V
    .registers 5

    monitor-enter p0

    .line 201
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 202
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/people/data/EventHistoryImpl;>;"
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/data/EventHistoryImpl;

    .line 203
    .local v3, "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    invoke-virtual {v3}, Lcom/android/server/people/data/EventHistoryImpl;->onDestroy()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2e

    .line 204
    .end local v3    # "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    goto :goto_1b

    .line 205
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/people/data/EventHistoryImpl;>;"
    .end local p0    # "this":Lcom/android/server/people/data/EventStore;
    :cond_2b
    goto :goto_7

    .line 206
    :cond_2c
    monitor-exit p0

    return-void

    .line 200
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized pruneOldEvents()V
    .registers 5

    monitor-enter p0

    .line 169
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 170
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/people/data/EventHistoryImpl;>;"
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/data/EventHistoryImpl;

    .line 171
    .local v3, "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    invoke-virtual {v3}, Lcom/android/server/people/data/EventHistoryImpl;->pruneOldEvents()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2e

    .line 172
    .end local v3    # "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    goto :goto_1b

    .line 173
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/people/data/EventHistoryImpl;>;"
    .end local p0    # "this":Lcom/android/server/people/data/EventStore;
    :cond_2b
    goto :goto_7

    .line 174
    :cond_2c
    monitor-exit p0

    return-void

    .line 168
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized pruneOrphanEventHistories(ILjava/util/function/Predicate;)V
    .registers 9
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p2, "keyChecker":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/String;>;"
    monitor-enter p0

    .line 184
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 185
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v1, "keysToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 187
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 188
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v3    # "key":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/people/data/EventStore;
    :cond_2b
    goto :goto_16

    .line 191
    :cond_2c
    iget-object v2, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 192
    .local v2, "eventHistoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/people/data/EventHistoryImpl;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 193
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/people/data/EventHistoryImpl;

    .line 194
    .local v5, "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    if-eqz v5, :cond_4f

    .line 195
    invoke-virtual {v5}, Lcom/android/server/people/data/EventHistoryImpl;->onDestroy()V
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_52

    .line 197
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    :cond_4f
    goto :goto_38

    .line 198
    :cond_50
    monitor-exit p0

    return-void

    .line 183
    .end local v0    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "keysToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "eventHistoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/people/data/EventHistoryImpl;>;"
    .end local p1    # "category":I
    .end local p2    # "keyChecker":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/String;>;"
    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized saveToDisk()V
    .registers 5

    monitor-enter p0

    .line 110
    :try_start_1
    const-string v0, "EventStore"

    const-string/jumbo v1, "saveToDisk: start"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 112
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/people/data/EventHistoryImpl;>;"
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/data/EventHistoryImpl;

    .line 113
    .local v3, "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    invoke-virtual {v3}, Lcom/android/server/people/data/EventHistoryImpl;->saveToDisk()V

    .line 114
    .end local v3    # "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    goto :goto_23

    .line 115
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/people/data/EventHistoryImpl;>;"
    .end local p0    # "this":Lcom/android/server/people/data/EventStore;
    :cond_33
    goto :goto_f

    .line 116
    :cond_34
    const-string v0, "EventStore"

    const-string/jumbo v1, "saveToDisk: end"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3e

    .line 117
    monitor-exit p0

    return-void

    .line 109
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
