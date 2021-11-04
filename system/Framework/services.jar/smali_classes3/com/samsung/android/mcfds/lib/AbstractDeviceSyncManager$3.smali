.class Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;
.super Ljava/lang/Object;
.source "AbstractDeviceSyncManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 234
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 238
    const-string v0, "[MCF_DS_LIB]_DeviceSyncManager"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    const/4 v1, 0x3

    # setter for: Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I
    invoke-static {v0, v1}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$002(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;I)I

    .line 240
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    invoke-static {p2}, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    move-result-object v2

    # setter for: Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;
    invoke-static {v0, v2}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$102(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;)Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    .line 241
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    # invokes: Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->notifyStateChanged(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$200(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;I)V

    .line 242
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    # invokes: Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->registerServiceStateListener()V
    invoke-static {v0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$300(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)V

    .line 243
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 246
    const-string v0, "[MCF_DS_LIB]_DeviceSyncManager"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I
    invoke-static {v0, v1}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$002(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;I)I

    .line 248
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    const/4 v2, 0x0

    # setter for: Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;
    invoke-static {v0, v2}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$102(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;)Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    .line 249
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->stop()V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;

    # invokes: Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->notifyStateChanged(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->access$200(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;I)V

    .line 251
    return-void
.end method
