.class Lcom/android/server/net/FocCore$1;
.super Landroid/net/IUrspConnectionListener$Stub;
.source "FocCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/FocCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/FocCore;


# direct methods
.method constructor <init>(Lcom/android/server/net/FocCore;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/net/FocCore;

    .line 242
    iput-object p1, p0, Lcom/android/server/net/FocCore$1;->this$0:Lcom/android/server/net/FocCore;

    invoke-direct {p0}, Landroid/net/IUrspConnectionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(IILandroid/net/Network;)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "netId"    # I
    .param p3, "network"    # Landroid/net/Network;

    .line 245
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    return-void

    .line 247
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection state chagned, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", netId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/FocCore;->log(Ljava/lang/String;)V

    .line 250
    :try_start_24
    iget-object v1, p0, Lcom/android/server/net/FocCore$1;->this$0:Lcom/android/server/net/FocCore;

    iget-object v1, v1, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v1}, Lcom/android/server/net/UrspService;->getConnectivityManager()Landroid/net/IConnectivityManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-interface {v1, p3, v2, v0}, Landroid/net/IConnectivityManager;->getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 251
    .local v1, "ni":Landroid/net/NetworkInfo;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 252
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/net/FocCore$1;->this$0:Lcom/android/server/net/FocCore;

    # getter for: Lcom/android/server/net/FocCore;->mFocPduRequest:Z
    invoke-static {v3}, Lcom/android/server/net/FocCore;->access$100(Lcom/android/server/net/FocCore;)Z

    move-result v3

    if-eqz v3, :cond_86

    if-eqz v1, :cond_86

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_86

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "send Foc netId("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") to NMS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/net/FocCore;->log(Ljava/lang/String;)V

    .line 254
    iget-object v3, p0, Lcom/android/server/net/FocCore$1;->this$0:Lcom/android/server/net/FocCore;

    invoke-virtual {v3, p2}, Lcom/android/server/net/FocCore;->setUrspNetId(I)V

    .line 255
    iget-object v3, p0, Lcom/android/server/net/FocCore$1;->this$0:Lcom/android/server/net/FocCore;

    # getter for: Lcom/android/server/net/FocCore;->mNri:Lcom/android/server/net/FocCore$NetworkRequestInfo;
    invoke-static {v3}, Lcom/android/server/net/FocCore;->access$200(Lcom/android/server/net/FocCore;)Lcom/android/server/net/FocCore$NetworkRequestInfo;

    move-result-object v3

    if-eqz v3, :cond_ab

    .line 256
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 257
    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 258
    iput-object p3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 259
    iget-object v0, p0, Lcom/android/server/net/FocCore$1;->this$0:Lcom/android/server/net/FocCore;

    # getter for: Lcom/android/server/net/FocCore;->mNri:Lcom/android/server/net/FocCore$NetworkRequestInfo;
    invoke-static {v0}, Lcom/android/server/net/FocCore;->access$200(Lcom/android/server/net/FocCore;)Lcom/android/server/net/FocCore$NetworkRequestInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/net/FocCore$NetworkRequestInfo;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_ab

    .line 262
    :cond_86
    const-string/jumbo v3, "send Foc netId(0) to NMS"

    invoke-static {v3}, Lcom/android/server/net/FocCore;->log(Ljava/lang/String;)V

    .line 263
    iget-object v3, p0, Lcom/android/server/net/FocCore$1;->this$0:Lcom/android/server/net/FocCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/net/FocCore;->setUrspNetId(I)V

    .line 264
    iget-object v3, p0, Lcom/android/server/net/FocCore$1;->this$0:Lcom/android/server/net/FocCore;

    # getter for: Lcom/android/server/net/FocCore;->mNri:Lcom/android/server/net/FocCore$NetworkRequestInfo;
    invoke-static {v3}, Lcom/android/server/net/FocCore;->access$200(Lcom/android/server/net/FocCore;)Lcom/android/server/net/FocCore$NetworkRequestInfo;

    move-result-object v3

    if-eqz v3, :cond_ab

    .line 265
    iput v0, v2, Landroid/os/Message;->what:I

    .line 266
    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 267
    iput-object p3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Lcom/android/server/net/FocCore$1;->this$0:Lcom/android/server/net/FocCore;

    # getter for: Lcom/android/server/net/FocCore;->mNri:Lcom/android/server/net/FocCore$NetworkRequestInfo;
    invoke-static {v0}, Lcom/android/server/net/FocCore;->access$200(Lcom/android/server/net/FocCore;)Lcom/android/server/net/FocCore$NetworkRequestInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/net/FocCore$NetworkRequestInfo;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_ab} :catch_ac

    .line 273
    .end local v2    # "msg":Landroid/os/Message;
    :cond_ab
    :goto_ab
    goto :goto_b0

    .line 271
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    :catch_ac
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 274
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b0
    return-void
.end method
