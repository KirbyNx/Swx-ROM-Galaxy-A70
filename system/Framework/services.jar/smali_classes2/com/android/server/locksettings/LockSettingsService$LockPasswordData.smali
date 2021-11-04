.class final Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LockPasswordData"
.end annotation


# instance fields
.field exception:Ljava/lang/Exception;

.field subException:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;

.field unlockFinishTime:J

.field unlockPrepareTime:J

.field unlockProfileUserRequestTime:J

.field unlockRequestTime:J

.field unlockType:I

.field userId:I


# direct methods
.method private constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 2

    .line 5499
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p2, "x1"    # Lcom/android/server/locksettings/LockSettingsService$1;

    .line 5499
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    return-void
.end method

.method private dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "nowTime"    # J
    .param p5, "time"    # J

    .line 5561
    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    if-gez v2, :cond_c

    .line 5562
    const-string v0, "<error>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_27

    .line 5563
    :cond_c
    cmp-long v0, p5, v0

    if-nez v0, :cond_16

    .line 5564
    const-string v0, "<unknown>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_27

    .line 5566
    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5567
    sub-long v0, p3, p5

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 5568
    const-string v0, " ago"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5569
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5571
    :goto_27
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 16
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 5521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5522
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 5523
    .local v10, "nowRealtime":J
    const-string v0, "        unlock request time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5524
    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->unlockType:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ") "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5525
    iget-wide v5, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->unlockRequestTime:J

    move-object v0, p0

    move-object v1, p1

    move-wide v3, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 5526
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->userId:I

    if-eqz v0, :cond_37

    .line 5527
    const-string v0, "        unlock prepare time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5528
    iget-wide v8, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->unlockPrepareTime:J

    move-object v3, p0

    move-object v4, p1

    move-object v5, v2

    move-wide v6, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 5530
    :cond_37
    iget-wide v0, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->unlockFinishTime:J

    const-wide/16 v12, 0x0

    cmp-long v0, v0, v12

    if-eqz v0, :cond_4d

    .line 5531
    const-string v0, "        unlock finish time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5532
    iget-wide v8, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->unlockFinishTime:J

    move-object v3, p0

    move-object v4, p1

    move-object v5, v2

    move-wide v6, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 5534
    :cond_4d
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->exception:Ljava/lang/Exception;

    const-string v1, "        unlock exception: "

    if-eqz v0, :cond_67

    .line 5535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->exception:Ljava/lang/Exception;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5537
    :cond_67
    iget-wide v3, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->unlockProfileUserRequestTime:J

    cmp-long v0, v3, v12

    if-eqz v0, :cond_7b

    .line 5538
    const-string v0, "        unlock profile user request time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5539
    iget-wide v8, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->unlockProfileUserRequestTime:J

    move-object v3, p0

    move-object v4, p1

    move-object v5, v2

    move-wide v6, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 5541
    :cond_7b
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->subException:Ljava/lang/Exception;

    if-eqz v0, :cond_93

    .line 5542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->subException:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5544
    :cond_93
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->userId:I

    if-eqz v0, :cond_109

    .line 5545
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5547
    .local v0, "origId":J
    :try_start_9b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "        SeparateProfileChallengeEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    const-string/jumbo v5, "lockscreen.profilechallenge"

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->userId:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "        hasChildProfileLock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-object v4, v4, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v5, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->userId:I

    invoke-virtual {v4, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5549
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    const-string v4, "childprofile_key_fail_reason"

    const-string v5, ""

    iget v6, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->userId:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 5550
    .local v3, "ChildProfileKeyFailReason":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_106

    .line 5551
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        ChildProfileKeyFailReason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_ff} :catch_105
    .catchall {:try_start_9b .. :try_end_ff} :catchall_100

    goto :goto_106

    .line 5555
    .end local v3    # "ChildProfileKeyFailReason":Ljava/lang/String;
    :catchall_100
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5556
    throw v3

    .line 5553
    :catch_105
    move-exception v3

    .line 5555
    :cond_106
    :goto_106
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5558
    .end local v0    # "origId":J
    :cond_109
    return-void
.end method

.method reset()V
    .registers 4

    .line 5510
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->userId:I

    .line 5511
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->unlockPrepareTime:J

    .line 5512
    iput-wide v1, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->unlockRequestTime:J

    .line 5513
    iput-wide v1, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->unlockFinishTime:J

    .line 5514
    iput-wide v1, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->unlockProfileUserRequestTime:J

    .line 5515
    iput v0, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->unlockType:I

    .line 5516
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->exception:Ljava/lang/Exception;

    .line 5517
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->subException:Ljava/lang/Exception;

    .line 5518
    return-void
.end method
