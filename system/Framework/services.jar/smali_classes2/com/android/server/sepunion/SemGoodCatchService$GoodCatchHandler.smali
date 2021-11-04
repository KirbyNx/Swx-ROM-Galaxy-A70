.class Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;
.super Landroid/os/Handler;
.source "SemGoodCatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemGoodCatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoodCatchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method private constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .registers 2

    .line 370
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;Lcom/android/server/sepunion/SemGoodCatchService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/sepunion/SemGoodCatchService;
    .param p2, "x1"    # Lcom/android/server/sepunion/SemGoodCatchService$1;

    .line 370
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 20
    .param p1, "msg"    # Landroid/os/Message;

    .line 373
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_5a

    const/4 v3, 0x1

    if-eq v2, v3, :cond_50

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v2, v8, :cond_33

    if-eq v2, v7, :cond_2d

    if-eq v2, v6, :cond_23

    if-eq v2, v5, :cond_19

    goto :goto_60

    .line 391
    :cond_19
    iget-object v2, v0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureWakeUp:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;
    invoke-static {v2}, Lcom/android/server/sepunion/SemGoodCatchService;->access$1100(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->doneTrigger()V

    goto :goto_60

    .line 388
    :cond_23
    iget-object v2, v0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureDetectAds:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;
    invoke-static {v2}, Lcom/android/server/sepunion/SemGoodCatchService;->access$1000(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->setActiveState(Z)V

    .line 389
    goto :goto_60

    .line 385
    :cond_2d
    iget-object v2, v0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    # invokes: Lcom/android/server/sepunion/SemGoodCatchService;->createObserver()V
    invoke-static {v2}, Lcom/android/server/sepunion/SemGoodCatchService;->access$900(Lcom/android/server/sepunion/SemGoodCatchService;)V

    .line 386
    goto :goto_60

    .line 381
    :cond_33
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    .line 382
    .local v2, "info":[Ljava/lang/String;
    iget-object v9, v0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;
    invoke-static {v9}, Lcom/android/server/sepunion/SemGoodCatchService;->access$300(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    move-result-object v10

    aget-object v11, v2, v4

    aget-object v12, v2, v3

    aget-object v13, v2, v8

    aget-object v14, v2, v7

    aget-object v15, v2, v6

    aget-object v16, v2, v5

    const/4 v3, 0x6

    aget-object v17, v2, v3

    invoke-virtual/range {v10 .. v17}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    goto :goto_60

    .line 378
    .end local v2    # "info":[Ljava/lang/String;
    :cond_50
    iget-object v2, v0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;
    invoke-static {v2}, Lcom/android/server/sepunion/SemGoodCatchService;->access$200(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->update()V

    .line 379
    goto :goto_60

    .line 375
    :cond_5a
    iget-object v2, v0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    # invokes: Lcom/android/server/sepunion/SemGoodCatchService;->createFeature()V
    invoke-static {v2}, Lcom/android/server/sepunion/SemGoodCatchService;->access$800(Lcom/android/server/sepunion/SemGoodCatchService;)V

    .line 376
    nop

    .line 394
    :goto_60
    return-void
.end method
