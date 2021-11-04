.class Lcom/android/server/display/DlnaController$2;
.super Ljava/lang/Object;
.source "DlnaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DlnaController;->sendDeviceVolumeChangedEvent(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DlnaController;

.field final synthetic val$data:Landroid/os/Bundle;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lcom/android/server/display/DlnaController;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/display/DlnaController;

    .line 236
    iput-object p1, p0, Lcom/android/server/display/DlnaController$2;->this$0:Lcom/android/server/display/DlnaController;

    iput p2, p0, Lcom/android/server/display/DlnaController$2;->val$event:I

    iput-object p3, p0, Lcom/android/server/display/DlnaController$2;->val$data:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 239
    iget-object v0, p0, Lcom/android/server/display/DlnaController$2;->this$0:Lcom/android/server/display/DlnaController;

    # getter for: Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/DlnaController;->access$100(Lcom/android/server/display/DlnaController;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DlnaController$2;->val$event:I

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 240
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DlnaController$2;->val$data:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 241
    iget-object v1, p0, Lcom/android/server/display/DlnaController$2;->this$0:Lcom/android/server/display/DlnaController;

    # getter for: Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/DlnaController;->access$100(Lcom/android/server/display/DlnaController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 242
    return-void
.end method
