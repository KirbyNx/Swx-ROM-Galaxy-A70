.class public final synthetic Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$ProbingState$LWnuE5N3W08Cq5hF_iBSEqp0cLA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$ProbingState$LWnuE5N3W08Cq5hF_iBSEqp0cLA;->f$0:Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;

    iput p2, p0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$ProbingState$LWnuE5N3W08Cq5hF_iBSEqp0cLA;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$ProbingState$LWnuE5N3W08Cq5hF_iBSEqp0cLA;->f$0:Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;

    iget v1, p0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$ProbingState$LWnuE5N3W08Cq5hF_iBSEqp0cLA;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;->lambda$enter$0$WifiNetworkMonitor$ProbingState(I)V

    return-void
.end method
