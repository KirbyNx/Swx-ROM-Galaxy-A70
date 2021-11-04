.class Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService$ExternalVibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExternalVibrationDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/VibratorService$ExternalVibratorService;


# direct methods
.method private constructor <init>(Lcom/android/server/VibratorService$ExternalVibratorService;)V
    .registers 2

    .line 2444
    iput-object p1, p0, Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;->this$1:Lcom/android/server/VibratorService$ExternalVibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService$ExternalVibratorService;Lcom/android/server/VibratorService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/VibratorService$ExternalVibratorService;
    .param p2, "x1"    # Lcom/android/server/VibratorService$1;

    .line 2444
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;-><init>(Lcom/android/server/VibratorService$ExternalVibratorService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 2446
    iget-object v0, p0, Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;->this$1:Lcom/android/server/VibratorService$ExternalVibratorService;

    iget-object v0, v0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$100(Lcom/android/server/VibratorService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2447
    :try_start_9
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;->this$1:Lcom/android/server/VibratorService$ExternalVibratorService;

    iget-object v2, p0, Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;->this$1:Lcom/android/server/VibratorService$ExternalVibratorService;

    iget-object v2, v2, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$3500(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/VibratorService$ExternalVibratorService;->onExternalVibrationStop(Landroid/os/ExternalVibration;)V

    .line 2448
    monitor-exit v0

    .line 2449
    return-void

    .line 2448
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_18

    throw v1
.end method
