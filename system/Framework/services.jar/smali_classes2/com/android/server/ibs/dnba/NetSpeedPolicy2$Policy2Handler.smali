.class public Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;
.super Landroid/os/Handler;
.source "NetSpeedPolicy2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/dnba/NetSpeedPolicy2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Policy2Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy2;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/dnba/NetSpeedPolicy2;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/ibs/dnba/NetSpeedPolicy2;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 65
    iput-object p1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy2;

    .line 66
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 67
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_22

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x40

    if-eq v0, v1, :cond_f

    goto :goto_38

    .line 83
    :cond_f
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy2;

    iget-object v0, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mHandler2:Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;->removeMessages(I)V

    .line 84
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy2;

    # invokes: Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->updateBGUseNetUidList()V
    invoke-static {v0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->access$100(Lcom/android/server/ibs/dnba/NetSpeedPolicy2;)V

    .line 85
    goto :goto_38

    .line 80
    :cond_1c
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy2;

    # invokes: Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->updateFGBGUidList()V
    invoke-static {v0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->access$000(Lcom/android/server/ibs/dnba/NetSpeedPolicy2;)V

    .line 81
    goto :goto_38

    .line 73
    :cond_22
    iget v0, p1, Landroid/os/Message;->arg2:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    .line 74
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy2;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->limitAllBgSpeed(IZ)V

    goto :goto_38

    .line 76
    :cond_2f
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;->this$0:Lcom/android/server/ibs/dnba/NetSpeedPolicy2;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->limitAllBgSpeed(IZ)V

    .line 78
    nop

    .line 90
    :goto_38
    return-void
.end method
