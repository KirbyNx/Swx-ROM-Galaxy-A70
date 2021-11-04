.class Lcom/android/server/power/PowerManagerService$18;
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

    .line 10173
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$18;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 10176
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$18;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$200(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10177
    :try_start_7
    const-string v1, "PowerManagerService"

    const-string/jumbo v2, "mCoverAuthReady since boot"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10178
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$18;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mCoverAuthReady:Z
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$13702(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 10179
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$18;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mCoverAuthReadyRunnable:Ljava/lang/Runnable;
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$13802(Lcom/android/server/power/PowerManagerService;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 10180
    monitor-exit v0

    .line 10181
    return-void

    .line 10180
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1
.end method
