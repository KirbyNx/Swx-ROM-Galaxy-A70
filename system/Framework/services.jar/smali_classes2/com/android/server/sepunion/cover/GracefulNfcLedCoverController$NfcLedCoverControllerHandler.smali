.class final Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;
.super Landroid/os/Handler;
.source "GracefulNfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NfcLedCoverControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 135
    iput-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    .line 136
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 137
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_88

    :pswitch_6
    goto/16 :goto_87

    .line 176
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    # invokes: Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleLcdOffDisabledByCover(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$1100(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V

    .line 177
    goto/16 :goto_87

    .line 173
    :pswitch_13
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    # invokes: Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleCoverVersionCheck()V
    invoke-static {v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$1000(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)V

    .line 174
    goto/16 :goto_87

    .line 170
    :pswitch_1a
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    # invokes: Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleRemoveLedNotification(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$900(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V

    .line 171
    goto :goto_87

    .line 167
    :pswitch_24
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    # invokes: Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleAddLedNotification(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$800(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V

    .line 168
    goto :goto_87

    .line 161
    :pswitch_2e
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_34

    move v1, v2

    :cond_34
    move v0, v1

    .line 162
    .local v0, "attach":Z
    if-nez v0, :cond_87

    .line 163
    iget-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    # invokes: Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleCoverDetachedLocked()V
    invoke-static {v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$700(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)V

    goto :goto_87

    .line 143
    .end local v0    # "attach":Z
    :pswitch_3d
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    # invokes: Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleSendPowerKeyToCover()V
    invoke-static {v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$000(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)V

    .line 144
    goto :goto_87

    .line 158
    :pswitch_43
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleEventResponse(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$600(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;II)V

    .line 159
    goto :goto_87

    .line 155
    :pswitch_4d
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handlePollEventTouch(I)V
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$500(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;I)V

    .line 156
    goto :goto_87

    .line 146
    :pswitch_55
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    # invokes: Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->clearRetryCountDelayedMsg()V
    invoke-static {v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$100(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)V

    .line 148
    :pswitch_5a
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    # invokes: Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V
    invoke-static {v0, v2, v3}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$200(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;I[B)V

    .line 149
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    # getter for: Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$300(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_87

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    .line 150
    # getter for: Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$300(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_87

    .line 151
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    # getter for: Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$400(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 181
    :cond_87
    :goto_87
    return-void

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_55
        :pswitch_6
        :pswitch_4d
        :pswitch_43
        :pswitch_5a
        :pswitch_6
        :pswitch_3d
        :pswitch_2e
        :pswitch_24
        :pswitch_1a
        :pswitch_13
        :pswitch_8
    .end packed-switch
.end method
