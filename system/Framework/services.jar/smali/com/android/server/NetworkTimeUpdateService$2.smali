.class Lcom/android/server/NetworkTimeUpdateService$2;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkTimeUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkTimeUpdateService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/NetworkTimeUpdateService;

    .line 375
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 379
    move-object v1, p0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "action":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive + intent "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NetworkTimeUpdateService"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v0, "com.samsung.android.knox.intent.action.UPDATE_NTP_PARAMETERS_INTERNAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_f7

    .line 383
    const/4 v4, 0x0

    .line 385
    .local v4, "ntpInfo":Lcom/samsung/android/knox/datetime/NtpInfo;
    :try_start_2a
    const-string v0, "date_time_policy"

    .line 386
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/datetime/IDateTimePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    move-result-object v0

    .line 387
    .local v0, "dateTimeService":Lcom/samsung/android/knox/datetime/IDateTimePolicy;
    if-eqz v0, :cond_44

    .line 388
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v0, v5}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->getNtpInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/datetime/NtpInfo;

    move-result-object v5
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_43} :catch_45

    move-object v4, v5

    .line 392
    .end local v0    # "dateTimeService":Lcom/samsung/android/knox/datetime/IDateTimePolicy;
    :cond_44
    goto :goto_46

    .line 390
    :catch_45
    move-exception v0

    .line 394
    :goto_46
    const v0, 0x10e00c8

    const v5, 0x10e00c7

    const v6, 0x10e00c6

    const/4 v7, 0x0

    if-eqz v4, :cond_ba

    invoke-virtual {v4}, Lcom/samsung/android/knox/datetime/NtpInfo;->getServer()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_ba

    .line 395
    invoke-virtual {v4}, Lcom/samsung/android/knox/datetime/NtpInfo;->getPollingInterval()J

    move-result-wide v8

    .line 396
    .local v8, "pollingInterval":J
    const-wide/16 v10, 0x0

    cmp-long v12, v10, v8

    if-eqz v12, :cond_68

    .line 397
    iget-object v6, v1, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J
    invoke-static {v6, v8, v9}, Lcom/android/server/NetworkTimeUpdateService;->access$402(Lcom/android/server/NetworkTimeUpdateService;J)J

    goto :goto_76

    .line 399
    :cond_68
    iget-object v12, v1, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v13, v6

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J
    invoke-static {v12, v13, v14}, Lcom/android/server/NetworkTimeUpdateService;->access$402(Lcom/android/server/NetworkTimeUpdateService;J)J

    .line 402
    :goto_76
    invoke-virtual {v4}, Lcom/samsung/android/knox/datetime/NtpInfo;->getPollingInterval()J

    move-result-wide v12

    .line 403
    .local v12, "pollingIntervalShorterMs":J
    cmp-long v6, v10, v12

    if-eqz v6, :cond_84

    .line 404
    iget-object v5, v1, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J
    invoke-static {v5, v12, v13}, Lcom/android/server/NetworkTimeUpdateService;->access$502(Lcom/android/server/NetworkTimeUpdateService;J)J

    goto :goto_92

    .line 406
    :cond_84
    iget-object v6, v1, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v10, v5

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J
    invoke-static {v6, v10, v11}, Lcom/android/server/NetworkTimeUpdateService;->access$502(Lcom/android/server/NetworkTimeUpdateService;J)J

    .line 409
    :goto_92
    invoke-virtual {v4}, Lcom/samsung/android/knox/datetime/NtpInfo;->getMaxAttempts()I

    move-result v5

    .line 410
    .local v5, "maxAttempts":I
    if-eqz v5, :cond_9e

    .line 411
    iget-object v0, v1, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I
    invoke-static {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;->access$602(Lcom/android/server/NetworkTimeUpdateService;I)I

    goto :goto_ab

    .line 413
    :cond_9e
    iget-object v6, v1, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I
    invoke-static {v6, v0}, Lcom/android/server/NetworkTimeUpdateService;->access$602(Lcom/android/server/NetworkTimeUpdateService;I)I

    .line 416
    :goto_ab
    invoke-virtual {v4}, Lcom/samsung/android/knox/datetime/NtpInfo;->getTimeErrorThreshold()I

    move-result v0

    .line 425
    .local v0, "timeErrorThreshold":I
    iget-object v6, v1, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mNtpSetByMDM:Z
    invoke-static {v6, v3}, Lcom/android/server/NetworkTimeUpdateService;->access$702(Lcom/android/server/NetworkTimeUpdateService;Z)Z

    .line 426
    iget-object v3, v1, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I
    invoke-static {v3, v7}, Lcom/android/server/NetworkTimeUpdateService;->access$802(Lcom/android/server/NetworkTimeUpdateService;I)I

    .line 427
    .end local v0    # "timeErrorThreshold":I
    .end local v5    # "maxAttempts":I
    .end local v8    # "pollingInterval":J
    .end local v12    # "pollingIntervalShorterMs":J
    goto :goto_e8

    .line 428
    :cond_ba
    iget-object v3, v1, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mNtpSetByMDM:Z
    invoke-static {v3, v7}, Lcom/android/server/NetworkTimeUpdateService;->access$702(Lcom/android/server/NetworkTimeUpdateService;Z)Z

    .line 429
    iget-object v3, v1, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J
    invoke-static {v3, v6, v7}, Lcom/android/server/NetworkTimeUpdateService;->access$402(Lcom/android/server/NetworkTimeUpdateService;J)J

    .line 431
    iget-object v3, v1, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J
    invoke-static {v3, v5, v6}, Lcom/android/server/NetworkTimeUpdateService;->access$502(Lcom/android/server/NetworkTimeUpdateService;J)J

    .line 433
    iget-object v3, v1, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I
    invoke-static {v3, v0}, Lcom/android/server/NetworkTimeUpdateService;->access$602(Lcom/android/server/NetworkTimeUpdateService;I)I

    .line 440
    :goto_e8
    iget-object v0, v1, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    # getter for: Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/NetworkTimeUpdateService;->access$100(Lcom/android/server/NetworkTimeUpdateService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .end local v4    # "ntpInfo":Lcom/samsung/android/knox/datetime/NtpInfo;
    goto :goto_105

    .line 441
    :cond_f7
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 442
    iget-object v0, v1, Lcom/android/server/NetworkTimeUpdateService$2;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mBootCompleted:Z
    invoke-static {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;->access$902(Lcom/android/server/NetworkTimeUpdateService;Z)Z

    goto :goto_106

    .line 441
    :cond_105
    :goto_105
    nop

    .line 444
    :goto_106
    return-void
.end method
