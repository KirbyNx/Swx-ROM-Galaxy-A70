.class Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 680
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 683
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # getter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverHideAnimator:Lcom/android/server/sepunion/cover/CoverHideAnimator;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$1700(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/android/server/sepunion/cover/CoverHideAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # getter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAnimationStartCallback:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$1500(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 684
    # getter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsNeedWakeUpWithDealy:Z
    invoke-static {v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$1600(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Z

    move-result v2

    .line 683
    invoke-virtual {v0, v1, v2}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->playCoverHideAnimation(Ljava/lang/Runnable;Z)V

    .line 685
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # getter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$000(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 686
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # getter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;
    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$400(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/android/server/sepunion/cover/StateNotifier;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # getter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;
    invoke-static {v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$500(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/samsung/android/cover/CoverState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # getter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;
    invoke-static {v3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$500(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/sepunion/cover/StateNotifier;->updatePowerState(IZ)V

    .line 687
    monitor-exit v0

    .line 688
    return-void

    .line 687
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_1c .. :try_end_3d} :catchall_3b

    throw v1
.end method
