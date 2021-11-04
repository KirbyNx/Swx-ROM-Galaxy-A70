.class Lcom/android/server/locksettings/LockSettingsStrongAuth$1;
.super Landroid/os/Handler;
.source "LockSettingsStrongAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsStrongAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 605
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 608
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_60

    goto :goto_5e

    .line 625
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRefreshStrongAuthTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$500(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    .line 626
    goto :goto_5e

    .line 637
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleScheduleNonStrongBiometricIdleTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$900(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    goto :goto_5e

    .line 634
    :pswitch_16
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleStrongBiometricUnlock(I)V
    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$800(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    .line 635
    goto :goto_5e

    .line 631
    :pswitch_1e
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleScheduleNonStrongBiometricTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$700(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    .line 632
    goto :goto_5e

    .line 628
    :pswitch_26
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleNoLongerRequireStrongAuth(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$600(Lcom/android/server/locksettings/LockSettingsStrongAuth;II)V

    .line 629
    goto :goto_5e

    .line 622
    :pswitch_30
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleScheduleStrongAuthTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$400(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    .line 623
    goto :goto_5e

    .line 619
    :pswitch_38
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRemoveUser(I)V
    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$300(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    .line 620
    goto :goto_5e

    .line 613
    :pswitch_40
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/trust/IStrongAuthTracker;

    # invokes: Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRemoveStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$100(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V

    .line 614
    goto :goto_5e

    .line 610
    :pswitch_4a
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/trust/IStrongAuthTracker;

    # invokes: Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleAddStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$000(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V

    .line 611
    goto :goto_5e

    .line 616
    :pswitch_54
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRequireStrongAuth(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$200(Lcom/android/server/locksettings/LockSettingsStrongAuth;II)V

    .line 617
    nop

    .line 640
    :goto_5e
    return-void

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_54
        :pswitch_4a
        :pswitch_40
        :pswitch_38
        :pswitch_30
        :pswitch_26
        :pswitch_1e
        :pswitch_16
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method
