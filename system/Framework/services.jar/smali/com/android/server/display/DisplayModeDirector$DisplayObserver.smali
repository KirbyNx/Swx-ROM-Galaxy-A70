.class final Lcom/android/server/display/DisplayModeDirector$DisplayObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1543
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1544
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->mContext:Landroid/content/Context;

    .line 1545
    iput-object p3, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->mHandler:Landroid/os/Handler;

    .line 1546
    return-void
.end method

.method private updateDisplayModes(I)V
    .registers 9
    .param p1, "displayId"    # I

    .line 1601
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1602
    .local v0, "d":Landroid/view/Display;
    if-nez v0, :cond_11

    .line 1606
    return-void

    .line 1608
    :cond_11
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 1609
    .local v1, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1610
    const/4 v2, 0x0

    .line 1611
    .local v2, "changed":Z
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector;->access$500(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1612
    :try_start_21
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->access$1800(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    iget-object v5, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    .line 1613
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->access$1800(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v4

    iget-object v5, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1614
    const/4 v2, 0x1

    .line 1616
    :cond_41
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->access$1900(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1618
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_59

    iget v5, v1, Landroid/view/DisplayInfo;->type:I

    if-ne v5, v6, :cond_59

    .line 1619
    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getRealMode()Landroid/view/Display$Mode;

    move-result-object v5

    goto :goto_5d

    .line 1620
    :cond_59
    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v5

    .line 1616
    :goto_5d
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    .line 1621
    const/4 v2, 0x1

    .line 1622
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->access$1900(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v4

    .line 1624
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v5, :cond_77

    iget v5, v1, Landroid/view/DisplayInfo;->type:I

    if-ne v5, v6, :cond_77

    .line 1625
    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getRealMode()Landroid/view/Display$Mode;

    move-result-object v5

    goto :goto_7b

    .line 1627
    :cond_77
    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v5

    .line 1622
    :goto_7b
    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1629
    :cond_7e
    if-eqz v2, :cond_85

    .line 1630
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # invokes: Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V
    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->access$2000(Lcom/android/server/display/DisplayModeDirector;)V

    .line 1632
    :cond_85
    monitor-exit v3

    .line 1633
    return-void

    .line 1632
    :catchall_87
    move-exception v4

    monitor-exit v3
    :try_end_89
    .catchall {:try_start_21 .. :try_end_89} :catchall_87

    throw v4
.end method


# virtual methods
.method public observe()V
    .registers 13

    .line 1549
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1550
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1553
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1554
    .local v1, "modes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[Landroid/view/Display$Mode;>;"
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1557
    .local v2, "defaultModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/Display$Mode;>;"
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v3, :cond_23

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    .line 1559
    .local v3, "displayTypes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    :goto_24
    new-instance v4, Landroid/view/DisplayInfo;

    invoke-direct {v4}, Landroid/view/DisplayInfo;-><init>()V

    .line 1560
    .local v4, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v5

    .line 1561
    .local v5, "displays":[Landroid/view/Display;
    array-length v6, v5

    const/4 v7, 0x0

    :goto_2f
    if-ge v7, v6, :cond_58

    aget-object v8, v5, v7

    .line 1562
    .local v8, "d":Landroid/view/Display;
    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    .line 1563
    .local v9, "displayId":I
    invoke-virtual {v8, v4}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1564
    iget-object v10, v4, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-virtual {v1, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1565
    nop

    .line 1567
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v10, :cond_4e

    iget v10, v4, Landroid/view/DisplayInfo;->type:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4e

    .line 1568
    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getRealMode()Landroid/view/Display$Mode;

    move-result-object v10

    goto :goto_52

    .line 1570
    :cond_4e
    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v10

    .line 1565
    :goto_52
    invoke-virtual {v2, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1561
    .end local v8    # "d":Landroid/view/Display;
    .end local v9    # "displayId":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    .line 1572
    :cond_58
    iget-object v6, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/display/DisplayModeDirector;->access$500(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1573
    :try_start_5f
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 1574
    .local v7, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_64
    if-ge v8, v7, :cond_8f

    .line 1575
    iget-object v9, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;
    invoke-static {v9}, Lcom/android/server/display/DisplayModeDirector;->access$1800(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/view/Display$Mode;

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1576
    iget-object v9, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;
    invoke-static {v9}, Lcom/android/server/display/DisplayModeDirector;->access$1900(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/Display$Mode;

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1574
    add-int/lit8 v8, v8, 0x1

    goto :goto_64

    .line 1578
    .end local v7    # "size":I
    .end local v8    # "i":I
    :cond_8f
    monitor-exit v6

    .line 1579
    return-void

    .line 1578
    :catchall_91
    move-exception v7

    monitor-exit v6
    :try_end_93
    .catchall {:try_start_5f .. :try_end_93} :catchall_91

    throw v7
.end method

.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 1583
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->updateDisplayModes(I)V

    .line 1584
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 1596
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->updateDisplayModes(I)V

    .line 1597
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$200(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onDisplayChanged(I)V

    .line 1598
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 1588
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$500(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1589
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$1800(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1590
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$1900(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1591
    monitor-exit v0

    .line 1592
    return-void

    .line 1591
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1
.end method
