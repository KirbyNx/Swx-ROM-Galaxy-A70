.class public final synthetic Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$EvaluationState$Um2BZZ0xHoXF6jTd7ER2rUoVtVo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$EvaluationState$Um2BZZ0xHoXF6jTd7ER2rUoVtVo;->f$0:Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;

    iput p2, p0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$EvaluationState$Um2BZZ0xHoXF6jTd7ER2rUoVtVo;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$EvaluationState$Um2BZZ0xHoXF6jTd7ER2rUoVtVo;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$EvaluationState$Um2BZZ0xHoXF6jTd7ER2rUoVtVo;->f$0:Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;

    iget v1, p0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$EvaluationState$Um2BZZ0xHoXF6jTd7ER2rUoVtVo;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$EvaluationState$Um2BZZ0xHoXF6jTd7ER2rUoVtVo;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;->lambda$noteProbeResult$1$WifiNetworkMonitor$EvaluationState(IZ)V

    return-void
.end method
