.class final Lcom/android/server/wm/AppPairController$H;
.super Landroid/os/Handler;
.source "AppPairController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppPairController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final NOTIFY_NOT_SUPPORT_PAIR_EXECUTION_TOAST:I = 0x2

.field public static final SCHEDULE_INITIALIZE_PAIR_ACTIVITY_MODE:I = 0x1

.field public static final SCHEDULE_INITIALIZE_PAIR_ACTIVITY_MODE_DURATON:I = 0x7d0


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppPairController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppPairController;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/AppPairController;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 575
    iput-object p1, p0, Lcom/android/server/wm/AppPairController$H;->this$0:Lcom/android/server/wm/AppPairController;

    .line 576
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 577
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 581
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a

    goto :goto_5c

    .line 604
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/AppPairController$H;->this$0:Lcom/android/server/wm/AppPairController;

    # getter for: Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/AppPairController;->access$100(Lcom/android/server/wm/AppPairController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/AppPairController$H;->this$0:Lcom/android/server/wm/AppPairController;

    .line 605
    # getter for: Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v2}, Lcom/android/server/wm/AppPairController;->access$100(Lcom/android/server/wm/AppPairController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104071e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 604
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 608
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 610
    .end local v0    # "toast":Landroid/widget/Toast;
    goto :goto_5c

    .line 584
    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/AppPairController$H;->this$0:Lcom/android/server/wm/AppPairController;

    # getter for: Lcom/android/server/wm/AppPairController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;
    invoke-static {v0}, Lcom/android/server/wm/AppPairController;->access$000(Lcom/android/server/wm/AppPairController;)Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_34
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 585
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Landroid/content/Intent;

    .line 586
    .local v2, "intents":[Landroid/content/Intent;
    if-eqz v2, :cond_57

    .line 587
    const/4 v3, 0x0

    .line 588
    .local v3, "isNeededClear":Z
    array-length v4, v2

    :goto_3f
    if-ge v1, v4, :cond_50

    aget-object v5, v2, v1

    .line 589
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_4d

    .line 590
    invoke-virtual {v5}, Landroid/content/Intent;->getPairWindowingMode()I

    move-result v6

    if-eqz v6, :cond_4d

    .line 592
    const/4 v3, 0x1

    .line 593
    goto :goto_50

    .line 588
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 596
    :cond_50
    :goto_50
    if-eqz v3, :cond_57

    .line 597
    iget-object v1, p0, Lcom/android/server/wm/AppPairController$H;->this$0:Lcom/android/server/wm/AppPairController;

    invoke-virtual {v1}, Lcom/android/server/wm/AppPairController;->clearAllPairActivityModeLocked()V

    .line 600
    .end local v2    # "intents":[Landroid/content/Intent;
    .end local v3    # "isNeededClear":Z
    :cond_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_34 .. :try_end_58} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 602
    nop

    .line 614
    :goto_5c
    return-void

    .line 600
    :catchall_5d
    move-exception v1

    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
