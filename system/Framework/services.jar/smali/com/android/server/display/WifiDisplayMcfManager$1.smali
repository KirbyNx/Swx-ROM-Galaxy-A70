.class Lcom/android/server/display/WifiDisplayMcfManager$1;
.super Ljava/lang/Object;
.source "WifiDisplayMcfManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 331
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$1;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 333
    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/WifiDisplayMcfManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BleAdvertiserService onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$1;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # setter for: Lcom/android/server/display/WifiDisplayMcfManager;->mService:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayMcfManager;->access$102(Lcom/android/server/display/WifiDisplayMcfManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 335
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$1;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayMcfManager;->access$202(Lcom/android/server/display/WifiDisplayMcfManager;Z)Z

    .line 337
    :try_start_19
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$1;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->mService:Landroid/os/Messenger;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayMcfManager;->access$100(Lcom/android/server/display/WifiDisplayMcfManager;)Landroid/os/Messenger;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_28} :catch_29

    .line 339
    goto :goto_2a

    .line 338
    :catch_29
    move-exception v0

    .line 340
    :goto_2a
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 343
    # getter for: Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/WifiDisplayMcfManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BleAdvertiserService onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$1;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayMcfManager;->mService:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayMcfManager;->access$102(Lcom/android/server/display/WifiDisplayMcfManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 345
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$1;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayMcfManager;->access$202(Lcom/android/server/display/WifiDisplayMcfManager;Z)Z

    .line 346
    return-void
.end method
