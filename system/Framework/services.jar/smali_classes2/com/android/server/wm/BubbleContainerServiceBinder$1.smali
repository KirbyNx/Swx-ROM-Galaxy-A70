.class Lcom/android/server/wm/BubbleContainerServiceBinder$1;
.super Ljava/lang/Object;
.source "BubbleContainerServiceBinder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BubbleContainerServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/BubbleContainerServiceBinder;


# direct methods
.method constructor <init>(Lcom/android/server/wm/BubbleContainerServiceBinder;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/BubbleContainerServiceBinder;

    .line 52
    iput-object p1, p0, Lcom/android/server/wm/BubbleContainerServiceBinder$1;->this$0:Lcom/android/server/wm/BubbleContainerServiceBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 55
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder$1;->this$0:Lcom/android/server/wm/BubbleContainerServiceBinder;

    iget-object v0, v0, Lcom/android/server/wm/BubbleContainerServiceBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_1d
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 59
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder$1;->this$0:Lcom/android/server/wm/BubbleContainerServiceBinder;

    iget-object v0, v0, Lcom/android/server/wm/BubbleContainerServiceBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder$1;->this$0:Lcom/android/server/wm/BubbleContainerServiceBinder;

    # getter for: Lcom/android/server/wm/BubbleContainerServiceBinder;->mIsServiceRunning:Z
    invoke-static {v0}, Lcom/android/server/wm/BubbleContainerServiceBinder;->access$000(Lcom/android/server/wm/BubbleContainerServiceBinder;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder$1;->this$0:Lcom/android/server/wm/BubbleContainerServiceBinder;

    const-string/jumbo v1, "service_disconnected"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BubbleContainerServiceBinder;->unbindServiceIfNeeded(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/BubbleContainerServiceBinder$1;->this$0:Lcom/android/server/wm/BubbleContainerServiceBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BubbleContainerServiceBinder;->bindServiceIfNeeded(Ljava/lang/String;)V

    .line 65
    :cond_32
    return-void
.end method
