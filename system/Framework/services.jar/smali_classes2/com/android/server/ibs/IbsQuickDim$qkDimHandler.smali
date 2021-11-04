.class public Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;
.super Landroid/os/Handler;
.source "IbsQuickDim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IbsQuickDim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "qkDimHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ibs/IbsQuickDim;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IbsQuickDim;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/ibs/IbsQuickDim;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 196
    iput-object p1, p0, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    .line 197
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 198
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 202
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mQuickdimEnable:Z
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$000(Lcom/android/server/ibs/IbsQuickDim;)Z

    move-result v0

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$100(Lcom/android/server/ibs/IbsQuickDim;)Z

    move-result v0

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mUiControlEnabled:Z
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$200(Lcom/android/server/ibs/IbsQuickDim;)Z

    move-result v0

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mCharging:Z
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$300(Lcom/android/server/ibs/IbsQuickDim;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto/16 :goto_ad

    .line 203
    :cond_22
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9f

    const/4 v3, -0x1

    if-eq v0, v1, :cond_4d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3e

    const/4 v1, 0x4

    if-eq v0, v1, :cond_33

    goto/16 :goto_ac

    .line 228
    :cond_33
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # setter for: Lcom/android/server/ibs/IbsQuickDim;->mLastFPS:I
    invoke-static {v0, v3}, Lcom/android/server/ibs/IbsQuickDim;->access$702(Lcom/android/server/ibs/IbsQuickDim;I)I

    .line 229
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # invokes: Lcom/android/server/ibs/IbsQuickDim;->removeAllmessage()V
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$1100(Lcom/android/server/ibs/IbsQuickDim;)V

    .line 230
    goto :goto_ac

    .line 224
    :cond_3e
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # invokes: Lcom/android/server/ibs/IbsQuickDim;->removeAllmessage()V
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$1100(Lcom/android/server/ibs/IbsQuickDim;)V

    .line 225
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$800(Lcom/android/server/ibs/IbsQuickDim;)Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->sendEmptyMessage(I)Z

    .line 226
    goto :goto_ac

    .line 209
    :cond_4d
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mQuickDimMode:I
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$400(Lcom/android/server/ibs/IbsQuickDim;)I

    move-result v0

    if-ne v0, v2, :cond_56

    return-void

    .line 210
    :cond_56
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # invokes: Lcom/android/server/ibs/IbsQuickDim;->getFpsFromSurfaceFlinger()I
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$600(Lcom/android/server/ibs/IbsQuickDim;)I

    move-result v0

    .line 211
    .local v0, "nowFPS":I
    iget-object v1, p0, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mLastFPS:I
    invoke-static {v1}, Lcom/android/server/ibs/IbsQuickDim;->access$700(Lcom/android/server/ibs/IbsQuickDim;)I

    move-result v1

    if-eq v0, v1, :cond_75

    .line 212
    iget-object v1, p0, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # setter for: Lcom/android/server/ibs/IbsQuickDim;->mLastFPS:I
    invoke-static {v1, v0}, Lcom/android/server/ibs/IbsQuickDim;->access$702(Lcom/android/server/ibs/IbsQuickDim;I)I

    .line 213
    iget-object v1, p0, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;
    invoke-static {v1}, Lcom/android/server/ibs/IbsQuickDim;->access$800(Lcom/android/server/ibs/IbsQuickDim;)Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;

    move-result-object v1

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 214
    return-void

    .line 216
    :cond_75
    const-string v1, "IbsQuickDim"

    const-string/jumbo v4, "setScreenBright!!!"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v1, p0, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # setter for: Lcom/android/server/ibs/IbsQuickDim;->mQuickDimMode:I
    invoke-static {v1, v2}, Lcom/android/server/ibs/IbsQuickDim;->access$402(Lcom/android/server/ibs/IbsQuickDim;I)I

    .line 218
    iget-object v1, p0, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # setter for: Lcom/android/server/ibs/IbsQuickDim;->mLastFPS:I
    invoke-static {v1, v3}, Lcom/android/server/ibs/IbsQuickDim;->access$702(Lcom/android/server/ibs/IbsQuickDim;I)I

    .line 219
    iget-object v1, p0, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;
    invoke-static {v1}, Lcom/android/server/ibs/IbsQuickDim;->access$900(Lcom/android/server/ibs/IbsQuickDim;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setScreenDimDurationOverrideFromSqd(Z)V

    .line 220
    iget-object v1, p0, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/server/ibs/IbsQuickDim;->mDimStartTime:J
    invoke-static {v1, v2, v3}, Lcom/android/server/ibs/IbsQuickDim;->access$1002(Lcom/android/server/ibs/IbsQuickDim;J)J

    .line 221
    iget-object v1, p0, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # invokes: Lcom/android/server/ibs/IbsQuickDim;->removeAllmessage()V
    invoke-static {v1}, Lcom/android/server/ibs/IbsQuickDim;->access$1100(Lcom/android/server/ibs/IbsQuickDim;)V

    .line 222
    goto :goto_ac

    .line 205
    .end local v0    # "nowFPS":I
    :cond_9f
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # getter for: Lcom/android/server/ibs/IbsQuickDim;->mQuickDimMode:I
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$400(Lcom/android/server/ibs/IbsQuickDim;)I

    move-result v0

    if-ne v0, v1, :cond_ac

    .line 206
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/IbsQuickDim;

    # invokes: Lcom/android/server/ibs/IbsQuickDim;->checkQuickDimStatus()V
    invoke-static {v0}, Lcom/android/server/ibs/IbsQuickDim;->access$500(Lcom/android/server/ibs/IbsQuickDim;)V

    .line 234
    :cond_ac
    :goto_ac
    return-void

    .line 202
    :cond_ad
    :goto_ad
    return-void
.end method
