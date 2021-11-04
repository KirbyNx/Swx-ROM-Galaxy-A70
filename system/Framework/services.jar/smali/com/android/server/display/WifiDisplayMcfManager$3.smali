.class Lcom/android/server/display/WifiDisplayMcfManager$3;
.super Ljava/lang/Object;
.source "WifiDisplayMcfManager.java"

# interfaces
.implements Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayMcfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayMcfManager;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayMcfManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayMcfManager;

    .line 360
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$3;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Lcom/samsung/android/mcf/McfAdapter;)V
    .registers 6
    .param p1, "mcfAdapter"    # Lcom/samsung/android/mcf/McfAdapter;

    .line 363
    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/WifiDisplayMcfManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "McfAdapterListener onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$3;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayMcfManager;->access$300(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->removeMessages(I)V

    .line 366
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$3;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayMcfManager;->access$300(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayMcfManager$3;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    .line 367
    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayMcfManager;->access$300(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 366
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 369
    return-void
.end method

.method public onServiceDisconnected()V
    .registers 4

    .line 373
    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/WifiDisplayMcfManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "McfAdapterListener onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$3;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayMcfManager;->access$300(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->removeMessages(I)V

    .line 376
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$3;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayMcfManager;->access$300(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayMcfManager$3;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    .line 377
    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayMcfManager;->access$300(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 376
    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->sendMessage(Landroid/os/Message;)Z

    .line 378
    return-void
.end method

.method public onServiceRemoteException()V
    .registers 1

    .line 382
    return-void
.end method
