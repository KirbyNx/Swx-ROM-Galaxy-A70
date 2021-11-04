.class Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;
.super Lcom/samsung/android/mcfds/lib/common/ISimpleCallback$Stub;
.source "AbstractDeviceSyncManager.java"


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

    .line 136
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    invoke-direct {p0}, Lcom/samsung/android/mcfds/lib/common/ISimpleCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Landroid/os/Message;)V
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_52

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mServiceStateListener - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MCF_DS_LIB]_DeviceSyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-ne v0, v1, :cond_34

    .line 142
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    # setter for: Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I
    invoke-static {v0, v2}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$002(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;I)I

    .line 143
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->start()V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    # invokes: Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->notifyStateChanged(I)V
    invoke-static {v0, v2}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$200(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;I)V

    goto :goto_52

    .line 146
    :cond_34
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    # getter for: Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I
    invoke-static {v0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$000(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v2, :cond_43

    .line 147
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    # setter for: Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I
    invoke-static {v0, v1}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$002(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;I)I

    .line 148
    return-void

    .line 150
    :cond_43
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    # setter for: Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I
    invoke-static {v0, v1}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$002(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;I)I

    .line 151
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->stop()V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    # invokes: Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->notifyStateChanged(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$200(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;I)V

    .line 155
    :cond_52
    :goto_52
    return-void
.end method
