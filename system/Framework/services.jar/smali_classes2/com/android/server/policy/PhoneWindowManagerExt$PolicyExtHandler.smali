.class Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;
.super Landroid/os/Handler;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyExtHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 2

    .line 1598
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;Lcom/android/server/policy/PhoneWindowManagerExt$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p2, "x1"    # Lcom/android/server/policy/PhoneWindowManagerExt$1;

    .line 1598
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1601
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_56

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    const/4 v1, 0x4

    if-eq v0, v1, :cond_f

    goto :goto_6d

    .line 1639
    :cond_f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->removeNoActionLogForFoldable()V

    .line 1640
    goto :goto_6d

    .line 1634
    :cond_15
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->insertNoActionLogForFoldable()V

    .line 1635
    goto :goto_6d

    .line 1610
    :cond_1b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->shouldBeLoggingHalfOpenMode()I

    move-result v0

    .line 1611
    .local v0, "foldState":I
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1612
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopPairPackageNames()Ljava/lang/String;

    move-result-object v3

    .line 1613
    .local v3, "topPairPackageNames":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_42

    .line 1614
    if-ne v0, v2, :cond_3b

    .line 1615
    const-string v2, "W012"

    invoke-static {v2, v3}, Lcom/samsung/android/core/CoreSALogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    .line 1617
    :cond_3b
    if-ne v0, v1, :cond_42

    .line 1618
    const-string v2, "W013"

    invoke-static {v2, v3}, Lcom/samsung/android/core/CoreSALogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    :cond_42
    :goto_42
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1624
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getLastResumedActivityName()Ljava/lang/String;

    move-result-object v2

    .line 1625
    .local v2, "lastResumedActivityName":Ljava/lang/String;
    const-string v4, "W010"

    invoke-static {v4, v2}, Lcom/samsung/android/core/CoreSALogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iput-boolean v1, v4, Lcom/android/server/policy/PhoneWindowManagerExt;->mShouldBeLogging:Z

    .line 1628
    goto :goto_6d

    .line 1603
    .end local v0    # "foldState":I
    .end local v2    # "lastResumedActivityName":Ljava/lang/String;
    .end local v3    # "topPairPackageNames":Ljava/lang/String;
    :cond_56
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v0, :cond_6d

    .line 1604
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->reconfigureDisplay(I)V

    .line 1647
    :cond_6d
    :goto_6d
    return-void
.end method
