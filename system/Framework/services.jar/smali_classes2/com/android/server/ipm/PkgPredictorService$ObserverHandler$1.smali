.class Lcom/android/server/ipm/PkgPredictorService$ObserverHandler$1;
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

    .line 1550
    iput-object p1, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler$1;->this$1:Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1553
    const/4 v0, 0x0

    .line 1554
    .local v0, "boostPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/PkgInfo;>;"
    const/4 v1, 0x0

    .line 1556
    .local v1, "mAppLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/AppRanking;>;"
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler$1;->this$1:Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;

    iget-object v2, v2, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mAufPredictor:Lcom/android/server/ipm/AufPredictor;
    invoke-static {v2}, Lcom/android/server/ipm/PkgPredictorService;->access$1900(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/AufPredictor;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/server/ipm/AufPredictor;->AppPredict(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1558
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1559
    .local v2, "mAppListsString":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/PkgInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_39

    const/16 v4, 0x1e

    if-ge v3, v4, :cond_39

    .line 1560
    new-instance v4, Lcom/android/server/ipm/PkgInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ipm/AppRanking;

    iget-object v5, v5, Lcom/android/server/ipm/AppRanking;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ipm/AppRanking;

    iget v6, v6, Lcom/android/server/ipm/AppRanking;->userId:I

    invoke-direct {v4, v5, v6}, Lcom/android/server/ipm/PkgInfo;-><init>(Ljava/lang/String;I)V

    .line 1561
    .local v4, "pkg":Lcom/android/server/ipm/PkgInfo;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1559
    .end local v4    # "pkg":Lcom/android/server/ipm/PkgInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1564
    .end local v3    # "i":I
    :cond_39
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_73

    .line 1565
    new-instance v3, Lcom/android/server/ipm/PkgPredictorService$AUFHistory;

    iget-object v4, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler$1;->this$1:Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;

    iget-object v4, v4, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    invoke-direct {v3, v4, v2}, Lcom/android/server/ipm/PkgPredictorService$AUFHistory;-><init>(Lcom/android/server/ipm/PkgPredictorService;Ljava/util/ArrayList;)V

    .line 1567
    .local v3, "AH":Lcom/android/server/ipm/PkgPredictorService$AUFHistory;
    # getter for: Lcom/android/server/ipm/PkgPredictorService;->listOfAUFHistory:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/ipm/PkgPredictorService;->access$2500()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_73

    .line 1568
    # getter for: Lcom/android/server/ipm/PkgPredictorService;->listOfAUFHistory:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/ipm/PkgPredictorService;->access$2500()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1570
    # getter for: Lcom/android/server/ipm/PkgPredictorService;->listOfAUFHistory:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/ipm/PkgPredictorService;->access$2500()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0xa

    if-le v4, v5, :cond_73

    .line 1571
    # getter for: Lcom/android/server/ipm/PkgPredictorService;->listOfAUFHistory:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/ipm/PkgPredictorService;->access$2500()Ljava/util/ArrayList;

    move-result-object v4

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->listOfAUFHistory:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/ipm/PkgPredictorService;->access$2500()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1576
    .end local v3    # "AH":Lcom/android/server/ipm/PkgPredictorService$AUFHistory;
    :cond_73
    iget-object v3, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler$1;->this$1:Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;

    iget-object v3, v3, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mBooster:Lcom/android/server/ipm/BootUpBooster;
    invoke-static {v3}, Lcom/android/server/ipm/PkgPredictorService;->access$2300(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/BootUpBooster;

    invoke-static {v2}, Lcom/android/server/ipm/BootUpBooster;->getBoosterPkgList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1577
    iget-object v3, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler$1;->this$1:Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;

    iget-object v3, v3, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mAufHitCalculation:Lcom/android/server/ipm/AufHitCalculation;
    invoke-static {v3}, Lcom/android/server/ipm/PkgPredictorService;->access$200(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/AufHitCalculation;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/ipm/AufHitCalculation;->updatePredictApplists(Ljava/util/ArrayList;)V

    .line 1578
    iget-object v3, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler$1;->this$1:Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;

    iget-object v3, v3, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mAufHitCalculation:Lcom/android/server/ipm/AufHitCalculation;
    invoke-static {v3}, Lcom/android/server/ipm/PkgPredictorService;->access$200(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/AufHitCalculation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/ipm/AufHitCalculation;->updateHitCount()V

    .line 1585
    iget-object v3, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler$1;->this$1:Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;

    iget-object v3, v3, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # invokes: Lcom/android/server/ipm/PkgPredictorService;->isBootupBoosterEnabled()Z
    invoke-static {v3}, Lcom/android/server/ipm/PkgPredictorService;->access$700(Lcom/android/server/ipm/PkgPredictorService;)Z

    move-result v3

    if-eqz v3, :cond_d1

    iget-object v3, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler$1;->this$1:Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;

    iget-object v3, v3, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mController:Lcom/android/server/ipm/NapPreloadController;
    invoke-static {v3}, Lcom/android/server/ipm/PkgPredictorService;->access$400(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/NapPreloadController;

    move-result-object v3

    if-eqz v3, :cond_d1

    if-eqz v0, :cond_d1

    .line 1586
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_d1

    .line 1587
    # getter for: Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z
    invoke-static {}, Lcom/android/server/ipm/PkgPredictorService;->access$2400()Z

    move-result v3

    if-eqz v3, :cond_c4

    iget-object v3, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler$1;->this$1:Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;

    iget-object v3, v3, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mController:Lcom/android/server/ipm/NapPreloadController;
    invoke-static {v3}, Lcom/android/server/ipm/PkgPredictorService;->access$400(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/NapPreloadController;

    move-result-object v3

    const-string v4, "booster"

    invoke-virtual {v3, v0, v4}, Lcom/android/server/ipm/NapPreloadController;->preloadWithUid(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_d1

    .line 1588
    :cond_c4
    iget-object v3, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler$1;->this$1:Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;

    iget-object v3, v3, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mController:Lcom/android/server/ipm/NapPreloadController;
    invoke-static {v3}, Lcom/android/server/ipm/PkgPredictorService;->access$400(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/NapPreloadController;

    move-result-object v3

    const-string v4, "booster_withoutIO"

    invoke-virtual {v3, v0, v4}, Lcom/android/server/ipm/NapPreloadController;->preloadWithUid(Ljava/util/List;Ljava/lang/String;)V

    .line 1590
    :cond_d1
    :goto_d1
    return-void
.end method
