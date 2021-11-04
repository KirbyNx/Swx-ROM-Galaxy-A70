.class public final synthetic Lcom/android/server/-$$Lambda$ConnectivityService$t1mYcCbtO5lgy_Un4Lu06DPPVig;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ConnectivityService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/connectivity/NetworkAgentInfo;

.field public final synthetic f$3:Landroid/net/util/SharedLog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/util/SharedLog;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$ConnectivityService$t1mYcCbtO5lgy_Un4Lu06DPPVig;->f$0:Lcom/android/server/ConnectivityService;

    iput p2, p0, Lcom/android/server/-$$Lambda$ConnectivityService$t1mYcCbtO5lgy_Un4Lu06DPPVig;->f$1:I

    iput-object p3, p0, Lcom/android/server/-$$Lambda$ConnectivityService$t1mYcCbtO5lgy_Un4Lu06DPPVig;->f$2:Lcom/android/server/connectivity/NetworkAgentInfo;

    iput-object p4, p0, Lcom/android/server/-$$Lambda$ConnectivityService$t1mYcCbtO5lgy_Un4Lu06DPPVig;->f$3:Landroid/net/util/SharedLog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/-$$Lambda$ConnectivityService$t1mYcCbtO5lgy_Un4Lu06DPPVig;->f$0:Lcom/android/server/ConnectivityService;

    iget v1, p0, Lcom/android/server/-$$Lambda$ConnectivityService$t1mYcCbtO5lgy_Un4Lu06DPPVig;->f$1:I

    iget-object v2, p0, Lcom/android/server/-$$Lambda$ConnectivityService$t1mYcCbtO5lgy_Un4Lu06DPPVig;->f$2:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, p0, Lcom/android/server/-$$Lambda$ConnectivityService$t1mYcCbtO5lgy_Un4Lu06DPPVig;->f$3:Landroid/net/util/SharedLog;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->lambda$registerNetworkAgent$9$ConnectivityService(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/util/SharedLog;)V

    return-void
.end method
