.class Lcom/android/server/wm/BlockListManager;
.super Ljava/lang/Object;
.source "PackageConfigurationController.java"


# instance fields
.field final mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/PolicyDataMap;",
            ">;"
        }
    .end annotation
.end field

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 735
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BlockListManager;->mLock:Ljava/lang/Object;

    .line 736
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BlockListManager;->mList:Ljava/util/ArrayList;

    .line 738
    new-instance v0, Lcom/android/server/wm/-$$Lambda$K2tNN-61JwTz4NJRVlyiaT5DrKs;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$K2tNN-61JwTz4NJRVlyiaT5DrKs;-><init>(Lcom/android/server/wm/BlockListManager;)V

    iput-object v0, p0, Lcom/android/server/wm/BlockListManager;->mCallback:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public isBlockListed(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 748
    iget-object v0, p0, Lcom/android/server/wm/BlockListManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 749
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/BlockListManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 750
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method updateBlockList(Lcom/android/server/wm/PolicyDataMap;)V
    .registers 5
    .param p1, "policyDataMap"    # Lcom/android/server/wm/PolicyDataMap;

    .line 741
    iget-object v0, p0, Lcom/android/server/wm/BlockListManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 742
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/BlockListManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 743
    iget-object v1, p0, Lcom/android/server/wm/BlockListManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/wm/PolicyDataMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 744
    monitor-exit v0

    .line 745
    return-void

    .line 744
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method
