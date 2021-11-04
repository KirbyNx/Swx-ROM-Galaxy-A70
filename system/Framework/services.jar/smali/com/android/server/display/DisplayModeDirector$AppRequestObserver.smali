.class final Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AppRequestObserver"
.end annotation


# instance fields
.field private mAppRequestedModeByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field mLastAppRequestModeReason:I

.field mLastAppRequestModeReasonType:I

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 1413
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1409
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mLastAppRequestModeReason:I

    .line 1410
    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mLastAppRequestModeReasonType:I

    .line 1414
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    .line 1415
    return-void
.end method

.method private findModeByIdLocked(II)Landroid/view/Display$Mode;
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "modeId"    # I

    .line 1496
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$1800(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Display$Mode;

    .line 1497
    .local v0, "modes":[Landroid/view/Display$Mode;
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 1498
    return-object v1

    .line 1500
    :cond_10
    array-length v2, v0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_20

    aget-object v4, v0, v3

    .line 1501
    .local v4, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    if-ne v5, p2, :cond_1d

    .line 1502
    return-object v4

    .line 1500
    .end local v4    # "mode":Landroid/view/Display$Mode;
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1505
    :cond_20
    return-object v1
.end method

.method private setAppRequestedModeLocked(III)V
    .registers 10
    .param p1, "displayId"    # I
    .param p2, "modeId"    # I
    .param p3, "modeReason"    # I

    .line 1433
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->findModeByIdLocked(II)Landroid/view/Display$Mode;

    move-result-object v0

    .line 1436
    .local v0, "requestedMode":Landroid/view/Display$Mode;
    const/4 v1, 0x0

    .line 1437
    .local v1, "appRequestedModeReasonTypeChanged":Z
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v2, :cond_1c

    .line 1438
    if-eqz v0, :cond_d

    .line 1439
    move v2, p3

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    iput v2, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mLastAppRequestModeReason:I

    .line 1440
    nop

    .line 1441
    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->getAppRequestedRefreshRateType(I)I

    move-result v2

    .line 1442
    .local v2, "modeReasonType":I
    iget v3, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mLastAppRequestModeReasonType:I

    if-eq v3, v2, :cond_1c

    .line 1443
    iput v2, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mLastAppRequestModeReasonType:I

    .line 1444
    const/4 v1, 0x1

    .line 1449
    .end local v2    # "modeReasonType":I
    :cond_1c
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v2, :cond_2e

    if-nez v1, :cond_2f

    .line 1453
    :cond_2e
    return-void

    .line 1458
    :cond_2f
    if-eqz v0, :cond_72

    .line 1459
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1460
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v2

    .line 1462
    .local v2, "refreshRate":F
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v3, :cond_5d

    if-nez p1, :cond_5d

    .line 1463
    iget v3, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mLastAppRequestModeReasonType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4a

    .line 1464
    invoke-static {v2, v2}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v3

    .local v3, "refreshRateVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    goto :goto_5b

    .line 1466
    .end local v3    # "refreshRateVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_4a
    const v3, 0x42700a3d    # 60.01f

    cmpl-float v3, v2, v3

    const/4 v4, 0x0

    if-lez v3, :cond_55

    .line 1467
    const/high16 v3, 0x42f00000    # 120.0f

    goto :goto_57

    :cond_55
    const/high16 v3, 0x42700000    # 60.0f

    :goto_57
    invoke-static {v4, v3}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v3

    .line 1469
    .restart local v3    # "refreshRateVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :goto_5b
    const/4 v4, 0x0

    .local v4, "sizeVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    goto :goto_71

    .line 1472
    .end local v3    # "refreshRateVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    .end local v4    # "sizeVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_5d
    invoke-static {v2, v2}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v3

    .line 1474
    .restart local v3    # "refreshRateVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    if-nez p1, :cond_65

    .line 1477
    const/4 v4, 0x0

    .restart local v4    # "sizeVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    goto :goto_71

    .line 1480
    .end local v4    # "sizeVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_65
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    .line 1481
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    .line 1480
    invoke-static {v4, v5}, Lcom/android/server/display/DisplayModeDirector$Vote;->forSize(II)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v4

    .line 1484
    .end local v2    # "refreshRate":F
    .restart local v4    # "sizeVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :goto_71
    goto :goto_79

    .line 1485
    .end local v3    # "refreshRateVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    .end local v4    # "sizeVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_72
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1486
    const/4 v3, 0x0

    .line 1487
    .restart local v3    # "refreshRateVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    const/4 v4, 0x0

    .line 1490
    .restart local v4    # "sizeVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :goto_79
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v5, 0x4

    # invokes: Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V
    invoke-static {v2, p1, v5, v3}, Lcom/android/server/display/DisplayModeDirector;->access$1700(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1491
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v5, 0x5

    # invokes: Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V
    invoke-static {v2, p1, v5, v4}, Lcom/android/server/display/DisplayModeDirector;->access$1700(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1492
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1509
    const-string v0, "  AppRequestObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1510
    const-string v0, "    mAppRequestedModeByDisplay:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1511
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 1512
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1513
    .local v1, "id":I
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display$Mode;

    .line 1514
    .local v2, "mode":Landroid/view/Display$Mode;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1511
    .end local v1    # "id":I
    .end local v2    # "mode":Landroid/view/Display$Mode;
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1517
    .end local v0    # "i":I
    :cond_40
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v0, :cond_60

    .line 1518
    const-string v0, "    mLastAppRequestModeReason: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1519
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mLastAppRequestModeReason:I

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->refreshRateReasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1520
    const-string v0, "    mLastAppRequestModeReasonType: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1521
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mLastAppRequestModeReasonType:I

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->refreshRateReasonTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1524
    :cond_60
    return-void
.end method

.method logCurrentState()Ljava/lang/String;
    .registers 3

    .line 1528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AppRequestObserver mLastAppRequestModeReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mLastAppRequestModeReason:I

    .line 1529
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->refreshRateReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLastAppRequestModeReasonType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mLastAppRequestModeReasonType:I

    .line 1531
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->refreshRateReasonTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1528
    return-object v0
.end method

.method public setAppRequestedMode(III)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "modeId"    # I
    .param p3, "modeReason"    # I

    .line 1421
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$500(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1422
    :try_start_7
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->setAppRequestedModeLocked(III)V

    .line 1426
    monitor-exit v0

    .line 1427
    return-void

    .line 1426
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v1
.end method
