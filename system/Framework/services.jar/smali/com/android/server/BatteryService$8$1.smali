.class Lcom/android/server/BatteryService$8$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$8;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$8;

.field final synthetic val$audiomode:I


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$8;I)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/BatteryService$8;

    .line 801
    iput-object p1, p0, Lcom/android/server/BatteryService$8$1;->this$1:Lcom/android/server/BatteryService$8;

    iput p2, p0, Lcom/android/server/BatteryService$8$1;->val$audiomode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 805
    iget v0, p0, Lcom/android/server/BatteryService$8$1;->val$audiomode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_20

    .line 806
    iget-object v0, p0, Lcom/android/server/BatteryService$8$1;->this$1:Lcom/android/server/BatteryService$8;

    iget-object v0, v0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mCallHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 807
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BatteryService$8$1;->this$1:Lcom/android/server/BatteryService$8;

    iget-object v1, v1, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mCallHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6b

    .line 808
    .end local v0    # "msg":Landroid/os/Message;
    :cond_20
    if-nez v0, :cond_46

    .line 809
    iget-object v0, p0, Lcom/android/server/BatteryService$8$1;->this$1:Lcom/android/server/BatteryService$8;

    iget-object v0, v0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mCallHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 810
    iget-object v0, p0, Lcom/android/server/BatteryService$8$1;->this$1:Lcom/android/server/BatteryService$8;

    iget-object v0, v0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mCallHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 811
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BatteryService$8$1;->this$1:Lcom/android/server/BatteryService$8;

    iget-object v1, v1, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mCallHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6b

    .line 812
    .end local v0    # "msg":Landroid/os/Message;
    :cond_46
    const/4 v3, 0x3

    if-ne v0, v3, :cond_6b

    .line 813
    iget-object v0, p0, Lcom/android/server/BatteryService$8$1;->this$1:Lcom/android/server/BatteryService$8;

    iget-object v0, v0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mCallHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 814
    iget-object v0, p0, Lcom/android/server/BatteryService$8$1;->this$1:Lcom/android/server/BatteryService$8;

    iget-object v0, v0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mCallHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 815
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BatteryService$8$1;->this$1:Lcom/android/server/BatteryService$8;

    iget-object v1, v1, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mCallHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 817
    .end local v0    # "msg":Landroid/os/Message;
    :cond_6b
    :goto_6b
    return-void
.end method
