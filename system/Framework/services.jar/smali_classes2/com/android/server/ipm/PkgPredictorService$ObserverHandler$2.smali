.class Lcom/android/server/ipm/PkgPredictorService$ObserverHandler$2;
.super Ljava/lang/Object;
.source "PkgPredictorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;

    .line 1637
    iput-object p1, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler$2;->this$1:Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1640
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1641
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler$2;->this$1:Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;

    iget-object v0, v0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    const-wide v1, 0x9a7ec800L

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ipm/PkgPredictorService;->trim(J)V

    .line 1642
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler$2;->this$1:Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;

    iget-object v0, v0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mPredictor:Lcom/android/server/ipm/NapPredictor;
    invoke-static {v0}, Lcom/android/server/ipm/PkgPredictorService;->access$100(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/NapPredictor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ipm/NapPredictor;->trainModel()V

    .line 1643
    return-void
.end method
