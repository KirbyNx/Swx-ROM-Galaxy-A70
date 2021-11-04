.class Lcom/android/server/DualAppManagerService$2$1;
.super Landroid/os/CountDownTimer;
.source "DualAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DualAppManagerService$2;->onChange(ZLjava/util/Collection;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/DualAppManagerService$2;

.field final synthetic val$dualProfileId:I


# direct methods
.method constructor <init>(Lcom/android/server/DualAppManagerService$2;JJI)V
    .registers 7
    .param p1, "this$1"    # Lcom/android/server/DualAppManagerService$2;
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .line 1441
    iput-object p1, p0, Lcom/android/server/DualAppManagerService$2$1;->this$1:Lcom/android/server/DualAppManagerService$2;

    iput p6, p0, Lcom/android/server/DualAppManagerService$2$1;->val$dualProfileId:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .line 1454
    const-string v0, "DualAppManagerService"

    const-string/jumbo v1, "onFinish"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    iget-object v0, p0, Lcom/android/server/DualAppManagerService$2$1;->this$1:Lcom/android/server/DualAppManagerService$2;

    iget-object v0, v0, Lcom/android/server/DualAppManagerService$2;->this$0:Lcom/android/server/DualAppManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/DualAppManagerService;->Flag_Timer_running:Z
    invoke-static {v0, v1}, Lcom/android/server/DualAppManagerService;->access$502(Lcom/android/server/DualAppManagerService;Z)Z

    .line 1456
    iget-object v0, p0, Lcom/android/server/DualAppManagerService$2$1;->this$1:Lcom/android/server/DualAppManagerService$2;

    iget-object v0, v0, Lcom/android/server/DualAppManagerService$2;->this$0:Lcom/android/server/DualAppManagerService;

    # setter for: Lcom/android/server/DualAppManagerService;->Flag_Request_on_Timer_running:Z
    invoke-static {v0, v1}, Lcom/android/server/DualAppManagerService;->access$602(Lcom/android/server/DualAppManagerService;Z)Z

    .line 1457
    return-void
.end method

.method public onTick(J)V
    .registers 5
    .param p1, "millisUntilFinished"    # J

    .line 1443
    const-string v0, "DualAppManagerService"

    const-string/jumbo v1, "onTick"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    iget-object v0, p0, Lcom/android/server/DualAppManagerService$2$1;->this$1:Lcom/android/server/DualAppManagerService$2;

    iget-object v0, v0, Lcom/android/server/DualAppManagerService$2;->this$0:Lcom/android/server/DualAppManagerService;

    # getter for: Lcom/android/server/DualAppManagerService;->Flag_Request_on_Timer_running:Z
    invoke-static {v0}, Lcom/android/server/DualAppManagerService;->access$600(Lcom/android/server/DualAppManagerService;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1445
    iget-object v0, p0, Lcom/android/server/DualAppManagerService$2$1;->this$1:Lcom/android/server/DualAppManagerService$2;

    iget-object v0, v0, Lcom/android/server/DualAppManagerService$2;->this$0:Lcom/android/server/DualAppManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/DualAppManagerService;->Flag_Request_on_Timer_running:Z
    invoke-static {v0, v1}, Lcom/android/server/DualAppManagerService;->access$602(Lcom/android/server/DualAppManagerService;Z)Z

    .line 1446
    iget-object v0, p0, Lcom/android/server/DualAppManagerService$2$1;->this$1:Lcom/android/server/DualAppManagerService$2;

    iget-object v0, v0, Lcom/android/server/DualAppManagerService$2;->this$0:Lcom/android/server/DualAppManagerService;

    iget v1, p0, Lcom/android/server/DualAppManagerService$2$1;->val$dualProfileId:I

    invoke-virtual {v0, v1}, Lcom/android/server/DualAppManagerService;->mediaScanFileForDeleteSync(I)V

    .line 1447
    # getter for: Lcom/android/server/DualAppManagerService;->mFilterMapRemoveDuplicateFile:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/DualAppManagerService;->access$700()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 1448
    :try_start_28
    # getter for: Lcom/android/server/DualAppManagerService;->mFilterMapRemoveDuplicateFile:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/DualAppManagerService;->access$700()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1449
    monitor-exit v0

    goto :goto_34

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_31

    throw v1

    .line 1451
    :cond_34
    :goto_34
    return-void
.end method
