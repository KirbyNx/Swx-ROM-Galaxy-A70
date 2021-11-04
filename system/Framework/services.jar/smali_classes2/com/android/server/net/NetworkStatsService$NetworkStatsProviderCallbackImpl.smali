.class Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;
.super Landroid/net/netstats/provider/INetworkStatsProviderCallback$Stub;
.source "NetworkStatsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkStatsProviderCallbackImpl"
.end annotation


# instance fields
.field final mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mIfaceStats:Landroid/net/NetworkStats;

.field final mProvider:Landroid/net/netstats/provider/INetworkStatsProvider;

.field private final mProviderStatsLock:Ljava/lang/Object;

.field private final mSemaphore:Ljava/util/concurrent/Semaphore;

.field final mStatsProviderCbList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;",
            ">;"
        }
    .end annotation
.end field

.field final mTag:Ljava/lang/String;

.field private final mUidStats:Landroid/net/NetworkStats;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/net/netstats/provider/INetworkStatsProvider;Ljava/util/concurrent/Semaphore;Landroid/net/INetworkManagementEventObserver;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .registers 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "provider"    # Landroid/net/netstats/provider/INetworkStatsProvider;
    .param p3, "semaphore"    # Ljava/util/concurrent/Semaphore;
    .param p4, "alertObserver"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/netstats/provider/INetworkStatsProvider;",
            "Ljava/util/concurrent/Semaphore;",
            "Landroid/net/INetworkManagementEventObserver;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2051
    .local p5, "cbList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;>;"
    invoke-direct {p0}, Landroid/net/netstats/provider/INetworkStatsProviderCallback$Stub;-><init>()V

    .line 2038
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mProviderStatsLock:Ljava/lang/Object;

    .line 2040
    new-instance v0, Landroid/net/NetworkStats;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mIfaceStats:Landroid/net/NetworkStats;

    .line 2043
    new-instance v0, Landroid/net/NetworkStats;

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mUidStats:Landroid/net/NetworkStats;

    .line 2052
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mTag:Ljava/lang/String;

    .line 2053
    iput-object p2, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mProvider:Landroid/net/netstats/provider/INetworkStatsProvider;

    .line 2054
    invoke-interface {p2}, Landroid/net/netstats/provider/INetworkStatsProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2055
    iput-object p3, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 2056
    iput-object p4, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 2057
    iput-object p5, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mStatsProviderCbList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2058
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 2106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": binderDied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mStatsProviderCbList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 2108
    return-void
.end method

.method public getCachedStats(I)Landroid/net/NetworkStats;
    .registers 6
    .param p1, "how"    # I

    .line 2062
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mProviderStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2064
    if-eqz p1, :cond_22

    const/4 v1, 0x1

    if-ne p1, v1, :cond_b

    .line 2069
    :try_start_8
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mUidStats:Landroid/net/NetworkStats;

    .line 2070
    .local v1, "stats":Landroid/net/NetworkStats;
    goto :goto_25

    .line 2072
    .end local v1    # "stats":Landroid/net/NetworkStats;
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;
    .end local p1    # "how":I
    throw v1

    .line 2066
    .restart local p0    # "this":Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;
    .restart local p1    # "how":I
    :cond_22
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mIfaceStats:Landroid/net/NetworkStats;

    .line 2067
    .restart local v1    # "stats":Landroid/net/NetworkStats;
    nop

    .line 2076
    :goto_25
    invoke-virtual {v1}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 2077
    .end local v1    # "stats":Landroid/net/NetworkStats;
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public notifyAlertReached()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2094
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    const-string/jumbo v1, "globalAlert"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/net/INetworkManagementEventObserver;->limitReached(Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    return-void
.end method

.method public notifyLimitReached()V
    .registers 3

    .line 2099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": onLimitReached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mTag:Ljava/lang/String;

    .line 2101
    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->onStatsProviderLimitReached(Ljava/lang/String;)V

    .line 2102
    return-void
.end method

.method public notifyStatsUpdated(ILandroid/net/NetworkStats;Landroid/net/NetworkStats;)V
    .registers 6
    .param p1, "token"    # I
    .param p2, "ifaceStats"    # Landroid/net/NetworkStats;
    .param p3, "uidStats"    # Landroid/net/NetworkStats;

    .line 2085
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mProviderStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2086
    if-eqz p2, :cond_d

    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mIfaceStats:Landroid/net/NetworkStats;

    invoke-virtual {v1, p2}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    goto :goto_d

    .line 2088
    :catchall_b
    move-exception v1

    goto :goto_1b

    .line 2087
    :cond_d
    :goto_d
    if-eqz p3, :cond_14

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mUidStats:Landroid/net/NetworkStats;

    invoke-virtual {v1, p3}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 2088
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_b

    .line 2089
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2090
    return-void

    .line 2088
    :goto_1b
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_b

    throw v1
.end method

.method public unregister()V
    .registers 3

    .line 2112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": unregister"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mStatsProviderCbList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 2114
    return-void
.end method
