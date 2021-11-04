.class Lcom/android/server/display/WifiDisplayMcfManager$4;
.super Lcom/samsung/android/mcf/ble/BleScanCallback;
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

    .line 385
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$4;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-direct {p0}, Lcom/samsung/android/mcf/ble/BleScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFailed(I)V
    .registers 5
    .param p1, "errorCode"    # I

    .line 399
    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/WifiDisplayMcfManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScanFailed errorCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void
.end method

.method public onScanResult(Landroid/bluetooth/le/ScanResult;)V
    .registers 5
    .param p1, "result"    # Landroid/bluetooth/le/ScanResult;

    .line 388
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$4;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayMcfManager;->access$200(Lcom/android/server/display/WifiDisplayMcfManager;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 389
    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/WifiDisplayMcfManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScanResult result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_25
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$4;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayMcfManager;->access$300(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->removeMessages(I)V

    .line 393
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$4;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayMcfManager;->access$300(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayMcfManager$4;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    .line 394
    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayMcfManager;->access$300(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 393
    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;->sendMessage(Landroid/os/Message;)Z

    .line 395
    return-void
.end method
