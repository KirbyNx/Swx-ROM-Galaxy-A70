.class final Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
.super Ljava/lang/Object;
.source "AccessibilityWindowManager.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayWindowsObserver"
.end annotation


# instance fields
.field private final mA11yWindowInfoById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedWindowInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayId:I

.field private mHasWatchOutsideTouchWindow:Z

.field private mTrackingWindows:Z

.field private final mWindowInfoById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .registers 3
    .param p2, "displayId"    # I

    .line 138
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    .line 129
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    .line 130
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    .line 132
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    .line 139
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    .line 140
    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 123
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    return v0
.end method

.method private cacheWindows(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 403
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 404
    .local v0, "oldWindowCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_18

    .line 405
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    invoke-virtual {v2}, Landroid/view/WindowInfo;->recycle()V

    .line 404
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 407
    .end local v1    # "i":I
    :cond_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 408
    .local v1, "newWindowCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    if-ge v2, v1, :cond_31

    .line 409
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInfo;

    .line 410
    .local v3, "newWindow":Landroid/view/WindowInfo;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-static {v3}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    .end local v3    # "newWindow":Landroid/view/WindowInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 412
    .end local v2    # "i":I
    :cond_31
    return-void
.end method

.method private clearWindowsLocked()V
    .registers 4

    .line 480
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 481
    .local v0, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # getter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$700(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v1

    .line 484
    .local v1, "activeWindowId":I
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # getter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$600(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->updateWindowsLocked(ILjava/util/List;)V

    .line 487
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # setter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I
    invoke-static {v2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$702(Lcom/android/server/accessibility/AccessibilityWindowManager;I)I

    .line 488
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 489
    return-void
.end method

.method private getTypeForWindowManagerWindowType(I)I
    .registers 7
    .param p1, "windowType"    # I

    .line 699
    const/4 v0, 0x1

    if-eq p1, v0, :cond_47

    const/4 v1, 0x2

    if-eq p1, v1, :cond_47

    const/4 v2, 0x3

    if-eq p1, v2, :cond_47

    const/4 v3, 0x4

    if-eq p1, v3, :cond_47

    const/16 v4, 0x3ed

    if-eq p1, v4, :cond_47

    const/16 v4, 0x7e1

    if-eq p1, v4, :cond_46

    const/16 v4, 0x7e8

    if-eq p1, v4, :cond_46

    const/16 v4, 0x7f0

    if-eq p1, v4, :cond_45

    const/16 v3, 0x7f2

    if-eq p1, v3, :cond_43

    const/16 v3, 0x7f4

    if-eq p1, v3, :cond_46

    const/16 v3, 0x7f6

    if-eq p1, v3, :cond_46

    const/16 v3, 0x8b2

    if-eq p1, v3, :cond_46

    const/16 v3, 0x7e3

    if-eq p1, v3, :cond_46

    const/16 v3, 0x7e4

    if-eq p1, v3, :cond_46

    packed-switch p1, :pswitch_data_48

    packed-switch p1, :pswitch_data_54

    packed-switch p1, :pswitch_data_60

    packed-switch p1, :pswitch_data_74

    .line 751
    const/4 v0, -0x1

    return v0

    .line 717
    :pswitch_42
    return v1

    .line 743
    :cond_43
    const/4 v0, 0x5

    return v0

    .line 747
    :cond_45
    return v3

    .line 739
    :cond_46
    :pswitch_46
    return v2

    .line 712
    :cond_47
    :pswitch_47
    return v0

    :pswitch_data_48
    .packed-switch 0x3e8
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
    .end packed-switch

    :pswitch_data_54
    .packed-switch 0x7d0
        :pswitch_46
        :pswitch_46
        :pswitch_47
        :pswitch_46
    .end packed-switch

    :pswitch_data_60
    .packed-switch 0x7d5
        :pswitch_47
        :pswitch_46
        :pswitch_47
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_42
        :pswitch_42
    .end packed-switch

    :pswitch_data_74
    .packed-switch 0x7f8
        :pswitch_46
        :pswitch_46
        :pswitch_46
    .end packed-switch
.end method

.method private populateReportedWindowLocked(ILandroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 10
    .param p1, "userId"    # I
    .param p2, "window"    # Landroid/view/WindowInfo;

    .line 657
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v1, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v0

    .line 658
    .local v0, "windowId":I
    if-gez v0, :cond_c

    .line 659
    const/4 v1, 0x0

    return-object v1

    .line 662
    :cond_c
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    .line 664
    .local v1, "reportedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setId(I)V

    .line 665
    iget v2, p2, Landroid/view/WindowInfo;->type:I

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->getTypeForWindowManagerWindowType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setType(I)V

    .line 668
    iget v2, p2, Landroid/view/WindowInfo;->type:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->semSetRawType(I)V

    .line 671
    iget v2, p2, Landroid/view/WindowInfo;->layer:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    .line 672
    iget-boolean v2, p2, Landroid/view/WindowInfo;->focused:Z

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setFocused(Z)V

    .line 673
    iget-object v2, p2, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setRegionInScreen(Landroid/graphics/Region;)V

    .line 674
    iget-object v2, p2, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 675
    iget-wide v2, p2, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAnchorId(J)V

    .line 676
    iget-boolean v2, p2, Landroid/view/WindowInfo;->inPictureInPicture:Z

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setPictureInPicture(Z)V

    .line 677
    iget v2, p2, Landroid/view/WindowInfo;->displayId:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setDisplayId(I)V

    .line 679
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v3, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v2

    .line 680
    .local v2, "parentId":I
    if-ltz v2, :cond_51

    .line 681
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setParentId(I)V

    .line 684
    :cond_51
    iget-object v3, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v3, :cond_74

    .line 685
    iget-object v3, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 686
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5c
    if-ge v4, v3, :cond_74

    .line 687
    iget-object v5, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    .line 688
    .local v5, "childToken":Landroid/os/IBinder;
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v6, p1, v5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v6

    .line 689
    .local v6, "childId":I
    if-ltz v6, :cond_71

    .line 690
    invoke-virtual {v1, v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->addChild(I)V

    .line 686
    .end local v5    # "childToken":Landroid/os/IBinder;
    .end local v6    # "childId":I
    :cond_71
    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    .line 695
    .end local v3    # "childCount":I
    .end local v4    # "i":I
    :cond_74
    return-object v1
.end method

.method private sendEventsForChangedWindowsLocked(Ljava/util/List;Landroid/util/SparseArray;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 621
    .local p1, "oldWindows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .local p2, "oldWindowsById":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 624
    .local v1, "oldWindowsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_2e

    .line 625
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 626
    .local v3, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2b

    .line 627
    nop

    .line 628
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v4

    const/4 v5, 0x2

    .line 627
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    .end local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 633
    .end local v2    # "i":I
    :cond_2e
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 634
    .local v2, "newWindowCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_35
    if-ge v3, v2, :cond_6e

    .line 635
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 636
    .local v4, "newWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 637
    .local v5, "oldWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v5, :cond_59

    .line 638
    nop

    .line 639
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    .line 638
    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    .line 641
    :cond_59
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->differenceFrom(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    move-result v6

    .line 642
    .local v6, "changes":I
    if-eqz v6, :cond_6b

    .line 643
    nop

    .line 644
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v7

    .line 643
    invoke-static {v7, v6}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    .end local v4    # "newWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v5    # "oldWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v6    # "changes":I
    :cond_6b
    :goto_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 649
    .end local v3    # "i":I
    :cond_6e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 650
    .local v3, "numEvents":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_73
    if-ge v4, v3, :cond_87

    .line 651
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # getter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$100(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    move-result-object v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityEvent;

    invoke-interface {v5, v6}, Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 650
    add-int/lit8 v4, v4, 0x1

    goto :goto_73

    .line 653
    .end local v4    # "i":I
    :cond_87
    return-void
.end method

.method private shouldUpdateWindowsLocked(ZLjava/util/List;)Z
    .registers 9
    .param p1, "forceSend"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)Z"
        }
    .end annotation

    .line 374
    .local p2, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 375
    return v0

    .line 378
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 380
    .local v1, "windowCount":I
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v1, :cond_11

    .line 382
    return v0

    .line 383
    :cond_11
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 387
    :cond_1f
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    if-ge v2, v1, :cond_3a

    .line 388
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInfo;

    .line 389
    .local v3, "oldWindow":Landroid/view/WindowInfo;
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowInfo;

    .line 393
    .local v4, "newWindow":Landroid/view/WindowInfo;
    invoke-direct {p0, v3, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 394
    return v0

    .line 387
    .end local v3    # "oldWindow":Landroid/view/WindowInfo;
    .end local v4    # "newWindow":Landroid/view/WindowInfo;
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 399
    .end local v2    # "i":I
    :cond_3a
    const/4 v0, 0x0

    return v0
.end method

.method private updateWindowsLocked(ILjava/util/List;)V
    .registers 19
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 498
    .local p2, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-nez v2, :cond_f

    .line 499
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 502
    :cond_f
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 503
    .local v2, "oldWindowList":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v3

    .line 504
    .local v3, "oldWindowsById":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    const/4 v4, 0x0

    .line 506
    .local v4, "shouldClearAccessibilityFocus":Z
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 507
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 509
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_28
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3e

    .line 510
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowInfo;

    invoke-virtual {v6}, Landroid/view/WindowInfo;->recycle()V

    .line 509
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 512
    .end local v5    # "i":I
    :cond_3e
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 513
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    .line 515
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    .line 516
    .local v6, "windowCount":I
    iget v7, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    iget-object v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # getter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedDisplayId:I
    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$400(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v7, v8, :cond_57

    move v7, v9

    goto :goto_58

    :cond_57
    move v7, v5

    .line 517
    .local v7, "isTopFocusedDisplay":Z
    :goto_58
    iget v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    iget-object v10, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 518
    # getter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedDisplayId:I
    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$200(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v10

    if-ne v8, v10, :cond_64

    move v8, v9

    goto :goto_65

    :cond_64
    move v8, v5

    .line 521
    .local v8, "isAccessibilityFocusedDisplay":Z
    :goto_65
    const/4 v10, -0x1

    if-eqz v7, :cond_8a

    .line 522
    if-lez v6, :cond_78

    .line 524
    iget-object v11, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # getter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowToken:Landroid/os/IBinder;
    invoke-static {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$500(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/os/IBinder;

    move-result-object v12

    invoke-virtual {v11, v1, v12}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v12

    # setter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I
    invoke-static {v11, v12}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$802(Lcom/android/server/accessibility/AccessibilityWindowManager;I)I

    goto :goto_7d

    .line 527
    :cond_78
    iget-object v11, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # setter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I
    invoke-static {v11, v10}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$802(Lcom/android/server/accessibility/AccessibilityWindowManager;I)I

    .line 530
    :goto_7d
    iget-object v11, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # getter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z
    invoke-static {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$900(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z

    move-result v11

    if-nez v11, :cond_8a

    .line 531
    iget-object v11, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # setter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I
    invoke-static {v11, v10}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$702(Lcom/android/server/accessibility/AccessibilityWindowManager;I)I

    .line 540
    :cond_8a
    const/4 v11, 0x1

    .line 544
    .local v11, "activeWindowGone":Z
    if-eqz v8, :cond_97

    .line 545
    iget-object v12, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # getter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I
    invoke-static {v12}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$1000(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v12

    if-eq v12, v10, :cond_96

    move v5, v9

    :cond_96
    move v4, v5

    .line 548
    :cond_97
    if-lez v6, :cond_15f

    .line 549
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_9a
    if-ge v5, v6, :cond_101

    .line 550
    move-object/from16 v10, p2

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowInfo;

    .line 552
    .local v12, "windowInfo":Landroid/view/WindowInfo;
    iget-boolean v13, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    if-eqz v13, :cond_ad

    .line 553
    invoke-direct {v0, v1, v12}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->populateReportedWindowLocked(ILandroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v13

    .local v13, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    goto :goto_ae

    .line 555
    .end local v13    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_ad
    const/4 v13, 0x0

    .line 557
    .restart local v13    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :goto_ae
    if-eqz v13, :cond_fd

    .line 560
    add-int/lit8 v14, v6, -0x1

    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v13, v14}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    .line 562
    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v14

    .line 563
    .local v14, "windowId":I
    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v15

    if-eqz v15, :cond_e0

    if-eqz v7, :cond_e0

    .line 564
    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # getter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z
    invoke-static {v15}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$900(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z

    move-result v15

    if-nez v15, :cond_d7

    .line 567
    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # setter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I
    invoke-static {v15, v14}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$702(Lcom/android/server/accessibility/AccessibilityWindowManager;I)I

    .line 568
    invoke-virtual {v13, v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    goto :goto_e0

    .line 569
    :cond_d7
    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # getter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I
    invoke-static {v15}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$700(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v15

    if-ne v14, v15, :cond_e0

    .line 570
    const/4 v11, 0x0

    .line 573
    :cond_e0
    :goto_e0
    iget-boolean v15, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    if-nez v15, :cond_ea

    iget-boolean v15, v12, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    if-eqz v15, :cond_ea

    .line 574
    iput-boolean v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    .line 576
    :cond_ea
    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v15, v14, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 578
    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-static {v12}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v9

    invoke-virtual {v15, v14, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 549
    .end local v12    # "windowInfo":Landroid/view/WindowInfo;
    .end local v13    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v14    # "windowId":I
    :cond_fd
    add-int/lit8 v5, v5, 0x1

    const/4 v9, 0x1

    goto :goto_9a

    :cond_101
    move-object/from16 v10, p2

    .line 581
    .end local v5    # "i":I
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 582
    .local v5, "accessibilityWindowCount":I
    if-eqz v7, :cond_13c

    .line 583
    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # getter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$900(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z

    move-result v9

    if-eqz v9, :cond_11e

    if-eqz v11, :cond_11e

    .line 584
    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # getter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$800(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v12

    # setter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I
    invoke-static {v9, v12}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$702(Lcom/android/server/accessibility/AccessibilityWindowManager;I)I

    .line 588
    :cond_11e
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_11f
    if-ge v9, v5, :cond_13c

    .line 589
    iget-object v12, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 590
    .local v12, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v13

    iget-object v14, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # getter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I
    invoke-static {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$700(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v14

    if-ne v13, v14, :cond_139

    .line 591
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 588
    .end local v12    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_139
    add-int/lit8 v9, v9, 0x1

    goto :goto_11f

    .line 595
    .end local v9    # "i":I
    :cond_13c
    if-eqz v8, :cond_161

    .line 596
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_13f
    if-ge v9, v5, :cond_161

    .line 597
    iget-object v12, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 598
    .restart local v12    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v13

    iget-object v14, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # getter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I
    invoke-static {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$1000(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v14

    if-ne v13, v14, :cond_15b

    .line 599
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 600
    const/4 v4, 0x0

    .line 601
    goto :goto_161

    .line 598
    :cond_15b
    const/4 v13, 0x1

    .line 596
    .end local v12    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    add-int/lit8 v9, v9, 0x1

    goto :goto_13f

    .line 548
    .end local v5    # "accessibilityWindowCount":I
    .end local v9    # "i":I
    :cond_15f
    move-object/from16 v10, p2

    .line 607
    :cond_161
    :goto_161
    invoke-direct {v0, v2, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->sendEventsForChangedWindowsLocked(Ljava/util/List;Landroid/util/SparseArray;)V

    .line 609
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 610
    .local v5, "oldWindowCount":I
    add-int/lit8 v9, v5, -0x1

    .restart local v9    # "i":I
    :goto_16a
    if-ltz v9, :cond_178

    .line 611
    invoke-interface {v2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 610
    add-int/lit8 v9, v9, -0x1

    goto :goto_16a

    .line 614
    .end local v9    # "i":I
    :cond_178
    if-eqz v4, :cond_183

    .line 615
    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # getter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$1000(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v12

    # invokes: Lcom/android/server/accessibility/AccessibilityWindowManager;->clearAccessibilityFocusLocked(I)V
    invoke-static {v9, v12}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$1100(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 617
    :cond_183
    return-void
.end method

.method private windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z
    .registers 9
    .param p1, "oldWindow"    # Landroid/view/WindowInfo;
    .param p2, "newWindow"    # Landroid/view/WindowInfo;

    .line 415
    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    .line 416
    return v0

    .line 418
    :cond_4
    const/4 v1, 0x1

    if-nez p1, :cond_8

    .line 419
    return v1

    .line 421
    :cond_8
    if-nez p2, :cond_b

    .line 422
    return v1

    .line 424
    :cond_b
    iget v2, p1, Landroid/view/WindowInfo;->type:I

    iget v3, p2, Landroid/view/WindowInfo;->type:I

    if-eq v2, v3, :cond_12

    .line 425
    return v1

    .line 427
    :cond_12
    iget-boolean v2, p1, Landroid/view/WindowInfo;->focused:Z

    iget-boolean v3, p2, Landroid/view/WindowInfo;->focused:Z

    if-eq v2, v3, :cond_19

    .line 428
    return v1

    .line 430
    :cond_19
    iget-object v2, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_22

    .line 431
    iget-object v2, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-eqz v2, :cond_2d

    .line 432
    return v1

    .line 434
    :cond_22
    iget-object v2, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    iget-object v3, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 435
    return v1

    .line 437
    :cond_2d
    iget-object v2, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-nez v2, :cond_36

    .line 438
    iget-object v2, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-eqz v2, :cond_41

    .line 439
    return v1

    .line 441
    :cond_36
    iget-object v2, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    iget-object v3, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 442
    return v1

    .line 444
    :cond_41
    iget-object v2, p1, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    if-nez v2, :cond_4a

    .line 445
    iget-object v2, p2, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    if-eqz v2, :cond_55

    .line 446
    return v1

    .line 448
    :cond_4a
    iget-object v2, p1, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    iget-object v3, p2, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 449
    return v1

    .line 451
    :cond_55
    iget-object v2, p1, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    iget-object v3, p2, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v2, v3}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 452
    return v1

    .line 454
    :cond_60
    iget-object v2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v2, :cond_73

    iget-object v2, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v2, :cond_73

    iget-object v2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v3, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 455
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    .line 456
    return v1

    .line 458
    :cond_73
    iget-object v2, p1, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    iget-object v3, p2, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7e

    .line 459
    return v1

    .line 461
    :cond_7e
    iget-wide v2, p1, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    iget-wide v4, p2, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_87

    .line 462
    return v1

    .line 464
    :cond_87
    iget-boolean v2, p1, Landroid/view/WindowInfo;->inPictureInPicture:Z

    iget-boolean v3, p2, Landroid/view/WindowInfo;->inPictureInPicture:Z

    if-eq v2, v3, :cond_8e

    .line 465
    return v1

    .line 467
    :cond_8e
    iget-boolean v2, p1, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    iget-boolean v3, p2, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    if-eq v2, v3, :cond_95

    .line 468
    return v1

    .line 470
    :cond_95
    iget v2, p1, Landroid/view/WindowInfo;->displayId:I

    iget v3, p2, Landroid/view/WindowInfo;->displayId:I

    if-eq v2, v3, :cond_9c

    .line 471
    return v1

    .line 473
    :cond_9c
    return v0
.end method


# virtual methods
.method computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z
    .registers 11
    .param p1, "windowId"    # I
    .param p2, "outRegion"    # Landroid/graphics/Region;

    .line 293
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-nez v0, :cond_6

    .line 294
    const/4 v0, 0x0

    return v0

    .line 301
    :cond_6
    const/4 v1, 0x0

    .line 302
    .local v1, "windowInteractiveRegion":Landroid/graphics/Region;
    const/4 v2, 0x0

    .line 304
    .local v2, "windowInteractiveRegionChanged":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 305
    .local v0, "windowCount":I
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    .line 306
    .local v3, "currentWindowRegions":Landroid/graphics/Region;
    add-int/lit8 v4, v0, -0x1

    .local v4, "i":I
    :goto_13
    if-ltz v4, :cond_43

    .line 307
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 308
    .local v5, "currentWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v1, :cond_2d

    .line 309
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    if-ne v6, p1, :cond_40

    .line 310
    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRegionInScreen(Landroid/graphics/Region;)V

    .line 311
    invoke-virtual {p2, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 312
    move-object v1, p2

    .line 313
    goto :goto_40

    .line 315
    :cond_2d
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_40

    .line 317
    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRegionInScreen(Landroid/graphics/Region;)V

    .line 318
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v3, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 319
    const/4 v2, 0x1

    .line 306
    .end local v5    # "currentWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_40
    :goto_40
    add-int/lit8 v4, v4, -0x1

    goto :goto_13

    .line 324
    .end local v4    # "i":I
    :cond_43
    return v2
.end method

.method dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 760
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-eqz v0, :cond_4c

    .line 761
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 762
    .local v0, "windowCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_9
    if-ge v1, v0, :cond_49

    .line 763
    if-nez v1, :cond_23

    .line 764
    const-string v2, "Display["

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 765
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 766
    const-string v2, "] : "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 767
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 769
    :cond_23
    if-lez v1, :cond_2d

    .line 770
    const/16 v2, 0x2c

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 771
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 773
    :cond_2d
    const-string v2, "Window["

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 774
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 775
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 776
    const/16 v3, 0x5d

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 762
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 778
    .end local v1    # "j":I
    :cond_49
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 780
    .end local v0    # "windowCount":I
    :cond_4c
    return-void
.end method

.method findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 3
    .param p1, "windowId"    # I

    .line 204
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    return-object v0
.end method

.method findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;
    .registers 3
    .param p1, "windowId"    # I

    .line 215
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInfo;

    return-object v0
.end method

.method getPictureInPictureWindowLocked()Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 5

    .line 225
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-eqz v0, :cond_1d

    .line 226
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 227
    .local v0, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1d

    .line 228
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 229
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 230
    return-object v2

    .line 227
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 234
    .end local v0    # "windowCount":I
    .end local v1    # "i":I
    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method getWatchOutsideTouchWindowIdLocked(I)Ljava/util/List;
    .registers 8
    .param p1, "targetWindowId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInfo;

    .line 329
    .local v0, "targetWindow":Landroid/view/WindowInfo;
    if-eqz v0, :cond_41

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    if-eqz v1, :cond_41

    .line 330
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v1, "outsideWindowsId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_40

    .line 332
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInfo;

    .line 333
    .local v3, "window":Landroid/view/WindowInfo;
    if-eqz v3, :cond_3d

    iget v4, v3, Landroid/view/WindowInfo;->layer:I

    iget v5, v0, Landroid/view/WindowInfo;->layer:I

    if-ge v4, v5, :cond_3d

    iget-boolean v4, v3, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    if-eqz v4, :cond_3d

    .line 335
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    .end local v3    # "window":Landroid/view/WindowInfo;
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 338
    .end local v2    # "i":I
    :cond_40
    return-object v1

    .line 340
    .end local v1    # "outsideWindowsId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method getWindowListLocked()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    return-object v0
.end method

.method isTrackingWindowsLocked()Z
    .registers 2

    .line 184
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    return v0
.end method

.method public onWindowsForAccessibilityChanged(ZILandroid/os/IBinder;Ljava/util/List;)V
    .registers 7
    .param p1, "forceSend"    # Z
    .param p2, "topFocusedDisplayId"    # I
    .param p3, "topFocusedWindowToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 354
    .local p4, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # getter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$300(Lcom/android/server/accessibility/AccessibilityWindowManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 359
    :try_start_7
    invoke-direct {p0, p1, p4}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->shouldUpdateWindowsLocked(ZLjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 360
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # setter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedDisplayId:I
    invoke-static {v1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$402(Lcom/android/server/accessibility/AccessibilityWindowManager;I)I

    .line 361
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # setter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowToken:Landroid/os/IBinder;
    invoke-static {v1, p3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$502(Lcom/android/server/accessibility/AccessibilityWindowManager;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 362
    invoke-direct {p0, p4}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->cacheWindows(Ljava/util/List;)V

    .line 364
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # getter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$600(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v1

    invoke-direct {p0, v1, p4}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->updateWindowsLocked(ILjava/util/List;)V

    .line 367
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # getter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$300(Lcom/android/server/accessibility/AccessibilityWindowManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 369
    :cond_30
    monitor-exit v0

    .line 370
    return-void

    .line 369
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw v1
.end method

.method setAccessibilityFocusedWindowLocked(I)V
    .registers 7
    .param p1, "windowId"    # I

    .line 266
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-eqz v0, :cond_3b

    .line 267
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 268
    .local v0, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_3b

    .line 269
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 270
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    if-ne v3, p1, :cond_34

    .line 271
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    # setter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedDisplayId:I
    invoke-static {v3, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$202(Lcom/android/server/accessibility/AccessibilityWindowManager;I)I

    .line 272
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 273
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # getter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$100(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    move-result-object v3

    const/16 v4, 0x80

    .line 274
    invoke-static {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    .line 273
    invoke-interface {v3, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_38

    .line 278
    :cond_34
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 268
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 282
    .end local v0    # "windowCount":I
    .end local v1    # "i":I
    :cond_3b
    return-void
.end method

.method setActiveWindowLocked(I)V
    .registers 7
    .param p1, "windowId"    # I

    .line 243
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-eqz v0, :cond_34

    .line 244
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 245
    .local v0, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_34

    .line 246
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 247
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    if-ne v3, p1, :cond_2d

    .line 248
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 249
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # getter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$100(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    move-result-object v3

    const/16 v4, 0x20

    .line 250
    invoke-static {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    .line 249
    invoke-interface {v3, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_31

    .line 253
    :cond_2d
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 245
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 257
    .end local v0    # "windowCount":I
    .end local v1    # "i":I
    :cond_34
    return-void
.end method

.method startTrackingWindowsLocked()Z
    .registers 4

    .line 148
    const/4 v0, 0x1

    .line 150
    .local v0, "result":Z
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    if-nez v1, :cond_32

    .line 154
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    .line 155
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # getter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$000(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    invoke-virtual {v1, v2, p0}, Lcom/android/server/wm/WindowManagerInternal;->setWindowsForAccessibilityCallback(ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)Z

    move-result v0

    .line 157
    if-nez v0, :cond_32

    .line 158
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set windowsObserver callbacks fail, displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccessibilityWindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_32
    return v0
.end method

.method stopTrackingWindowsLocked()V
    .registers 4

    .line 170
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    if-eqz v0, :cond_16

    .line 171
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    # getter for: Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$000(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->setWindowsForAccessibilityCallback(ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)Z

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    .line 174
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->clearWindowsLocked()V

    .line 176
    :cond_16
    return-void
.end method
