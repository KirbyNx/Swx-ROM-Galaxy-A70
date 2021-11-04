.class Lcom/android/server/smartclip/SpenGestureManagerService$5;
.super Landroid/os/Handler;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 756
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$5;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 759
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_28

    .line 774
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_27

    .line 771
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$5;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->sendDefferedPenDetectionInfo()V
    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2800(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    .line 772
    goto :goto_27

    .line 765
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    if-eqz v0, :cond_27

    .line 766
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$5;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->sendPenDetectionInfo(Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;)V
    invoke-static {v0, v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2700(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;)V

    goto :goto_27

    .line 761
    :pswitch_1f
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$5;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const/16 v1, 0xa

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->broastcastHoverEvent(I)V
    invoke-static {v0, v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2600(Lcom/android/server/smartclip/SpenGestureManagerService;I)V

    .line 762
    nop

    .line 777
    :cond_27
    :goto_27
    return-void

    :pswitch_data_28
    .packed-switch 0x3018
        :pswitch_1f
        :pswitch_f
        :pswitch_9
    .end packed-switch
.end method
