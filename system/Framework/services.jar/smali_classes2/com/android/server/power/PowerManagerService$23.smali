.class Lcom/android/server/power/PowerManagerService$23;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .line 10882
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$23;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 10885
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$23;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$200(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10886
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$23;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfBrightness:I
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$20200(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$23;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mTargetBrightnessForLimit:I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$20300(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    if-ne v1, v2, :cond_24

    .line 10887
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$23;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitRunning:Z
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$20402(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 10888
    const-string v1, "PowerManagerService"

    const-string v2, "[api] BrightnessLimitRunnable done"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10889
    monitor-exit v0

    return-void

    .line 10891
    :cond_24
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$23;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$23;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfBrightness:I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$20200(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$23;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mTargetBrightnessForLimit:I
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$20300(Lcom/android/server/power/PowerManagerService;)I

    move-result v3

    const/4 v4, -0x1

    if-le v2, v3, :cond_37

    move v2, v4

    goto :goto_38

    :cond_37
    const/4 v2, 0x1

    :goto_38
    # += operator for: Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfBrightness:I
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$20212(Lcom/android/server/power/PowerManagerService;I)I

    .line 10892
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$23;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$23;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfBrightness:I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$20200(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/android/server/power/PowerManagerService;->updateMasterBrightnessLimitLocked(II)V

    .line 10893
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$23;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5900(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$23;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitPeriod:I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$20500(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10894
    monitor-exit v0

    .line 10895
    return-void

    .line 10894
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_7 .. :try_end_5a} :catchall_58

    throw v1
.end method
