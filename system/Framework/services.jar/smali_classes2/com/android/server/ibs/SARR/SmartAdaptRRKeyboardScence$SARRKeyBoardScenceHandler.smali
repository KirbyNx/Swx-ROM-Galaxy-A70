.class Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;
.super Landroid/os/Handler;
.source "SmartAdaptRRKeyboardScence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SARRKeyBoardScenceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 78
    iput-object p1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    .line 79
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 80
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_28

    goto :goto_26

    .line 98
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->setKeyboardScenceAction(Z)V
    invoke-static {v0, v1}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->access$400(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;Z)V

    .line 99
    goto :goto_26

    .line 95
    :pswitch_d
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->setKeyboardScenceAction(Z)V
    invoke-static {v0, v1}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->access$400(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;Z)V

    .line 96
    goto :goto_26

    .line 92
    :pswitch_14
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    # invokes: Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->checkFPSstatus()V
    invoke-static {v0}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->access$300(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)V

    .line 93
    goto :goto_26

    .line 89
    :pswitch_1a
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    # invokes: Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->resetKeyboardScenceStatus()V
    invoke-static {v0}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->access$200(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)V

    .line 90
    goto :goto_26

    .line 86
    :pswitch_20
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence$SARRKeyBoardScenceHandler;->this$0:Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;

    # invokes: Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->startKeyboardScenceDetect()V
    invoke-static {v0}, Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;->access$100(Lcom/android/server/ibs/SARR/SmartAdaptRRKeyboardScence;)V

    .line 87
    nop

    .line 103
    :goto_26
    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x12d
        :pswitch_20
        :pswitch_1a
        :pswitch_14
        :pswitch_d
        :pswitch_6
    .end packed-switch
.end method
