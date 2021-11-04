.class Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;
.super Ljava/lang/Object;
.source "McfDeviceSyncManager.java"

# interfaces
.implements Lcom/samsung/android/server/continuity/PreconditionObserver$StateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 84
    iput-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(I)V
    .registers 7
    .param p1, "state"    # I

    .line 87
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    # getter for: Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;
    invoke-static {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->access$000(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Lcom/samsung/android/server/continuity/PreconditionObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->meetConditions()Z

    move-result v0

    .line 88
    .local v0, "newState":Z
    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    # getter for: Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z
    invoke-static {v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->access$100(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Z

    move-result v1

    if-ne v1, v0, :cond_13

    .line 89
    return-void

    .line 92
    :cond_13
    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    # setter for: Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z
    invoke-static {v1, v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->access$102(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;Z)Z

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    # getter for: Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z
    invoke-static {v2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->access$100(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[MCF_DS_SYS]_McfDsManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    # getter for: Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z
    invoke-static {v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->access$100(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v1, :cond_51

    .line 96
    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    # getter for: Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;
    invoke-static {v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->access$200(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;->removeMessage(I)V

    .line 97
    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    # getter for: Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;
    invoke-static {v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->access$200(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_6f

    .line 99
    :cond_51
    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    # getter for: Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;
    invoke-static {v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->access$200(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;->removeMessage(I)V

    .line 100
    and-int/lit16 v1, p1, 0xf00

    if-lez v1, :cond_6a

    .line 101
    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    # getter for: Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;
    invoke-static {v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->access$200(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;

    move-result-object v1

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;->sendMessageDelayed(IJ)V

    goto :goto_6f

    .line 103
    :cond_6a
    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    # invokes: Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->unbindMcf()V
    invoke-static {v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->access$300(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V

    .line 106
    :goto_6f
    return-void
.end method

.method public onPackageReplaced()V
    .registers 5

    .line 110
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    # getter for: Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;
    invoke-static {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->access$200(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;

    move-result-object v0

    const/4 v1, 0x4

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;->sendMessageDelayed(IJ)V

    .line 111
    return-void
.end method
