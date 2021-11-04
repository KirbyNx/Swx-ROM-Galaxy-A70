.class public Lcom/android/server/am/KillPolicyManager$KpmRaw;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KpmRaw"
.end annotation


# instance fields
.field accMem:I

.field accSwap:I

.field appCnt:I

.field avlMem:I

.field bServiceKill:J

.field cachedActCnt:I

.field cachedMinKill:J

.field cachedTotalCnt:I

.field coldCount:I

.field createTime:J

.field curKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field cycleNum:I

.field homeToPercKill:J

.field hotCount:I

.field hotRatio:I

.field isStateChanged:Z

.field isWarmUpCycle:Z

.field killedPackageCount:I

.field killedPackageRatio:I

.field lastUpdateTime:J

.field launchedPackageCount:I

.field lmkCnt:J

.field lmkdCric:J

.field lmkdMed:J

.field lmkdTotalKill:J

.field mCachedClientKillCount:I

.field mCachedEmptyKillCount:I

.field mCachedNormalKillCount:I

.field mChimeraDataInfo:Lcom/android/server/ipm/chimera/ChimeraDataInfo;

.field mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field mPsiCpuMax:D

.field mPsiCpuSum:D

.field mPsiIoMax:D

.field mPsiIoSum:D

.field mPsiMemoryMax:D

.field mPsiMemorySum:D

.field maxMem:I

.field maxSwap:I

.field minMem:I

.field minSwap:I

.field nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field pickedActCnt:I

.field pickedKill:J

.field pickedTotalCnt:I

.field prKilledAppCount:I

.field prKilledRatio:I

.field previousKill:J

.field procsAdjPss:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field

.field resetStatus:I

.field seedbedKill:J

.field seedbedTotalCnt:I

.field svKilledAppCount:I

.field svKilledRatio:I

.field final synthetic this$0:Lcom/android/server/am/KillPolicyManager;

.field timeStamp:Ljava/lang/String;

.field visToFgKill:J

