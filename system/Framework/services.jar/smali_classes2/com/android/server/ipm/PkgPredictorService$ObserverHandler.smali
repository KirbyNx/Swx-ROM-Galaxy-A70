.class Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;
.super Landroid/os/Handler;
.source "PkgPredictorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/PkgPredictorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObserverHandler"
.end annotation


# static fields
.field public static final ACTION_BOOSTER_MEDIA_SCANNER_FINISHED:I = 0xa

.field public static final ACTION_BOOSTER_PRELOAD:I = 0x5

.field public static final ACTION_BOOSTER_PRELOAD_LIST_CLEAR:I = 0x7

.field public static final ACTION_BOOSTER_PRELOAD_LIST_UPDATE:I = 0x6

.field public static final ACTION_FOREGROUND_ACTIVITY_CHANGED:I = 0x1

.field public static final ACTION_KPM_LEVEL_CHANGED:I = 0x8

.field public static final ACTION_PROCESS_DIE:I = 0x2

.field public static final ACTION_SAVE_REC:I = 0x4

.field public static final ACTION_TRIGGER_NAP_TRAINING:I = 0x9

.field public static final ACTION_UID_GONE:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/PkgPredictorService;


# direct methods
.method public constructor <init>(Lcom/android/server/ipm/PkgPredictorService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1489
    iput-object p1, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    .line 1490
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1491
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1497
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c4

    goto/16 :goto_1c2

    .line 1649
    :pswitch_7
    const-string/jumbo v0, "persist.config.chimera.enable"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1650
    .local v0, "sysPropChimeraOnOff":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c2

    .line 1651
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    new-instance v2, Lcom/android/server/ipm/chimera/ChimeraManager;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$1800(Lcom/android/server/ipm/PkgPredictorService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mAMS:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v4}, Lcom/android/server/ipm/PkgPredictorService;->access$2700(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v5}, Lcom/android/server/ipm/PkgPredictorService;->access$2800(Lcom/android/server/ipm/PkgPredictorService;)Landroid/os/HandlerThread;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/ipm/chimera/ChimeraManager;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/os/HandlerThread;)V

    # setter for: Lcom/android/server/ipm/PkgPredictorService;->mChimeraManager:Lcom/android/server/ipm/chimera/ChimeraManager;
    invoke-static {v1, v2}, Lcom/android/server/ipm/PkgPredictorService;->access$2602(Lcom/android/server/ipm/PkgPredictorService;Lcom/android/server/ipm/chimera/ChimeraManager;)Lcom/android/server/ipm/chimera/ChimeraManager;

    goto/16 :goto_1c2

    .line 1636
    .end local v0    # "sysPropChimeraOnOff":Ljava/lang/String;
    :pswitch_32
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mPredictor:Lcom/android/server/ipm/NapPredictor;
    invoke-static {v0}, Lcom/android/server/ipm/PkgPredictorService;->access$100(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/NapPredictor;

    move-result-object v0

    if-eqz v0, :cond_1c2

    .line 1637
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler$2;

    invoke-direct {v1, p0}, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler$2;-><init>(Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1644
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1c2

    .line 1612
    :pswitch_49
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterNum:I

    .line 1614
    .local v0, "mBootupBoosterNumPrev":I
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/ipm/PkgPredictorService;->setKPMLevel(I)V

    .line 1615
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mBooster:Lcom/android/server/ipm/BootUpBooster;
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$2300(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/BootUpBooster;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    invoke-virtual {v2}, Lcom/android/server/ipm/PkgPredictorService;->calcTopNByKPMLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/ipm/BootUpBooster;->setTOPN(I)V

    .line 1617
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1620
    .local v1, "msg1":Landroid/os/Message;
    if-nez v0, :cond_77

    sget v2, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterNum:I

    if-lez v2, :cond_77

    .line 1621
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    const-string v3, "KPM State changed"

    # invokes: Lcom/android/server/ipm/PkgPredictorService;->scheduleBoosterPeriodPreload(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/ipm/PkgPredictorService;->access$900(Lcom/android/server/ipm/PkgPredictorService;Ljava/lang/String;)V

    .line 1622
    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_87

    .line 1624
    :cond_77
    if-lez v0, :cond_84

    sget v2, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterNum:I

    if-nez v2, :cond_84

    .line 1626
    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1627
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->arg1:I

    goto :goto_87

    .line 1630
    :cond_84
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1633
    :goto_87
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/ipm/PkgPredictorService;->access$500(Lcom/android/server/ipm/PkgPredictorService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1634
    goto/16 :goto_1c2

    .line 1606
    .end local v0    # "mBootupBoosterNumPrev":I
    .end local v1    # "msg1":Landroid/os/Message;
    :pswitch_92
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mController:Lcom/android/server/ipm/NapPreloadController;
    invoke-static {v0}, Lcom/android/server/ipm/PkgPredictorService;->access$400(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/NapPreloadController;

    move-result-object v0

    if-eqz v0, :cond_1c2

    .line 1607
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mController:Lcom/android/server/ipm/NapPreloadController;
    invoke-static {v0}, Lcom/android/server/ipm/PkgPredictorService;->access$400(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/NapPreloadController;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/NapPreloadController;->listClear(I)V

    goto/16 :goto_1c2

    .line 1539
    :pswitch_a7
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mBooster:Lcom/android/server/ipm/BootUpBooster;
    invoke-static {v0}, Lcom/android/server/ipm/PkgPredictorService;->access$2300(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/BootUpBooster;

    move-result-object v0

    if-nez v0, :cond_b1

    .line 1540
    goto/16 :goto_1c2

    .line 1542
    :cond_b1
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mBooster:Lcom/android/server/ipm/BootUpBooster;
    invoke-static {v0}, Lcom/android/server/ipm/PkgPredictorService;->access$2300(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/BootUpBooster;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    invoke-virtual {v1}, Lcom/android/server/ipm/PkgPredictorService;->calcTopNByKPMLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/BootUpBooster;->setTOPN(I)V

    .line 1543
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterNum:I

    if-lez v0, :cond_1c2

    .line 1545
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mAufPredictor:Lcom/android/server/ipm/AufPredictor;
    invoke-static {v0}, Lcom/android/server/ipm/PkgPredictorService;->access$1900(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/AufPredictor;

    move-result-object v0

    if-eqz v0, :cond_1c2

    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mAufHitCalculation:Lcom/android/server/ipm/AufHitCalculation;
    invoke-static {v0}, Lcom/android/server/ipm/PkgPredictorService;->access$200(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/AufHitCalculation;

    move-result-object v0

    if-eqz v0, :cond_1c2

    .line 1546
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mCollector:Lcom/android/server/ipm/Collector;
    invoke-static {v0}, Lcom/android/server/ipm/PkgPredictorService;->access$000(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/Collector;

    move-result-object v0

    if-eqz v0, :cond_e5

    .line 1547
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mCollector:Lcom/android/server/ipm/Collector;
    invoke-static {v0}, Lcom/android/server/ipm/PkgPredictorService;->access$000(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/Collector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ipm/Collector;->saveRecords()V

    .line 1550
    :cond_e5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler$1;

    invoke-direct {v1, p0}, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler$1;-><init>(Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1591
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1c2

    .line 1524
    :pswitch_f4
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mBooster:Lcom/android/server/ipm/BootUpBooster;
    invoke-static {v0}, Lcom/android/server/ipm/PkgPredictorService;->access$2300(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/BootUpBooster;

    move-result-object v0

    if-nez v0, :cond_fe

    .line 1525
    goto/16 :goto_1c2

    .line 1527
    :cond_fe
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mBooster:Lcom/android/server/ipm/BootUpBooster;
    invoke-static {v0}, Lcom/android/server/ipm/PkgPredictorService;->access$2300(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/BootUpBooster;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    invoke-virtual {v1}, Lcom/android/server/ipm/PkgPredictorService;->calcTopNByKPMLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/BootUpBooster;->setTOPN(I)V

    .line 1528
    const/4 v0, 0x0

    .line 1529
    .local v0, "boostPkgs1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/PkgInfo;>;"
    sget v1, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterNum:I

    if-lez v1, :cond_11b

    .line 1530
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mBooster:Lcom/android/server/ipm/BootUpBooster;
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$2300(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/BootUpBooster;

    invoke-static {}, Lcom/android/server/ipm/BootUpBooster;->getBoosterPkgList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1532
    :cond_11b
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # invokes: Lcom/android/server/ipm/PkgPredictorService;->isBootupBoosterEnabled()Z
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$700(Lcom/android/server/ipm/PkgPredictorService;)Z

    move-result v1

    if-eqz v1, :cond_1c2

    sget v1, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterNum:I

    if-lez v1, :cond_1c2

    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mController:Lcom/android/server/ipm/NapPreloadController;
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$400(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/NapPreloadController;

    move-result-object v1

    if-eqz v1, :cond_1c2

    if-eqz v0, :cond_1c2

    .line 1533
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1c2

    .line 1534
    # getter for: Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z
    invoke-static {}, Lcom/android/server/ipm/PkgPredictorService;->access$2400()Z

    move-result v1

    if-eqz v1, :cond_14a

    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mController:Lcom/android/server/ipm/NapPreloadController;
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$400(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/NapPreloadController;

    move-result-object v1

    const-string v2, "booster"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/ipm/NapPreloadController;->preloadWithUid(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_1c2

    .line 1535
    :cond_14a
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mController:Lcom/android/server/ipm/NapPreloadController;
    invoke-static {v1}, Lcom/android/server/ipm/PkgPredictorService;->access$400(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/NapPreloadController;

    move-result-object v1

    const-string v2, "booster_withoutIO"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/ipm/NapPreloadController;->preloadWithUid(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1c2

    .line 1519
    .end local v0    # "boostPkgs1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/PkgInfo;>;"
    :pswitch_156
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mCollector:Lcom/android/server/ipm/Collector;
    invoke-static {v0}, Lcom/android/server/ipm/PkgPredictorService;->access$000(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/Collector;

    move-result-object v0

    if-eqz v0, :cond_1c2

    .line 1520
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mCollector:Lcom/android/server/ipm/Collector;
    invoke-static {v0}, Lcom/android/server/ipm/PkgPredictorService;->access$000(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/Collector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ipm/Collector;->saveRecords()V

    goto :goto_1c2

    .line 1509
    :pswitch_168
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1510
    .local v0, "uid":I
    const/4 v1, 0x0

    .line 1511
    .local v1, "pkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;>;"
    invoke-static {}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstanse()Lcom/android/server/ipm/MultiUserPkgManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstalledApps()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_190

    .line 1512
    invoke-static {}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstanse()Lcom/android/server/ipm/MultiUserPkgManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstalledApps()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/util/List;

    .line 1515
    :cond_190
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_191
    if-eqz v1, :cond_1ad

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1ad

    .line 1516
    iget-object v3, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # getter for: Lcom/android/server/ipm/PkgPredictorService;->mController:Lcom/android/server/ipm/NapPreloadController;
    invoke-static {v3}, Lcom/android/server/ipm/PkgPredictorService;->access$400(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/NapPreloadController;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;

    iget-object v4, v4, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/ipm/NapPreloadController;->die(Ljava/lang/String;)V

    .line 1515
    add-int/lit8 v2, v2, 0x1

    goto :goto_191

    .line 1517
    .end local v2    # "i":I
    :cond_1ad
    goto :goto_1c2

    .line 1504
    .end local v0    # "uid":I
    .end local v1    # "pkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;>;"
    :pswitch_1ae
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1505
    .local v0, "pid":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1506
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # invokes: Lcom/android/server/ipm/PkgPredictorService;->processProcessDie(II)V
    invoke-static {v2, v0, v1}, Lcom/android/server/ipm/PkgPredictorService;->access$2200(Lcom/android/server/ipm/PkgPredictorService;II)V

    .line 1507
    goto :goto_1c2

    .line 1499
    .end local v0    # "pid":I
    .end local v1    # "uid":I
    :pswitch_1b8
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1500
    .restart local v0    # "pid":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1501
    .restart local v1    # "uid":I
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    # invokes: Lcom/android/server/ipm/PkgPredictorService;->processForegroundChanged(II)V
    invoke-static {v2, v0, v1}, Lcom/android/server/ipm/PkgPredictorService;->access$2100(Lcom/android/server/ipm/PkgPredictorService;II)V

    .line 1502
    nop

    .line 1658
    .end local v0    # "pid":I
    .end local v1    # "uid":I
    :cond_1c2
    :goto_1c2
    return-void

    nop

    :pswitch_data_1c4
    .packed-switch 0x1
        :pswitch_1b8
        :pswitch_1ae
        :pswitch_168
        :pswitch_156
        :pswitch_f4
        :pswitch_a7
        :pswitch_92
        :pswitch_49
        :pswitch_32
        :pswitch_7
    .end packed-switch
.end method
