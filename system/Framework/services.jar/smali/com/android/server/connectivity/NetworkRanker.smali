.class public Lcom/android/server/connectivity/NetworkRanker;
.super Ljava/lang/Object;
.source "NetworkRanker.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBestNetwork(Landroid/net/NetworkRequest;Ljava/util/Collection;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 8
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkRequest;",
            "Ljava/util/Collection<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;)",
            "Lcom/android/server/connectivity/NetworkAgentInfo;"
        }
    .end annotation

    .line 39
    .local p2, "nais":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    const/4 v0, 0x0

    .line 40
    .local v0, "bestNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    const/high16 v1, -0x80000000

    .line 41
    .local v1, "bestScore":I
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 42
    .local v3, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_7

    .line 43
    :cond_1a
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v4

    if-le v4, v1, :cond_25

    .line 44
    move-object v0, v3

    .line 45
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    .line 47
    .end local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_25
    goto :goto_7

    .line 48
    :cond_26
    return-object v0
.end method
