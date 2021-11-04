.class final Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;
.super Ljava/lang/Object;
.source "BiometricServiceBase.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LockoutResetMonitor"
.end annotation


# static fields
.field private static final WAKELOCK_TIMEOUT_MS:J = 0x7d0L


# instance fields
.field private final mCallback:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

.field private final mRemoveCallbackRunnable:Ljava/lang/Runnable;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/server/biometrics/BiometricServiceBase;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .registers 6
    .param p2, "callback"    # Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    .line 663
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    new-instance v0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor$2;-><init>(Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->mRemoveCallbackRunnable:Ljava/lang/Runnable;

    .line 664
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->mCallback:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    .line 665
    # getter for: Lcom/android/server/biometrics/BiometricServiceBase;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {p1}, Lcom/android/server/biometrics/BiometricServiceBase;->access$1000(Lcom/android/server/biometrics/BiometricServiceBase;)Landroid/os/PowerManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "lockout reset callback"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 668
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->mCallback:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    invoke-interface {v0}, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_26} :catch_27

    .line 671
    goto :goto_31

    .line 669
    :catch_27
    move-exception v0

    .line 670
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v1, "caught remote exception in linkToDeath"

    invoke-static {p1, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 672
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_31
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    .line 658
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->releaseWakelock()V

    return-void
.end method

.method private releaseWakelock()V
    .registers 2

    .line 709
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 710
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 712
    :cond_d
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 704
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lockout reset callback binder died"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->mRemoveCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 706
    return-void
.end method

.method public sendLockoutReset()V
    .registers 5

    .line 675
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->mCallback:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    if-eqz v0, :cond_41

    .line 677
    :try_start_4
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 678
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->mCallback:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricServiceBase;->getHalDeviceId()J

    move-result-wide v1

    new-instance v3, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor$1;

    invoke-direct {v3, p0}, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor$1;-><init>(Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;->onLockoutReset(JLandroid/os/IRemoteCallback;)V
    :try_end_1b
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_1b} :catch_2c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1b} :catch_1c

    goto :goto_41

    .line 687
    :catch_1c
    move-exception v0

    .line 688
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to invoke onLockoutReset: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 689
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->releaseWakelock()V

    goto :goto_41

    .line 684
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2c
    move-exception v0

    .line 685
    .local v0, "e":Landroid/os/DeadObjectException;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Death object while invoking onLockoutReset: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 686
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iget-object v1, v1, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->mRemoveCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 692
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :cond_41
    :goto_41
    return-void
.end method
