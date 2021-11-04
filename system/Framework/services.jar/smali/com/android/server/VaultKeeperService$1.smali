.class Lcom/android/server/VaultKeeperService$1;
.super Landroid/os/Handler;
.source "VaultKeeperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VaultKeeperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VaultKeeperService;


# direct methods
.method constructor <init>(Lcom/android/server/VaultKeeperService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/VaultKeeperService;

    .line 159
    iput-object p1, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 163
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "VaultKeeperService"

    const/4 v3, 0x2

    if-eq v0, v1, :cond_27

    if-eq v0, v3, :cond_b

    goto :goto_63

    .line 178
    :cond_b
    iget-object v0, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    # getter for: Lcom/android/server/VaultKeeperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/VaultKeeperService;->access$100(Lcom/android/server/VaultKeeperService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 179
    iget-object v0, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    # getter for: Lcom/android/server/VaultKeeperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/VaultKeeperService;->access$100(Lcom/android/server/VaultKeeperService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 180
    const-string/jumbo v0, "wakelock is released!!"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 165
    :cond_27
    iget-object v0, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    # getter for: Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/VaultKeeperService;->access$000(Lcom/android/server/VaultKeeperService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 166
    iget-object v0, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    # getter for: Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/VaultKeeperService;->access$000(Lcom/android/server/VaultKeeperService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    :cond_3c
    iget-object v0, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    # getter for: Lcom/android/server/VaultKeeperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/VaultKeeperService;->access$100(Lcom/android/server/VaultKeeperService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_57

    .line 170
    iget-object v0, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    # getter for: Lcom/android/server/VaultKeeperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/VaultKeeperService;->access$100(Lcom/android/server/VaultKeeperService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 171
    const-string/jumbo v0, "wakelock is acquired!!"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_57
    iget-object v0, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    # getter for: Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/VaultKeeperService;->access$000(Lcom/android/server/VaultKeeperService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 175
    nop

    .line 184
    :cond_63
    :goto_63
    return-void
.end method
