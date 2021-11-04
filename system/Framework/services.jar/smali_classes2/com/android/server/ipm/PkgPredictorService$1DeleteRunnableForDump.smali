.class Lcom/android/server/ipm/PkgPredictorService$1DeleteRunnableForDump;
.super Ljava/lang/Object;
.source "PkgPredictorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ipm/PkgPredictorService;->clearDB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteRunnableForDump"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/PkgPredictorService;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/PkgPredictorService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/PkgPredictorService;

    .line 1076
    iput-object p1, p0, Lcom/android/server/ipm/PkgPredictorService$1DeleteRunnableForDump;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1080
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService$1DeleteRunnableForDump;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # invokes: Lcom/android/server/ipm/PkgPredictorService;->deleteHistoryRecord()V
    invoke-static {v0}, Lcom/android/server/ipm/PkgPredictorService;->access$2000(Lcom/android/server/ipm/PkgPredictorService;)V

    .line 1082
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterNum:I

    if-lez v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService$1DeleteRunnableForDump;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # invokes: Lcom/android/server/ipm/PkgPredictorService;->isBootupBoosterEnabled()Z
    invoke-static {v0}, Lcom/android/server/ipm/PkgPredictorService;->access$700(Lcom/android/server/ipm/PkgPredictorService;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService$1DeleteRunnableForDump;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # invokes: Lcom/android/server/ipm/PkgPredictorService;->isAppUsageForecastEnabled()Z
    invoke-static {v0}, Lcom/android/server/ipm/PkgPredictorService;->access$800(Lcom/android/server/ipm/PkgPredictorService;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1083
    :cond_19
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1084
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1085
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$1DeleteRunnableForDump;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$500(Lcom/android/server/ipm/PkgPredictorService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1086
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_51

    .line 1087
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not sendMessage mBootupBoosterNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$1DeleteRunnableForDump;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # invokes: Lcom/android/server/ipm/PkgPredictorService;->isBootupBoosterEnabled()Z
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$700(Lcom/android/server/ipm/PkgPredictorService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PkgPredictorService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :goto_51
    return-void
.end method
