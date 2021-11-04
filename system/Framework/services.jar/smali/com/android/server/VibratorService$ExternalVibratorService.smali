.class final Lcom/android/server/VibratorService$ExternalVibratorService;
.super Landroid/os/IExternalVibratorService$Stub;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExternalVibratorService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;
    }
.end annotation


# instance fields
.field mCurrentExternalDeathRecipient:Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/VibratorService;

    .line 2351
    iput-object p1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/os/IExternalVibratorService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onExternalVibrationStart(Landroid/os/ExternalVibration;)I
    .registers 7
    .param p1, "vib"    # Landroid/os/ExternalVibration;

    .line 2356
    iget-object v0, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mSupportsExternalControl:Z
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$3400(Lcom/android/server/VibratorService;)Z

    move-result v0

    const/16 v1, -0x64

    if-nez v0, :cond_b

    .line 2357
    return v1

    .line 2359
    :cond_b
    nop

    .line 2360
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result v0

    const/4 v2, -0x1

    .line 2359
    const-string v3, "android.permission.VIBRATE"

    const/4 v4, 0x1

    invoke-static {v3, v0, v2, v4}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_47

    .line 2362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tried to play externally controlled vibration without VIBRATE permission, ignoring."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VibratorService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    return v1

    .line 2369
    :cond_47
    iget-object v0, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$100(Lcom/android/server/VibratorService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2370
    :try_start_4e
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$3500(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/ExternalVibration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_be

    .line 2371
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$3500(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;

    move-result-object v1

    if-nez v1, :cond_6c

    .line 2375
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    .line 2376
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->setVibratorUnderExternalControl(Z)V
    invoke-static {v1, v4}, Lcom/android/server/VibratorService;->access$3600(Lcom/android/server/VibratorService;Z)V

    .line 2386
    :cond_6c
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    # setter for: Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;
    invoke-static {v1, p1}, Lcom/android/server/VibratorService;->access$3502(Lcom/android/server/VibratorService;Landroid/os/ExternalVibration;)Landroid/os/ExternalVibration;

    .line 2387
    new-instance v1, Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;-><init>(Lcom/android/server/VibratorService$ExternalVibratorService;Lcom/android/server/VibratorService$1;)V

    iput-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->mCurrentExternalDeathRecipient:Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    .line 2388
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$3500(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->mCurrentExternalDeathRecipient:Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    invoke-virtual {v1, v2}, Landroid/os/ExternalVibration;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 2389
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mPreviousExternalVibrations:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$3800(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$3900(Lcom/android/server/VibratorService;)I

    move-result v2

    if-le v1, v2, :cond_9f

    .line 2390
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mPreviousExternalVibrations:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$3800(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 2392
    :cond_9f
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mPreviousExternalVibrations:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$3800(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 2394
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Playing external vibration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    :cond_be
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v1

    .line 2400
    .local v1, "usage":I
    # invokes: Lcom/android/server/VibratorService;->isRingtone(I)Z
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$600(I)Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 2401
    iget-object v2, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$4000(Lcom/android/server/VibratorService;)Landroid/os/Vibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Vibrator;->getDefaultRingVibrationIntensity()I

    move-result v2

    .line 2402
    .local v2, "defaultIntensity":I
    iget-object v3, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mRingIntensity:I
    invoke-static {v3}, Lcom/android/server/VibratorService;->access$4100(Lcom/android/server/VibratorService;)I

    move-result v3

    .local v3, "currentIntensity":I
    goto :goto_116

    .line 2403
    .end local v2    # "defaultIntensity":I
    .end local v3    # "currentIntensity":I
    :cond_dd
    # invokes: Lcom/android/server/VibratorService;->isNotification(I)Z
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$500(I)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 2404
    iget-object v2, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$4000(Lcom/android/server/VibratorService;)Landroid/os/Vibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v2

    .line 2405
    .restart local v2    # "defaultIntensity":I
    iget-object v3, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mNotificationIntensity:I
    invoke-static {v3}, Lcom/android/server/VibratorService;->access$4200(Lcom/android/server/VibratorService;)I

    move-result v3

    .restart local v3    # "currentIntensity":I
    goto :goto_116

    .line 2406
    .end local v2    # "defaultIntensity":I
    .end local v3    # "currentIntensity":I
    :cond_f4
    # invokes: Lcom/android/server/VibratorService;->isHapticFeedback(I)Z
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$400(I)Z

    move-result v2

    if-eqz v2, :cond_10b

    .line 2407
    iget-object v2, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$4000(Lcom/android/server/VibratorService;)Landroid/os/Vibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v2

    .line 2408
    .restart local v2    # "defaultIntensity":I
    iget-object v3, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I
    invoke-static {v3}, Lcom/android/server/VibratorService;->access$4300(Lcom/android/server/VibratorService;)I

    move-result v3

    .restart local v3    # "currentIntensity":I
    goto :goto_116

    .line 2409
    .end local v2    # "defaultIntensity":I
    .end local v3    # "currentIntensity":I
    :cond_10b
    # invokes: Lcom/android/server/VibratorService;->isAlarm(I)Z
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$700(I)Z

    move-result v2

    if-eqz v2, :cond_114

    .line 2410
    const/4 v2, 0x3

    .line 2411
    .restart local v2    # "defaultIntensity":I
    const/4 v3, 0x3

    .restart local v3    # "currentIntensity":I
    goto :goto_116

    .line 2413
    .end local v2    # "defaultIntensity":I
    .end local v3    # "currentIntensity":I
    :cond_114
    const/4 v2, 0x0

    .line 2414
    .restart local v2    # "defaultIntensity":I
    const/4 v3, 0x0

    .line 2416
    .restart local v3    # "currentIntensity":I
    :goto_116
    sub-int/2addr v3, v2

    .line 2417
    .end local v1    # "usage":I
    .end local v2    # "defaultIntensity":I
    .local v3, "scaleLevel":I
    monitor-exit v0
    :try_end_118
    .catchall {:try_start_4e .. :try_end_118} :catchall_13f

    .line 2418
    const/4 v0, -0x2

    if-lt v3, v0, :cond_11f

    const/4 v0, 0x2

    if-gt v3, v0, :cond_11f

    .line 2419
    return v3

    .line 2423
    :cond_11f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in scaling calculations, ended up with invalid scale level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for vibration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibratorService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    const/4 v0, 0x0

    return v0

    .line 2417
    .end local v3    # "scaleLevel":I
    :catchall_13f
    move-exception v1

    :try_start_140
    monitor-exit v0
    :try_end_141
    .catchall {:try_start_140 .. :try_end_141} :catchall_13f

    throw v1
.end method

.method public onExternalVibrationStop(Landroid/os/ExternalVibration;)V
    .registers 6
    .param p1, "vib"    # Landroid/os/ExternalVibration;

    .line 2431
    iget-object v0, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$100(Lcom/android/server/VibratorService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2432
    :try_start_7
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$3500(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/ExternalVibration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 2433
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$3500(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->mCurrentExternalDeathRecipient:Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    invoke-virtual {v1, v2}, Landroid/os/ExternalVibration;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 2434
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->mCurrentExternalDeathRecipient:Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    .line 2435
    iget-object v2, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    # setter for: Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;
    invoke-static {v2, v1}, Lcom/android/server/VibratorService;->access$3502(Lcom/android/server/VibratorService;Landroid/os/ExternalVibration;)Landroid/os/ExternalVibration;

    .line 2436
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/VibratorService;->setVibratorUnderExternalControl(Z)V
    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->access$3600(Lcom/android/server/VibratorService;Z)V

    .line 2438
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping external vibration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    :cond_42
    monitor-exit v0

    .line 2442
    return-void

    .line 2441
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_44

    throw v1
.end method
