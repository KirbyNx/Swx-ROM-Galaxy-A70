.class public Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;
.super Landroid/database/ContentObserver;
.source "UnionContentObserver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "service"    # Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 20
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 21
    iput-object p2, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 22
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 21
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 26
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    sget-object v0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnionContentObserver onChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, v1, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-virtual {v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v9

    .line 30
    .local v9, "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    const/4 v2, 0x0

    .line 31
    .local v2, "uriCloneMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;>;"
    iget-object v0, v1, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    iget-object v3, v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 32
    :try_start_26
    iget-object v0, v9, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_126

    move-object v10, v0

    .line 33
    .end local v2    # "uriCloneMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;>;"
    .local v10, "uriCloneMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;>;"
    :try_start_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_123

    .line 34
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 36
    .local v0, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;>;>;"
    if-eqz v0, :cond_11a

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_11a

    .line 37
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_40
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_119

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/util/Map$Entry;

    .line 38
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/net/Uri;

    .line 39
    .local v13, "uriElement":Landroid/net/Uri;
    invoke-virtual {v13, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 40
    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 41
    .local v14, "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    if-eqz v14, :cond_78

    .line 42
    sget-object v2, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->TAG:Ljava/lang/String;

    const-string v3, "Uri matches exactly. Reporting chagnes..."

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    const/4 v7, 0x0

    move-object v3, v14

    move/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportUriChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ZLandroid/net/Uri;IZ)V

    goto :goto_94

    .line 45
    :cond_78
    sget-object v2, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "item for uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .end local v14    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    :goto_94
    goto/16 :goto_117

    .line 48
    :cond_96
    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    .line 49
    .local v14, "elementUriString":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    .line 51
    .local v15, "updatedUriString":Ljava/lang/String;
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 53
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 54
    .local v16, "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    if-eqz v16, :cond_bd

    .line 55
    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    const/4 v7, 0x0

    move-object/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportUriChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ZLandroid/net/Uri;IZ)V

    goto :goto_116

    .line 57
    :cond_bd
    sget-object v2, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "item for uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_116

    .line 59
    .end local v16    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    :cond_da
    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_116

    .line 61
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 62
    .restart local v16    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    if-eqz v16, :cond_f9

    .line 63
    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    const/4 v7, 0x1

    move-object/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportUriChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ZLandroid/net/Uri;IZ)V

    goto :goto_117

    .line 65
    :cond_f9
    sget-object v2, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "item for uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_117

    .line 59
    .end local v16    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    :cond_116
    :goto_116
    nop

    .line 69
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;>;"
    .end local v13    # "uriElement":Landroid/net/Uri;
    .end local v14    # "elementUriString":Ljava/lang/String;
    .end local v15    # "updatedUriString":Ljava/lang/String;
    :goto_117
    goto/16 :goto_40

    :cond_119
    goto :goto_122

    .line 71
    :cond_11a
    sget-object v2, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mUriEventMap has no item."

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_122
    return-void

    .line 33
    .end local v0    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;>;>;"
    :catchall_123
    move-exception v0

    move-object v2, v10

    goto :goto_127

    .end local v10    # "uriCloneMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;>;"
    .restart local v2    # "uriCloneMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;>;"
    :catchall_126
    move-exception v0

    :goto_127
    :try_start_127
    monitor-exit v3
    :try_end_128
    .catchall {:try_start_127 .. :try_end_128} :catchall_126

    throw v0
.end method
