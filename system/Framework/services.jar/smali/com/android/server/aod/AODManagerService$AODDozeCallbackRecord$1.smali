.class Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;
.super Landroid/os/Handler;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1591
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;->this$1:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1595
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1596
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    goto :goto_25

    .line 1604
    :cond_f
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;->this$1:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/aod/AODToast;

    # invokes: Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->handleAODToastRequested(Lcom/samsung/android/aod/AODToast;)V
    invoke-static {v0, v1}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->access$5700(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;Lcom/samsung/android/aod/AODToast;)V

    .line 1605
    goto :goto_25

    .line 1601
    :cond_19
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;->this$1:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    # invokes: Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->handleAODDozeReleased()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->access$5600(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;)V

    .line 1602
    goto :goto_25

    .line 1598
    :cond_1f
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;->this$1:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    # invokes: Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->handleAODDozeAcquired()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->access$5500(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;)V

    .line 1599
    nop

    .line 1610
    :goto_25
    return-void
.end method
