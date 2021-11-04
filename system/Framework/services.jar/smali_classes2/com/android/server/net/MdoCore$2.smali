.class Lcom/android/server/net/MdoCore$2;
.super Landroid/net/IUrspConnectionListener$Stub;
.source "MdoCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/MdoCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/MdoCore;


# direct methods
.method constructor <init>(Lcom/android/server/net/MdoCore;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/net/MdoCore;

    .line 467
    iput-object p1, p0, Lcom/android/server/net/MdoCore$2;->this$0:Lcom/android/server/net/MdoCore;

    invoke-direct {p0}, Landroid/net/IUrspConnectionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(IILandroid/net/Network;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "netId"    # I
    .param p3, "network"    # Landroid/net/Network;

    .line 470
    if-eqz p1, :cond_3

    return-void

    .line 471
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection state changed, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", netId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/MdoCore;->log(Ljava/lang/String;)V

    .line 474
    :try_start_23
    iget-object v0, p0, Lcom/android/server/net/MdoCore$2;->this$0:Lcom/android/server/net/MdoCore;

    iget-object v0, v0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getConnectivityManager()Landroid/net/IConnectivityManager;

    move-result-object v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    invoke-interface {v0, p3, v1, v2}, Landroid/net/IConnectivityManager;->getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 475
    .local v0, "ni":Landroid/net/NetworkInfo;
    iget-object v1, p0, Lcom/android/server/net/MdoCore$2;->this$0:Lcom/android/server/net/MdoCore;

    # getter for: Lcom/android/server/net/MdoCore;->mMdoState:Z
    invoke-static {v1}, Lcom/android/server/net/MdoCore;->access$000(Lcom/android/server/net/MdoCore;)Z

    move-result v1

    if-eqz v1, :cond_6a

    if-eqz p2, :cond_6a

    if-eqz v0, :cond_6a

    .line 476
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send MDO netId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") to NMS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/MdoCore;->log(Ljava/lang/String;)V

    .line 478
    iget-object v1, p0, Lcom/android/server/net/MdoCore$2;->this$0:Lcom/android/server/net/MdoCore;

    invoke-virtual {v1, p2}, Lcom/android/server/net/MdoCore;->setUrspNetId(I)V

    goto :goto_76

    .line 480
    :cond_6a
    const-string/jumbo v1, "send MDO netId(0) to NMS"

    invoke-static {v1}, Lcom/android/server/net/MdoCore;->log(Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lcom/android/server/net/MdoCore$2;->this$0:Lcom/android/server/net/MdoCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/net/MdoCore;->setUrspNetId(I)V

    .line 483
    :goto_76
    iget-object v1, p0, Lcom/android/server/net/MdoCore$2;->this$0:Lcom/android/server/net/MdoCore;

    # getter for: Lcom/android/server/net/MdoCore;->mMdoNotification:Lcom/android/server/net/MdoNotification;
    invoke-static {v1}, Lcom/android/server/net/MdoCore;->access$200(Lcom/android/server/net/MdoCore;)Lcom/android/server/net/MdoNotification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/net/MdoNotification;->updateNotification()V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_7f} :catch_81

    .line 486
    nop

    .line 487
    return-void

    .line 484
    .end local v0    # "ni":Landroid/net/NetworkInfo;
    :catch_81
    move-exception v0

    .line 485
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
