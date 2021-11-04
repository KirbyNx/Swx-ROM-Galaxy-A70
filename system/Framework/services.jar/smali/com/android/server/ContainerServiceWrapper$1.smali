.class Lcom/android/server/ContainerServiceWrapper$1;
.super Ljava/lang/Object;
.source "ContainerServiceWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ContainerServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ContainerServiceWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/ContainerServiceWrapper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ContainerServiceWrapper;

    .line 73
    iput-object p1, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 76
    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    # getter for: Lcom/android/server/ContainerServiceWrapper;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/ContainerServiceWrapper;->access$000(Lcom/android/server/ContainerServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Container service started : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    iget-object v2, v2, Lcom/android/server/ContainerServiceWrapper;->info:Lcom/android/server/ContainerServiceInfo;

    invoke-virtual {v2}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    # getter for: Lcom/android/server/ContainerServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/ContainerServiceWrapper;->access$100(Lcom/android/server/ContainerServiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    invoke-static {p2}, Lcom/samsung/android/knox/IContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IContainerService;

    move-result-object v1

    # setter for: Lcom/android/server/ContainerServiceWrapper;->mContainerService:Lcom/samsung/android/knox/IContainerService;
    invoke-static {v0, v1}, Lcom/android/server/ContainerServiceWrapper;->access$202(Lcom/android/server/ContainerServiceWrapper;Lcom/samsung/android/knox/IContainerService;)Lcom/samsung/android/knox/IContainerService;

    .line 80
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 84
    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    # getter for: Lcom/android/server/ContainerServiceWrapper;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/ContainerServiceWrapper;->access$000(Lcom/android/server/ContainerServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Container service disconnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    iget-object v2, v2, Lcom/android/server/ContainerServiceWrapper;->info:Lcom/android/server/ContainerServiceInfo;

    invoke-virtual {v2}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    # getter for: Lcom/android/server/ContainerServiceWrapper;->mBound:Z
    invoke-static {v0}, Lcom/android/server/ContainerServiceWrapper;->access$300(Lcom/android/server/ContainerServiceWrapper;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 86
    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/ContainerServiceWrapper;->mBound:Z
    invoke-static {v0, v1}, Lcom/android/server/ContainerServiceWrapper;->access$302(Lcom/android/server/ContainerServiceWrapper;Z)Z

    .line 87
    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    # invokes: Lcom/android/server/ContainerServiceWrapper;->triggerRestart()V
    invoke-static {v0}, Lcom/android/server/ContainerServiceWrapper;->access$400(Lcom/android/server/ContainerServiceWrapper;)V

    .line 89
    :cond_35
    return-void
.end method