.field warmCount:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;I)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/am/KillPolicyManager;
    .param p2, "cycle"    # I

    .line 1379
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1380
    iput p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cycleNum:I

    .line 1381
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minMem:I

    .line 1382
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    .line 1383
    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxMem:I

    .line 1384
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minSwap:I

    .line 1385
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    .line 1386
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    .line 1388
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotRatio:I

    .line 1389
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    .line 1390
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    .line 1391
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    .line 1394
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdTotalKill:J

    .line 1395
    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedMinKill:J

    .line 1396
    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->seedbedKill:J

    .line 1397
    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedKill:J

    .line 1398
    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->bServiceKill:J

    .line 1399
    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->previousKill:J

    .line 1400
    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->homeToPercKill:J

    .line 1401
    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->visToFgKill:J

    .line 1404
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledAppCount:I

    .line 1405
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledRatio:I

    .line 1406
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->svKilledAppCount:I

    .line 1407
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->svKilledRatio:I

    .line 1408
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    .line 1409
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageCount:I

    .line 1410
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    .line 1411
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    .line 1414
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    .line 1415
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActCnt:I

    .line 1416
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->seedbedTotalCnt:I

    .line 1417
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    .line 1418
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActCnt:I

    .line 1420
    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkCnt:J

    .line 1421
    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdMed:J

    .line 1422
    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCric:J

    .line 1423
    # getter for: Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;
    invoke-static {p1}, Lcom/android/server/am/KillPolicyManager;->access$500(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->curKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1424
    sget-object v0, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1425
    # getter for: Lcom/android/server/am/KillPolicyManager;->mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;
    invoke-static {p1}, Lcom/android/server/am/KillPolicyManager;->access$600(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1426
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 1427
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->createTime:J

    .line 1428
    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lastUpdateTime:J

    .line 1429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->timeStamp:Ljava/lang/String;

    .line 1430
    iput-boolean v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isWarmUpCycle:Z

    .line 1431
    iput-boolean v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isStateChanged:Z

    .line 1433
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 1435
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mCachedNormalKillCount:I

    .line 1436
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mCachedEmptyKillCount:I

    .line 1437
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mCachedClientKillCount:I

    .line 1439
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiCpuSum:D

    .line 1440
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiMemorySum:D

    .line 1441
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiIoSum:D

    .line 1443
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiCpuMax:D

    .line 1444
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiMemoryMax:D

    .line 1445
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiIoMax:D

    .line 1447
    new-instance v0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;

    invoke-direct {v0}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mChimeraDataInfo:Lcom/android/server/ipm/chimera/ChimeraDataInfo;

    .line 1448
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 1306
    invoke-direct {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->checkMemCriticalLowTH()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/util/HashMap;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager$KpmRaw;
    .param p1, "x1"    # Ljava/util/HashMap;

    .line 1306
    invoke-direct {p0, p1}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateProcAdjPss(Ljava/util/HashMap;)V

    return-void
.end method

.method private checkMemCriticalLowTH()V
    .registers 6

    .line 1533
    const/4 v0, 0x0

    .line 1534
    .local v0, "result":I
    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledRatio:I

    .line 1537
    .local v1, "criticalKillRatio":I
    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    const-string v3, "ActivityManager_KPM"

    if-eqz v2, :cond_2c

    .line 1538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMemCriticalLowTH() killRatio = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%, killedPackageRatio = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    :cond_2c
    # getter for: Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->access$2300()I

    move-result v2

    if-lt v1, v2, :cond_4d

    .line 1543
    const/4 v0, 0x1

    .line 1544
    # getter for: Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO:Z
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->access$2400()Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    # invokes: Lcom/android/server/am/KillPolicyManager;->isCriticalKilledManyPakages(I)Z
    invoke-static {v2, v4}, Lcom/android/server/am/KillPolicyManager;->access$2500(Lcom/android/server/am/KillPolicyManager;I)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 1545
    const/4 v0, 0x0

    .line 1546
    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v2, :cond_4d

    .line 1547
    const-string v2, "checkMemCriticalLowTH() killRatio is over thrshold but not occurred many apps, so result not accepted"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    :cond_4d
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    .line 1554
    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v2, :cond_69

    .line 1555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMemCriticalLowTH() memory critical status is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    :cond_69
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->isDetectCritcialLowEnabled()Z

    move-result v2

    if-eqz v2, :cond_78

    iget-boolean v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isWarmUpCycle:Z

    if-nez v2, :cond_78

    .line 1559
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # invokes: Lcom/android/server/am/KillPolicyManager;->reportMemCriticalLow(I)V
    invoke-static {v2, v0}, Lcom/android/server/am/KillPolicyManager;->access$2600(Lcom/android/server/am/KillPolicyManager;I)V

    .line 1561
    :cond_78
    return-void
.end method

.method private updateProcAdjPss(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;)V"
        }
    .end annotation

    .line 1619
    .local p1, "procsMemoryPssKbByADJ":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[J>;"
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 1620
    return-void
.end method

.method private updateRawLaunchState()V
    .registers 4

    .line 1593
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mLaunchHot:I
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->access$2800(Lcom/android/server/am/KillPolicyManager;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    .line 1594
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mLaunchWarm:I
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->access$2900(Lcom/android/server/am/KillPolicyManager;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    .line 1595
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mLaunchCold:I
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->access$3000(Lcom/android/server/am/KillPolicyManager;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    .line 1596
    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->calcHotLaunchRatio(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotRatio:I

    .line 1597
    return-void
.end method

.method private updateRawProcessLmkdCount()V
    .registers 3

    .line 1600
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mLmkdCoutInCycle:Lcom/android/server/am/KillPolicyManager$LmkdCounter;
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->access$3100(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_totalKillCount:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdTotalKill:J

    .line 1601
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mLmkdCoutInCycle:Lcom/android/server/am/KillPolicyManager$LmkdCounter;
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->access$3100(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_cachedMinKillCount:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedMinKill:J

    .line 1602
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mLmkdCoutInCycle:Lcom/android/server/am/KillPolicyManager$LmkdCounter;
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->access$3100(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_seedbedKillCount:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->seedbedKill:J

    .line 1603
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mLmkdCoutInCycle:Lcom/android/server/am/KillPolicyManager$LmkdCounter;
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->access$3100(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_pickedKillCount:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedKill:J

    .line 1604
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mLmkdCoutInCycle:Lcom/android/server/am/KillPolicyManager$LmkdCounter;
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->access$3100(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_bServiceKillCount:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->bServiceKill:J

    .line 1605
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mLmkdCoutInCycle:Lcom/android/server/am/KillPolicyManager$LmkdCounter;
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->access$3100(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_previousKillCount:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->previousKill:J

    .line 1606
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mLmkdCoutInCycle:Lcom/android/server/am/KillPolicyManager$LmkdCounter;
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->access$3100(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_homeToPercKillCount:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->homeToPercKill:J

    .line 1607
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mLmkdCoutInCycle:Lcom/android/server/am/KillPolicyManager$LmkdCounter;
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->access$3100(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cur_visToFgKillCount:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->visToFgKill:J

    .line 1608
    return-void
.end method

.method private updateRawResetStatus()V
    .registers 3

    .line 1611
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mLmkdCoutInApps:Lcom/android/server/am/KillPolicyManager$LmkdCounter;
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->access$3200(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    move-result-object v0

    iget v0, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledAppCount:I

    .line 1612
    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->calcKillRatio(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledRatio:I

    .line 1613
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mLmkdCoutInApps:Lcom/android/server/am/KillPolicyManager$LmkdCounter;
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->access$3200(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    move-result-object v0

    iget v0, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->svKilledAppCount:I

    .line 1614
    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->calcKillRatio(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->svKilledRatio:I

    .line 1615
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    const/16 v1, 0x2bc

    # invokes: Lcom/android/server/am/KillPolicyManager;->calcKilledPackageRatio(I)I
    invoke-static {v0, v1}, Lcom/android/server/am/KillPolicyManager;->access$3300(Lcom/android/server/am/KillPolicyManager;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    .line 1616
    return-void
.end method


# virtual methods
.method public calcHotLaunchRatio(III)I
    .registers 6
    .param p1, "hot"    # I
    .param p2, "warm"    # I
    .param p3, "cold"    # I

    .line 1564
    add-int v0, p1, p2

    add-int/2addr v0, p3

    .line 1565
    .local v0, "total":I
    if-lez v0, :cond_9

    .line 1566
    mul-int/lit8 v1, p1, 0x64

    div-int/2addr v1, v0

    return v1

    .line 1568
    :cond_9
    const/4 v1, 0x0

    return v1
.end method

.method public calcKillRatio(II)I
    .registers 4
    .param p1, "appCnt"    # I
    .param p2, "killedAppCount"    # I

    .line 1573
    if-lez p1, :cond_6

    .line 1574
    mul-int/lit8 v0, p2, 0x64

    div-int/2addr v0, p1

    return v0

    .line 1576
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public getElapsedTimeMin()J
    .registers 5

    .line 1581
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lastUpdateTime:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->createTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getKpmData()Ljava/lang/StringBuilder;
    .registers 11

    .line 1623
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1624
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cycleNum:I

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mavgMetric:I
    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager;->access$2100(Lcom/android/server/am/KillPolicyManager;)I

    move-result v2

    if-ne v1, v2, :cond_21

    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mTrigger:I
    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager;->access$3400(Lcom/android/server/am/KillPolicyManager;)I

    move-result v2

    if-eq v1, v2, :cond_21

    .line 1626
    return-object v0

    .line 1628
    :cond_21
    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cycleNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1629
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    iget v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    div-int/2addr v2, v3

    .line 1631
    .local v2, "avgmem":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1633
    iget v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1634
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1635
    iget v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    iget v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    div-int/2addr v3, v4

    .line 1636
    .local v3, "avgswap":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1637
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1638
    iget v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1639
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    iget v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledAppCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1641
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    iget v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->svKilledAppCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1643
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    iget v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1645
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1646
    iget v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1647
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1648
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdTotalKill:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1649
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->previousKill:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1651
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1652
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->bServiceKill:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedKill:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1655
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->seedbedKill:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1657
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCric:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1659
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1660
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkCnt:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1661
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    iget v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mCachedNormalKillCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1663
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1664
    iget v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mCachedEmptyKillCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1665
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1666
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->curKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v4}, Lcom/android/server/am/KillPolicyManager$KpmState;->ordinal()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1667
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v4}, Lcom/android/server/am/KillPolicyManager$KpmState;->ordinal()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1669
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1670
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v4}, Lcom/android/server/am/KillPolicyManager$KpmState;->ordinal()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1671
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiCpuSum:D

    iget v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1673
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1674
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiMemorySum:D

    iget v8, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v8, v8

    div-double/2addr v4, v8

    add-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1675
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiIoSum:D

    iget v8, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v8, v8

    div-double/2addr v4, v8

    add-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1677
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1678
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiCpuMax:D

    add-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1679
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiMemoryMax:D

    add-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1681
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiIoMax:D

    add-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1683
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1684
    iget v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1685
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1686
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->timeStamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1687
    return-object v0
.end method

.method public updateCycleInfo()V
    .registers 8

    .line 1503
    invoke-direct {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateRawLaunchState()V

    .line 1504
    invoke-direct {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateRawProcessLmkdCount()V

    .line 1505
    invoke-direct {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateRawResetStatus()V

    .line 1506
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mkillCount:I
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->access$1400(Lcom/android/server/am/KillPolicyManager;)I

    move-result v1

    # setter for: Lcom/android/server/am/KillPolicyManager;->mprevKillCount:I
    invoke-static {v0, v1}, Lcom/android/server/am/KillPolicyManager;->access$1302(Lcom/android/server/am/KillPolicyManager;I)I

    .line 1507
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mlmkCount:J
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->access$1500(Lcom/android/server/am/KillPolicyManager;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mprevLmkCount:J
    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager;->access$1600(Lcom/android/server/am/KillPolicyManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkCnt:J

    .line 1508
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mlmkdCric:J
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->access$1700(Lcom/android/server/am/KillPolicyManager;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mprevLmkdCric:J
    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager;->access$1800(Lcom/android/server/am/KillPolicyManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCric:J

    .line 1509
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mlkmdMed:J
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->access$1900(Lcom/android/server/am/KillPolicyManager;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mprevLmkdMed:J
    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager;->access$2000(Lcom/android/server/am/KillPolicyManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdMed:J

    .line 1511
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    div-int/2addr v0, v1

    .line 1512
    .local v0, "avgMem":I
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    div-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    .line 1513
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    div-int/2addr v2, v1

    .line 1514
    .local v2, "avgSwapUse":I
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mavgMetric:I
    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager;->access$2100(Lcom/android/server/am/KillPolicyManager;)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_8e

    .line 1515
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_BTIME_ENABLE:Z

    if-eqz v1, :cond_86

    .line 1517
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mKpmStartTime:J
    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager;->access$2200(Lcom/android/server/am/KillPolicyManager;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    .line 1518
    .local v3, "bootTimeElapsed":J
    const-wide/16 v5, 0xb4

    cmp-long v1, v3, v5

    if-ltz v1, :cond_7d

    .line 1519
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {v1, p0}, Lcom/android/server/am/KillPolicyManager;->changeState(Lcom/android/server/am/KillPolicyManager$KpmRaw;)Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_85

    .line 1521
    :cond_7d
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;
    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager;->access$500(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1523
    .end local v3    # "bootTimeElapsed":J
    :goto_85
    goto :goto_8e

    .line 1524
    :cond_86
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {v1, p0}, Lcom/android/server/am/KillPolicyManager;->changeState(Lcom/android/server/am/KillPolicyManager$KpmRaw;)Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1527
    :cond_8e
    :goto_8e
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->timeStamp:Ljava/lang/String;

    .line 1528
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lastUpdateTime:J

    .line 1529
    return-void
.end method

.method public updatePsiInfo(DDD)V
    .registers 9
    .param p1, "cpu"    # D
    .param p3, "mem"    # D
    .param p5, "io"    # D

    .line 1483
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiCpuSum:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiCpuSum:D

    .line 1484
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiMemorySum:D

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiMemorySum:D

    .line 1485
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiIoSum:D

    add-double/2addr v0, p5

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiIoSum:D

    .line 1487
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiCpuMax:D

    cmpg-double v0, v0, p1

    if-gez v0, :cond_17

    .line 1488
    iput-wide p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiCpuMax:D

    .line 1490
    :cond_17
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiMemoryMax:D

    cmpg-double v0, v0, p3

    if-gez v0, :cond_1f

    .line 1491
    iput-wide p3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiMemoryMax:D

    .line 1493
    :cond_1f
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiIoMax:D

    cmpg-double v0, v0, p5

    if-gez v0, :cond_27

    .line 1494
    iput-wide p5, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiIoMax:D

    .line 1497
    :cond_27
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_51

    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Psi info cpu : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", memory : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", io : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager_KPM"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    :cond_51
    return-void
.end method

.method updateRawProcessCount()V
    .registers 3

    .line 1585
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget v1, v1, Lcom/android/server/am/KillPolicyManager;->mCachedCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    .line 1586
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActCnt:I

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget v1, v1, Lcom/android/server/am/KillPolicyManager;->mCachedActCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActCnt:I

    .line 1587
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->seedbedTotalCnt:I

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget v1, v1, Lcom/android/server/am/KillPolicyManager;->mSeedbedCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->seedbedTotalCnt:I

    .line 1588
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget v1, v1, Lcom/android/server/am/KillPolicyManager;->mPickedCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    .line 1589
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActCnt:I

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mPickedActCount:I
    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager;->access$2700(Lcom/android/server/am/KillPolicyManager;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActCnt:I

    .line 1590
    return-void
.end method

.method public updateScenarioInfo(III)V
    .registers 9
    .param p1, "mem"    # I
    .param p2, "swap"    # I
    .param p3, "cached"    # I

    .line 1451
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 1452
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    .line 1453
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mavlMem:I
    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager;->access$700(Lcom/android/server/am/KillPolicyManager;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    .line 1454
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    .line 1455
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateRawProcessCount()V

    .line 1456
    invoke-direct {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateRawLaunchState()V

    .line 1457
    invoke-direct {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateRawResetStatus()V

    .line 1458
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # invokes: Lcom/android/server/am/KillPolicyManager;->getLaunchedPackageCount()I
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->access$800(Lcom/android/server/am/KillPolicyManager;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    .line 1459
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    const/16 v1, 0x2bc

    # invokes: Lcom/android/server/am/KillPolicyManager;->getKilledPackageCountOfAdj(I)I
    invoke-static {v0, v1}, Lcom/android/server/am/KillPolicyManager;->access$900(Lcom/android/server/am/KillPolicyManager;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageCount:I

    .line 1460
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_106

    .line 1461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateScenarioInfo() appCnt - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " launch total - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hot launch("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotRatio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%) hot - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " warm - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cold - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager_KPM"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cur previousKillRatio = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledRatio:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%, serviceKillRatio = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->svKilledRatio:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%, killedPackageRatio = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRawProcessCount() Average Cached (T:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    iget v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    div-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/A:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActCnt:I

    iget v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    div-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), Picked (T:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    iget v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    div-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActCnt:I

    iget v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    div-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), Seed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->seedbedTotalCnt:I

    iget v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    div-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_106
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minMem:I

    if-le v0, p1, :cond_10b

    move v0, p1

    :cond_10b
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minMem:I

    .line 1473
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxMem:I

    if-ge v0, p1, :cond_112

    move v0, p1

    :cond_112
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxMem:I

    .line 1474
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minSwap:I

    if-le v0, p2, :cond_119

    move v0, p2

    :cond_119
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minSwap:I

    .line 1475
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxSwap:I

    if-ge v0, p2, :cond_120

    move v0, p2

    :cond_120
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxSwap:I

    .line 1477
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mCachedNormalKillCount:I
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->access$1000(Lcom/android/server/am/KillPolicyManager;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mCachedNormalKillCount:I

    .line 1478
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mCachedEmptyKillCount:I
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->access$1100(Lcom/android/server/am/KillPolicyManager;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mCachedEmptyKillCount:I

    .line 1479
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mCachedClientKillCount:I
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->access$1200(Lcom/android/server/am/KillPolicyManager;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mCachedClientKillCount:I

    .line 1480
    return-void
.end method
