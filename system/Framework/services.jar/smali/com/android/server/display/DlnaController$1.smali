.class Lcom/android/server/display/DlnaController$1;
.super Ljava/lang/Object;
.source "DlnaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DlnaController;->sendDeviceVolumeKeyEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DlnaController;

.field final synthetic val$keyEvent:I


# direct methods
.method constructor <init>(Lcom/android/server/display/DlnaController;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/display/DlnaController;

    .line 163
    iput-object p1, p0, Lcom/android/server/display/DlnaController$1;->this$0:Lcom/android/server/display/DlnaController;

    iput p2, p0, Lcom/android/server/display/DlnaController$1;->val$keyEvent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "volumeKeyEvent":I
    iget v1, p0, Lcom/android/server/display/DlnaController$1;->val$keyEvent:I

    iget-object v2, p0, Lcom/android/server/display/DlnaController$1;->this$0:Lcom/android/server/display/DlnaController;

    # getter for: Lcom/android/server/display/DlnaController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;
    invoke-static {v2}, Lcom/android/server/display/DlnaController;->access$000(Lcom/android/server/display/DlnaController;)Lcom/android/server/display/ControllerUtils;

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    .line 168
    const/16 v0, 0xa

    goto :goto_34

    .line 169
    :cond_e
    iget v1, p0, Lcom/android/server/display/DlnaController$1;->val$keyEvent:I

    iget-object v2, p0, Lcom/android/server/display/DlnaController$1;->this$0:Lcom/android/server/display/DlnaController;

    # getter for: Lcom/android/server/display/DlnaController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;
    invoke-static {v2}, Lcom/android/server/display/DlnaController;->access$000(Lcom/android/server/display/DlnaController;)Lcom/android/server/display/ControllerUtils;

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 170
    const/16 v0, 0xb

    goto :goto_34

    .line 171
    :cond_1b
    iget v1, p0, Lcom/android/server/display/DlnaController$1;->val$keyEvent:I

    iget-object v2, p0, Lcom/android/server/display/DlnaController$1;->this$0:Lcom/android/server/display/DlnaController;

    # getter for: Lcom/android/server/display/DlnaController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;
    invoke-static {v2}, Lcom/android/server/display/DlnaController;->access$000(Lcom/android/server/display/DlnaController;)Lcom/android/server/display/ControllerUtils;

    const/4 v2, 0x2

    if-ne v1, v2, :cond_28

    .line 172
    const/16 v0, 0xc

    goto :goto_34

    .line 173
    :cond_28
    iget v1, p0, Lcom/android/server/display/DlnaController$1;->val$keyEvent:I

    iget-object v2, p0, Lcom/android/server/display/DlnaController$1;->this$0:Lcom/android/server/display/DlnaController;

    # getter for: Lcom/android/server/display/DlnaController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;
    invoke-static {v2}, Lcom/android/server/display/DlnaController;->access$000(Lcom/android/server/display/DlnaController;)Lcom/android/server/display/ControllerUtils;

    const/4 v2, 0x3

    if-ne v1, v2, :cond_34

    .line 174
    const/16 v0, 0xd

    .line 177
    :cond_34
    :goto_34
    iget-object v1, p0, Lcom/android/server/display/DlnaController$1;->this$0:Lcom/android/server/display/DlnaController;

    # getter for: Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/DlnaController;->access$100(Lcom/android/server/display/DlnaController;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 178
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/display/DlnaController$1;->this$0:Lcom/android/server/display/DlnaController;

    # getter for: Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/display/DlnaController;->access$100(Lcom/android/server/display/DlnaController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    return-void
.end method
