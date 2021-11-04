.class Lcom/android/server/ibs/IbsQuickDim$2;
.super Landroid/app/IProcessObserver$Stub;
.source "IbsQuickDim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IbsQuickDim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ibs/IbsQuickDim;


# direct methods
.method constructor <init>(Lcom/android/server/ibs/IbsQuickDim;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ibs/IbsQuickDim;

    .line 237
    iput-object p1, p0, Lcom/android/server/ibs/IbsQuickDim$2;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 9
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 240
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$2;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mQuickdimEnable:Z
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$000(Lcom/android/server/ibs/IbsQuickDim;)Z

    move-result v0

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$2;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$100(Lcom/android/server/ibs/IbsQuickDim;)Z

    move-result v0

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$2;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mUiControlEnabled:Z
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$200(Lcom/android/server/ibs/IbsQuickDim;)Z

    move-result v0

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$2;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mCharging:Z
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$300(Lcom/android/server/ibs/IbsQuickDim;)Z

    move-result v0

    if-nez v0, :cond_9f

    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$2;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mQuickDimMode:I
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$400(Lcom/android/server/ibs/IbsQuickDim;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    goto :goto_9f

    .line 241
    :cond_2a
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$2;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$1200(Lcom/android/server/ibs/IbsQuickDim;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 242
    if-ne p3, v1, :cond_95

    .line 243
    :try_start_33
    iget-object v2, p0, Lcom/android/server/ibs/IbsQuickDim$2;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    iget-object v2, v2, Lcom/android/server/ibs/IbsQuickDim;->mBlockUnDimUidList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eqz v2, :cond_76

    .line 244
    iget-object v1, p0, Lcom/android/server/ibs/IbsQuickDim$2;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mQuickDimMode:I
    invoke-static {v1}, Lcom/android/server/ibs/IbsQuickDim;->access$400(Lcom/android/server/ibs/IbsQuickDim;)I

    move-result v1

    if-eq v1, v4, :cond_95

    .line 245
    iget-object v1, p0, Lcom/android/server/ibs/IbsQuickDim$2;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # setter for: Lcom/android/server/ibs/IbsQuickDim;->mQuickDimMode:I
    invoke-static {v1, v4}, Lcom/android/server/ibs/IbsQuickDim;->access$402(Lcom/android/server/ibs/IbsQuickDim;I)I

    .line 246
    const-string v1, "IbsQuickDim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " stop dim detect because fg click mQuickDimMode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/ibs/IbsQuickDim$2;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mQuickDimMode:I
    invoke-static {v4}, Lcom/android/server/ibs/IbsQuickDim;->access$400(Lcom/android/server/ibs/IbsQuickDim;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/android/server/ibs/IbsQuickDim$2;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;
    invoke-static {v1}, Lcom/android/server/ibs/IbsQuickDim;->access$800(Lcom/android/server/ibs/IbsQuickDim;)Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->sendEmptyMessage(I)Z

    goto :goto_95

    .line 250
    :cond_76
    iget-object v2, p0, Lcom/android/server/ibs/IbsQuickDim$2;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mQuickDimMode:I
    invoke-static {v2}, Lcom/android/server/ibs/IbsQuickDim;->access$400(Lcom/android/server/ibs/IbsQuickDim;)I

    move-result v2

    if-eq v2, v4, :cond_86

    iget-object v2, p0, Lcom/android/server/ibs/IbsQuickDim$2;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mQuickDimMode:I
    invoke-static {v2}, Lcom/android/server/ibs/IbsQuickDim;->access$400(Lcom/android/server/ibs/IbsQuickDim;)I

    move-result v2

    if-ne v2, v3, :cond_95

    .line 251
    :cond_86
    iget-object v2, p0, Lcom/android/server/ibs/IbsQuickDim$2;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    const/4 v3, 0x2

    # setter for: Lcom/android/server/ibs/IbsQuickDim;->mQuickDimMode:I
    invoke-static {v2, v3}, Lcom/android/server/ibs/IbsQuickDim;->access$402(Lcom/android/server/ibs/IbsQuickDim;I)I

    .line 252
    iget-object v2, p0, Lcom/android/server/ibs/IbsQuickDim$2;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;
    invoke-static {v2}, Lcom/android/server/ibs/IbsQuickDim;->access$800(Lcom/android/server/ibs/IbsQuickDim;)Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->sendEmptyMessage(I)Z

    .line 256
    :cond_95
    :goto_95
    iget-object v1, p0, Lcom/android/server/ibs/IbsQuickDim$2;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # setter for: Lcom/android/server/ibs/IbsQuickDim;->mFgUid:I
    invoke-static {v1, p2}, Lcom/android/server/ibs/IbsQuickDim;->access$1302(Lcom/android/server/ibs/IbsQuickDim;I)I

    .line 257
    monitor-exit v0

    .line 258
    return-void

    .line 257
    :catchall_9c
    move-exception v1

    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_33 .. :try_end_9e} :catchall_9c

    throw v1

    .line 240
    :cond_9f
    :goto_9f
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "serviceTypes"    # I

    .line 262
    return-void
.end method

.method public onProcessDied(II)V
    .registers 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 267
    return-void
.end method
