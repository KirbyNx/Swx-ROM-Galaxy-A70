.class final Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
.super Landroid/os/Handler;
.source "WifiDisplayMcfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayMcfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "McfHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayMcfManager;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayMcfManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 434
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    .line 435
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 436
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 440
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4c

    goto :goto_4a

    .line 463
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    # invokes: Lcom/android/server/display/WifiDisplayMcfManager;->handleMcfManagerStatus(Z)V
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayMcfManager;->access$1200(Lcom/android/server/display/WifiDisplayMcfManager;Z)V

    goto :goto_4a

    .line 460
    :pswitch_14
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    # invokes: Lcom/android/server/display/WifiDisplayMcfManager;->unbindBleAdvertiserService()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayMcfManager;->access$1100(Lcom/android/server/display/WifiDisplayMcfManager;)V

    .line 461
    goto :goto_4a

    .line 457
    :pswitch_1a
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    # invokes: Lcom/android/server/display/WifiDisplayMcfManager;->handleRetryStartScanBleScanner()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayMcfManager;->access$1000(Lcom/android/server/display/WifiDisplayMcfManager;)V

    .line 458
    goto :goto_4a

    .line 454
    :pswitch_20
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    # invokes: Lcom/android/server/display/WifiDisplayMcfManager;->bindMcfAdapter()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayMcfManager;->access$900(Lcom/android/server/display/WifiDisplayMcfManager;)V

    .line 455
    goto :goto_4a

    .line 451
    :pswitch_26
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    # invokes: Lcom/android/server/display/WifiDisplayMcfManager;->handleMcfAdapterScannerScanResult()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayMcfManager;->access$800(Lcom/android/server/display/WifiDisplayMcfManager;)V

    .line 452
    goto :goto_4a

    .line 448
    :pswitch_2c
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    # invokes: Lcom/android/server/display/WifiDisplayMcfManager;->handleMcfAdapterServiceDisconnected()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayMcfManager;->access$700(Lcom/android/server/display/WifiDisplayMcfManager;)V

    .line 449
    goto :goto_4a

    .line 445
    :pswitch_32
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/mcf/McfAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayMcfManager;->handleMcfAdapterServiceConnected(Lcom/samsung/android/mcf/McfAdapter;)V
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayMcfManager;->access$600(Lcom/android/server/display/WifiDisplayMcfManager;Lcom/samsung/android/mcf/McfAdapter;)V

    .line 446
    goto :goto_4a

    .line 442
    :pswitch_3c
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/android/server/display/WifiDisplayMcfManager;->handleMcfServiceStateChanged(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayMcfManager;->access$500(Lcom/android/server/display/WifiDisplayMcfManager;I)V

    .line 443
    nop

    .line 466
    :goto_4a
    return-void

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_32
        :pswitch_2c
        :pswitch_26
        :pswitch_20
        :pswitch_1a
        :pswitch_14
        :pswitch_6
    .end packed-switch
.end method
