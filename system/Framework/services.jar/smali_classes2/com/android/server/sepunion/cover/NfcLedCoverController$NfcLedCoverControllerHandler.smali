.class final Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
.super Landroid/os/Handler;
.source "NfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/NfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NfcLedCoverControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 178
    iput-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 179
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 180
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 184
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_f0

    goto/16 :goto_ee

    .line 234
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    # invokes: Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleLcdOffDisabledByCover(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$1400(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Bundle;)V

    .line 235
    goto/16 :goto_ee

    .line 231
    :pswitch_15
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    # invokes: Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleRemoveLedNotification(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$1300(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Bundle;)V

    .line 232
    goto/16 :goto_ee

    .line 228
    :pswitch_20
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    # invokes: Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleAddLedNotification(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$1200(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Bundle;)V

    .line 229
    goto/16 :goto_ee

    .line 222
    :pswitch_2b
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    move v3, v1

    :cond_31
    move v0, v3

    .line 223
    .local v0, "attach":Z
    if-nez v0, :cond_ee

    .line 224
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    # invokes: Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleCoverDetachedLocked()V
    invoke-static {v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$1100(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V

    goto/16 :goto_ee

    .line 186
    .end local v0    # "attach":Z
    :pswitch_3b
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    # invokes: Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleSendPowerKeyToCover()V
    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$000(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V

    .line 187
    goto/16 :goto_ee

    .line 214
    :pswitch_42
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleClearOngoingEvent(I)V
    invoke-static {v0, v4}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$1000(Lcom/android/server/sepunion/cover/NfcLedCoverController;I)V

    .line 215
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$600(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_ee

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 216
    # getter for: Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$600(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_ee

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 217
    # getter for: Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$600(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_ee

    .line 218
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$700(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    goto/16 :goto_ee

    .line 211
    :pswitch_78
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleEventResponse(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$900(Lcom/android/server/sepunion/cover/NfcLedCoverController;II)V

    .line 212
    goto :goto_ee

    .line 208
    :pswitch_82
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/sepunion/cover/NfcLedCoverController;->handlePollEventTouch(I)V
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$800(Lcom/android/server/sepunion/cover/NfcLedCoverController;I)V

    .line 209
    goto :goto_ee

    .line 189
    :pswitch_8a
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    # invokes: Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V
    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$100(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V

    .line 190
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I
    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$200(Lcom/android/server/sepunion/cover/NfcLedCoverController;)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_9f

    .line 191
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    # invokes: Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendCurrentClockCommand()V
    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$300(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V

    goto :goto_a7

    .line 193
    :cond_9f
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    const/16 v1, 0x12

    const/4 v2, 0x0

    # invokes: Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V
    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$400(Lcom/android/server/sepunion/cover/NfcLedCoverController;I[B)V

    .line 195
    :goto_a7
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$500(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 196
    goto :goto_ee

    .line 198
    :pswitch_b1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    # invokes: Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V
    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$100(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V

    .line 200
    :pswitch_b6
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    # invokes: Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V
    invoke-static {v0, v4, v5}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$400(Lcom/android/server/sepunion/cover/NfcLedCoverController;I[B)V

    .line 201
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$600(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_ee

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 202
    # getter for: Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$600(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_ee

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 203
    # getter for: Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$600(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_ee

    .line 204
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$700(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 239
    :cond_ee
    :goto_ee
    return-void

    nop

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_b1
        :pswitch_8a
        :pswitch_82
        :pswitch_78
        :pswitch_b6
        :pswitch_42
        :pswitch_3b
        :pswitch_2b
        :pswitch_20
        :pswitch_15
        :pswitch_a
    .end packed-switch
.end method
