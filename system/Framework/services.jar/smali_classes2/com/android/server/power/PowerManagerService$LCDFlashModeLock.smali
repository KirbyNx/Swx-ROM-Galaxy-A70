.class Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;
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
    name = "LCDFlashModeLock"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;)V
    .registers 3
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 10777
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 10778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10779
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->binder:Landroid/os/IBinder;

    .line 10781
    if-eqz p2, :cond_13

    .line 10782
    const/4 p1, 0x0

    :try_start_a
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_13

    .line 10784
    :catch_e
    move-exception p1

    .line 10785
    .local p1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->binderDied()V

    goto :goto_14

    .line 10786
    .end local p1    # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    nop

    .line 10787
    :goto_14
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 10790
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$200(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10791
    :try_start_7
    const-string v1, "PowerManagerService"

    const-string v2, "LCDFlashModeLock : binderDied"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10792
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->binder:Landroid/os/IBinder;

    # invokes: Lcom/android/server/power/PowerManagerService;->setLCDFlashModeInternal(ZLandroid/os/IBinder;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/power/PowerManagerService;->access$14900(Lcom/android/server/power/PowerManagerService;ZLandroid/os/IBinder;)V

    .line 10793
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->initLCDFlashMode()V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$20000(Lcom/android/server/power/PowerManagerService;)V

    .line 10794
    monitor-exit v0

    .line 10795
    return-void

    .line 10794
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1
.end method
