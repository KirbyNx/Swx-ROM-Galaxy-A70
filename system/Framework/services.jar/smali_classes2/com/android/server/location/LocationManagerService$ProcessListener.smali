.class Lcom/android/server/location/LocationManagerService$ProcessListener;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/app/ActivityManager$SemProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/LocationManagerService;

    .line 3056
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$ProcessListener;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onProcessDied$0$LocationManagerService$ProcessListener(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 3067
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$ProcessListener;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3068
    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$ProcessListener;->this$0:Lcom/android/server/location/LocationManagerService;

    # invokes: Lcom/android/server/location/LocationManagerService;->onProcessDiedLocked(I)V
    invoke-static {v1, p1}, Lcom/android/server/location/LocationManagerService;->access$4200(Lcom/android/server/location/LocationManagerService;I)V

    .line 3069
    monitor-exit v0

    .line 3070
    return-void

    .line 3069
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 3061
    return-void
.end method

.method public onProcessDied(II)V
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 3065
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$ProcessListener;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$1100(Lcom/android/server/location/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 3066
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$ProcessListener;->this$0:Lcom/android/server/location/LocationManagerService;

    # getter for: Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$2100(Lcom/android/server/location/LocationManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/-$$Lambda$LocationManagerService$ProcessListener$HytzTcbCZsSZ8bth-AeEZP_eYHs;

    invoke-direct {v1, p0, p2}, Lcom/android/server/location/-$$Lambda$LocationManagerService$ProcessListener$HytzTcbCZsSZ8bth-AeEZP_eYHs;-><init>(Lcom/android/server/location/LocationManagerService$ProcessListener;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3072
    :cond_1a
    return-void
.end method
