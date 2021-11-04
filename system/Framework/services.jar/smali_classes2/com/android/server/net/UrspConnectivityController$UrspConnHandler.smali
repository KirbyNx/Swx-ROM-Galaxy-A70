.class Lcom/android/server/net/UrspConnectivityController$UrspConnHandler;
.super Landroid/os/Handler;
.source "UrspConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/UrspConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UrspConnHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/UrspConnectivityController;


# direct methods
.method constructor <init>(Lcom/android/server/net/UrspConnectivityController;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 91
    iput-object p1, p0, Lcom/android/server/net/UrspConnectivityController$UrspConnHandler;->this$0:Lcom/android/server/net/UrspConnectivityController;

    .line 92
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 93
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    .line 97
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_34

    const/16 v1, 0x2712

    if-eq v0, v1, :cond_25

    .line 115
    const-string v0, "default case"

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    goto :goto_43

    .line 107
    :cond_25
    const-string v0, "MSG_RELEASE_DEFAULT_CONNECTION"

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    .line 108
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 109
    .local v0, "type":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 110
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/net/UrspConnectivityController$UrspConnHandler;->this$0:Lcom/android/server/net/UrspConnectivityController;

    # invokes: Lcom/android/server/net/UrspConnectivityController;->setStopNetwork(I)V
    invoke-static {v2, v0}, Lcom/android/server/net/UrspConnectivityController;->access$100(Lcom/android/server/net/UrspConnectivityController;I)V

    .line 111
    goto :goto_43

    .line 99
    .end local v0    # "type":I
    .end local v1    # "uid":I
    :cond_34
    const-string v0, "MSG_REQUEST_DEFAULT_CONNECTION"

    invoke-static {v0}, Lcom/android/server/net/UrspConnectivityController;->log(Ljava/lang/String;)V

    .line 100
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 101
    .restart local v0    # "type":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 102
    .restart local v1    # "uid":I
    iget-object v2, p0, Lcom/android/server/net/UrspConnectivityController$UrspConnHandler;->this$0:Lcom/android/server/net/UrspConnectivityController;

    # invokes: Lcom/android/server/net/UrspConnectivityController;->setRequestNetwork(I)V
    invoke-static {v2, v0}, Lcom/android/server/net/UrspConnectivityController;->access$000(Lcom/android/server/net/UrspConnectivityController;I)V

    .line 103
    nop

    .line 119
    .end local v0    # "type":I
    .end local v1    # "uid":I
    :goto_43
    return-void
.end method
