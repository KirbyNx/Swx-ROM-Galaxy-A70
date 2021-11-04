.class Lcom/android/server/display/WifiDisplayMcfManager$2;
.super Lcom/samsung/android/mcf/ble/BleAdapterCallback;
.source "WifiDisplayMcfManager.java"


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

    .line 349
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$2;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-direct {p0}, Lcom/samsung/android/mcf/ble/BleAdapterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMcfServiceStateChanged(II)V
    .registers 7
    .param p1, "state"    # I
    .param p2, "arg"    # I

    .line 352
    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/WifiDisplayMcfManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMcfServiceStateChanged state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$2;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayMcfManager;->access$300(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->removeMessages(I)V

    .line 355
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$2;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayMcfManager;->access$300(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayMcfManager$2;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    .line 356
    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayMcfManager;->access$300(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 355
    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->sendMessage(Landroid/os/Message;)Z

    .line 357
    return-void
.end method
