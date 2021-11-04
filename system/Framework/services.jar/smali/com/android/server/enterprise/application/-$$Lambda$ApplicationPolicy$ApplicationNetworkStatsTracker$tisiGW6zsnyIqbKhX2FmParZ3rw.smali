.class public final synthetic Lcom/android/server/enterprise/application/-$$Lambda$ApplicationPolicy$ApplicationNetworkStatsTracker$tisiGW6zsnyIqbKhX2FmParZ3rw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Hashtable;

.field public final synthetic f$1:Ljava/util/Hashtable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/application/-$$Lambda$ApplicationPolicy$ApplicationNetworkStatsTracker$tisiGW6zsnyIqbKhX2FmParZ3rw;->f$0:Ljava/util/Hashtable;

    iput-object p2, p0, Lcom/android/server/enterprise/application/-$$Lambda$ApplicationPolicy$ApplicationNetworkStatsTracker$tisiGW6zsnyIqbKhX2FmParZ3rw;->f$1:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/application/-$$Lambda$ApplicationPolicy$ApplicationNetworkStatsTracker$tisiGW6zsnyIqbKhX2FmParZ3rw;->f$0:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/android/server/enterprise/application/-$$Lambda$ApplicationPolicy$ApplicationNetworkStatsTracker$tisiGW6zsnyIqbKhX2FmParZ3rw;->f$1:Ljava/util/Hashtable;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/samsung/android/knox/application/NetworkStats;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->lambda$calculateTotalUsage$1(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;)V

    return-void
.end method
