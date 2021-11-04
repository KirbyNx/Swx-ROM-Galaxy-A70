.class Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;
.super Ljava/lang/Object;
.source "AbstractDeviceSyncManager.java"

# interfaces
.implements Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    .line 86
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    iget-object v0, v0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public isAvailable()Z
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    # getter for: Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I
    invoke-static {v0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$000(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public obtain(ILandroid/os/Bundle;)Landroid/os/Message;
    .registers 4
    .param p1, "what"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 99
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 100
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 101
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    return-object v0
.end method

.method public sendMessage(Landroid/os/Message;)I
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 107
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    # getter for: Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;
    invoke-static {v0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$100(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    move-result-object v0

    const-string v1, "[MCF_DS_LIB]_DeviceSyncManager"

    if-nez v0, :cond_11

    .line 108
    const-string v0, "sendMessage : Service is invalid"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, -0x1

    return v0

    .line 112
    :cond_11
    const/4 v0, -0x1

    .line 114
    .local v0, "ret":I
    :try_start_12
    iget-object v2, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    # getter for: Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;
    invoke-static {v2}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$100(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;->internalCommand(Landroid/os/Message;)I

    move-result v1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1c} :catch_1e

    move v0, v1

    .line 117
    goto :goto_41

    .line 115
    :catch_1e
    move-exception v2

    .line 116
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMessage : [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_41
    return v0
.end method
