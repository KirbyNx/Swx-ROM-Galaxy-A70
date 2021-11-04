.class Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;
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

    .line 110
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # getter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$000(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 114
    :try_start_7
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # invokes: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;
    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$100(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    .line 115
    .local v1, "coverState":Lcom/samsung/android/cover/CoverState;
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # invokes: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V
    invoke-static {v2, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$200(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;Lcom/samsung/android/cover/CoverState;)V

    .line 116
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # getter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;
    invoke-static {v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$300(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/android/server/sepunion/cover/CoverServiceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 117
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # getter for: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;
    invoke-static {v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$400(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/android/server/sepunion/cover/StateNotifier;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;Z)V

    .line 118
    .end local v1    # "coverState":Lcom/samsung/android/cover/CoverState;
    monitor-exit v0

    .line 119
    return-void

    .line 118
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw v1
.end method
