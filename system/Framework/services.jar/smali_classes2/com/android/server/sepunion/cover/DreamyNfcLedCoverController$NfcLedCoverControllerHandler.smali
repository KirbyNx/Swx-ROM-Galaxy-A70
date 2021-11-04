.class final Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;
.super Landroid/os/Handler;
.source "DreamyNfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NfcLedCoverControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 103
    iput-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    .line 104
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 105
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_80

    :pswitch_7
    goto/16 :goto_7e

    .line 146
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_10

    move v1, v2

    :cond_10
    # invokes: Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleNotifyFotaInProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$1000(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Z)V

    .line 147
    goto/16 :goto_7e

    .line 143
    :pswitch_15
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_1c

    move v1, v2

    :cond_1c
    # invokes: Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleSetFotaInProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$900(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Z)V

    .line 144
    goto :goto_7e

    .line 140
    :pswitch_20
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    # invokes: Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleNotifyAuthResponse()V
    invoke-static {v0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$800(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)V

    .line 141
    goto :goto_7e

    .line 135
    :pswitch_26
    const-wide/16 v0, 0x0

    .line 136
    .local v0, "whenNanos":J
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 137
    iget-object v2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    # invokes: Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleRequestCoverAuthentication(J)V
    invoke-static {v2, v0, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$700(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;J)V

    .line 138
    goto :goto_7e

    .line 132
    .end local v0    # "whenNanos":J
    :pswitch_36
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    # invokes: Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleLcdOffDisabledByCover(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$600(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V

    .line 133
    goto :goto_7e

    .line 129
    :pswitch_40
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    # invokes: Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleRemoveLedNotification(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$500(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V

    .line 130
    goto :goto_7e

    .line 126
    :pswitch_4a
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    # invokes: Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleAddLedNotification(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$400(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V

    .line 127
    goto :goto_7e

    .line 120
    :pswitch_54
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_59

    move v1, v2

    :cond_59
    move v0, v1

    .line 121
    .local v0, "attach":Z
    if-nez v0, :cond_7e

    .line 122
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    # invokes: Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleCoverDetachedLocked()V
    invoke-static {v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$300(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)V

    goto :goto_7e

    .line 111
    .end local v0    # "attach":Z
    :pswitch_62
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    # invokes: Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleSendPowerKeyToCover()V
    invoke-static {v0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$000(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)V

    .line 112
    goto :goto_7e

    .line 117
    :pswitch_68
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleEventResponse(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$200(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;II)V

    .line 118
    goto :goto_7e

    .line 114
    :pswitch_72
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    # invokes: Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V
    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$100(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;I[B)V

    .line 115
    nop

    .line 151
    :cond_7e
    :goto_7e
    return-void

    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_72
        :pswitch_7
        :pswitch_7
        :pswitch_68
        :pswitch_62
        :pswitch_54
        :pswitch_4a
        :pswitch_40
        :pswitch_7
        :pswitch_36
        :pswitch_26
        :pswitch_20
        :pswitch_15
        :pswitch_9
    .end packed-switch
.end method
