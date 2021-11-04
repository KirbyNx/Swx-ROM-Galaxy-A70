.class final Lcom/android/server/am/Pageboost$LRUPolicy;
.super Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LRUPolicy"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 968
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;-><init>(Lcom/android/server/am/Pageboost$1;)V

    .line 969
    return-void
.end method


# virtual methods
.method appFilter(Lcom/android/server/am/Pageboost$PageboostAppList;I)Lcom/android/server/am/Pageboost$PageboostAppList;
    .registers 11
    .param p1, "allowed"    # Lcom/android/server/am/Pageboost$PageboostAppList;
    .param p2, "predict_num"    # I

    .line 972
    const/4 v0, 0x0

    .line 973
    .local v0, "i":I
    new-instance v1, Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-direct {v1}, Lcom/android/server/am/Pageboost$PageboostAppList;-><init>()V

    .line 974
    .local v1, "filtered":Lcom/android/server/am/Pageboost$PageboostAppList;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 975
    .local v2, "strs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 977
    :try_start_e
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$500()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v4

    if-eqz v4, :cond_67

    .line 978
    iget-object v4, p1, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_6d

    .line 979
    :try_start_17
    invoke-virtual {p1}, Lcom/android/server/am/Pageboost$PageboostAppList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 980
    .local v6, "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    iget-object v7, v6, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 981
    .end local v6    # "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    :cond_2d
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_64

    .line 982
    :try_start_2e
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$500()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_6d

    .line 983
    :try_start_35
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$500()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/Pageboost$PageboostAppList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 988
    .restart local v6    # "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    invoke-virtual {p1, v6}, Lcom/android/server/am/Pageboost$PageboostAppList;->contains(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v7

    if-eqz v7, :cond_5e

    invoke-virtual {v6}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->alive()Z

    move-result v7

    if-nez v7, :cond_5e

    .line 989
    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    .line 990
    add-int/lit8 v0, v0, 0x1

    if-ne v0, p2, :cond_5e

    .line 991
    goto :goto_5f

    .line 994
    .end local v6    # "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    :cond_5e
    goto :goto_3d

    .line 995
    :cond_5f
    :goto_5f
    monitor-exit v4

    goto :goto_67

    :catchall_61
    move-exception v5

    monitor-exit v4
    :try_end_63
    .catchall {:try_start_35 .. :try_end_63} :catchall_61

    .end local v0    # "i":I
    .end local v1    # "filtered":Lcom/android/server/am/Pageboost$PageboostAppList;
    .end local v2    # "strs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/am/Pageboost$LRUPolicy;
    .end local p1    # "allowed":Lcom/android/server/am/Pageboost$PageboostAppList;
    .end local p2    # "predict_num":I
    :try_start_63
    throw v5
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_6d

    .line 981
    .restart local v0    # "i":I
    .restart local v1    # "filtered":Lcom/android/server/am/Pageboost$PageboostAppList;
    .restart local v2    # "strs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/am/Pageboost$LRUPolicy;
    .restart local p1    # "allowed":Lcom/android/server/am/Pageboost$PageboostAppList;
    .restart local p2    # "predict_num":I
    :catchall_64
    move-exception v5

    :try_start_65
    monitor-exit v4
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    .end local v0    # "i":I
    .end local v1    # "filtered":Lcom/android/server/am/Pageboost$PageboostAppList;
    .end local v2    # "strs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/am/Pageboost$LRUPolicy;
    .end local p1    # "allowed":Lcom/android/server/am/Pageboost$PageboostAppList;
    .end local p2    # "predict_num":I
    :try_start_66
    throw v5

    .line 997
    .restart local v0    # "i":I
    .restart local v1    # "filtered":Lcom/android/server/am/Pageboost$PageboostAppList;
    .restart local v2    # "strs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/am/Pageboost$LRUPolicy;
    .restart local p1    # "allowed":Lcom/android/server/am/Pageboost$PageboostAppList;
    .restart local p2    # "predict_num":I
    :cond_67
    :goto_67
    iput-object v2, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    .line 998
    iput-object v1, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 999
    monitor-exit v3

    .line 1000
    return-object v1

    .line 999
    :catchall_6d
    move-exception v4

    monitor-exit v3
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_6d

    throw v4
.end method

.method judgePredict(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z
    .registers 8
    .param p1, "executed"    # Lcom/android/server/am/Pageboost$PageboostAppInfo;
    .param p2, "launchtime"    # I

    .line 1005
    const/4 v0, 0x0

    .line 1006
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1007
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-eqz v2, :cond_29

    .line 1008
    iget-object v2, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    iget-object v2, v2, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_30

    .line 1009
    :try_start_d
    iget-object v3, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v3}, Lcom/android/server/am/Pageboost$PageboostAppList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 1010
    .local v4, "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    if-ne v4, p1, :cond_23

    .line 1011
    const/4 v0, 0x1

    .line 1012
    goto :goto_24

    .line 1014
    .end local v4    # "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    :cond_23
    goto :goto_13

    .line 1015
    :cond_24
    :goto_24
    monitor-exit v2

    goto :goto_29

    :catchall_26
    move-exception v3

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_26

    .end local v0    # "ret":Z
    .end local p0    # "this":Lcom/android/server/am/Pageboost$LRUPolicy;
    .end local p1    # "executed":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    .end local p2    # "launchtime":I
    :try_start_28
    throw v3

    .line 1018
    .restart local v0    # "ret":Z
    .restart local p0    # "this":Lcom/android/server/am/Pageboost$LRUPolicy;
    .restart local p1    # "executed":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    .restart local p2    # "launchtime":I
    :cond_29
    :goto_29
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    .line 1019
    iput-object v2, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 1020
    monitor-exit v1

    .line 1021
    return v0

    .line 1020
    :catchall_30
    move-exception v2

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_30

    throw v2
.end method
