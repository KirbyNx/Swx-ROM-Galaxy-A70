.class Lcom/android/server/power/PowerManagerService$ScaleFactorLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleFactorLock"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;)V
    .registers 3
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 10823
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 10824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10825
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->binder:Landroid/os/IBinder;

    .line 10827
    const/4 p1, 0x0

    :try_start_8
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    .line 10830
    goto :goto_10

    .line 10828
    :catch_c
    move-exception p1

    .line 10829
    .local p1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->binderDied()V

    .line 10831
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 10834
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$200(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10835
    :try_start_7
    const-string v1, "PowerManagerService"

    const-string v2, "ScaleFactorLock : binderDied"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10837
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->this$0:Lcom/android/server/power/PowerManagerService;

    const/high16 v2, -0x40800000    # -1.0f

    # setter for: Lcom/android/server/power/PowerManagerService;->mScreenBrightnessScaleFactor:F
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$15202(Lcom/android/server/power/PowerManagerService;F)F

    .line 10838
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mScaleFactorLock:Lcom/android/server/power/PowerManagerService$ScaleFactorLock;
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$20102(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$ScaleFactorLock;)Lcom/android/server/power/PowerManagerService$ScaleFactorLock;

    .line 10839
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x20

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$3676(Lcom/android/server/power/PowerManagerService;I)I

    .line 10841
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3700(Lcom/android/server/power/PowerManagerService;)V

    .line 10842
    monitor-exit v0

    .line 10843
    return-void

    .line 10842
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v1
.end method
