.class Lcom/android/server/am/ActivityManagerShellCommand$1;
.super Ljava/lang/Object;
.source "ActivityManagerShellCommand.java"

# interfaces
.implements Landroid/content/Intent$CommandOptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerShellCommand;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerShellCommand;

    .line 349
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleOption(Ljava/lang/String;Landroid/os/ShellCommand;)Z
    .registers 7
    .param p1, "opt"    # Ljava/lang/String;
    .param p2, "cmd"    # Landroid/os/ShellCommand;

    .line 352
    const-string v0, "-D"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 353
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    const/4 v2, 0x2

    # |= operator for: Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I
    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$076(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto/16 :goto_1e9

    .line 354
    :cond_11
    const-string v0, "-N"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 355
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    const/16 v2, 0x8

    # |= operator for: Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I
    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$076(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto/16 :goto_1e9

    .line 356
    :cond_22
    const-string v0, "-W"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 357
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    # setter for: Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$102(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_1e9

    .line 358
    :cond_31
    const-string v0, "-P"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 359
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$202(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    # setter for: Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$302(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_1e9

    .line 361
    :cond_49
    const-string v0, "--start-profiler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_62

    .line 362
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->access$202(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    # setter for: Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z
    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$302(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_1e9

    .line 364
    :cond_62
    const-string v0, "--sampling"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 365
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I
    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$402(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto/16 :goto_1e9

    .line 366
    :cond_79
    const-string v0, "--streaming"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 367
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    # setter for: Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$502(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_1e9

    .line 368
    :cond_88
    const-string v0, "--attach-agent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "Multiple --attach-agent(-bind) not supported"

    if-eqz v0, :cond_b2

    .line 369
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    # getter for: Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerShellCommand;->access$600(Lcom/android/server/am/ActivityManagerShellCommand;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a2

    .line 370
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    return v2

    .line 374
    :cond_a2
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->access$602(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    # setter for: Lcom/android/server/am/ActivityManagerShellCommand;->mAttachAgentDuringBind:Z
    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$702(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_1e9

    .line 376
    :cond_b2
    const-string v0, "--attach-agent-bind"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_da

    .line 377
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    # getter for: Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerShellCommand;->access$600(Lcom/android/server/am/ActivityManagerShellCommand;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ca

    .line 378
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    return v2

    .line 382
    :cond_ca
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$602(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;

    .line 383
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    # setter for: Lcom/android/server/am/ActivityManagerShellCommand;->mAttachAgentDuringBind:Z
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$702(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_1e9

    .line 384
    :cond_da
    const-string v0, "-R"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 385
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I
    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$802(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto/16 :goto_1e9

    .line 386
    :cond_f1
    const-string v0, "-S"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 387
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    # setter for: Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$902(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_1e9

    .line 388
    :cond_100
    const-string v0, "--track-allocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 389
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    const/4 v2, 0x4

    # |= operator for: Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I
    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$076(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto/16 :goto_1e9

    .line 390
    :cond_110
    const-string v0, "--user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_127

    .line 391
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I
    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1002(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto/16 :goto_1e9

    .line 392
    :cond_127
    const-string v0, "--receiver-permission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 393
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/server/am/ActivityManagerShellCommand;->mReceiverPermission:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1102(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1e9

    .line 394
    :cond_13a
    const-string v0, "--display"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_151

    .line 395
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I
    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1202(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto/16 :goto_1e9

    .line 396
    :cond_151
    const-string v0, "--windowingMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_168

    .line 397
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I
    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1302(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto/16 :goto_1e9

    .line 399
    :cond_168
    nop

    .line 400
    const-string v0, "--forceWindowingMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 401
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/android/server/am/ActivityManagerShellCommand;->mForceWindowingMode:I
    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1402(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto :goto_1e9

    .line 403
    :cond_17f
    const-string v0, "--activityType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_195

    .line 404
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I
    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1502(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto :goto_1e9

    .line 405
    :cond_195
    const-string v0, "--task"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ab

    .line 406
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I
    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1602(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto :goto_1e9

    .line 407
    :cond_1ab
    const-string v0, "--task-overlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b9

    .line 408
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    # setter for: Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1702(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto :goto_1e9

    .line 409
    :cond_1b9
    const-string v0, "--lock-task"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c7

    .line 410
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    # setter for: Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1802(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto :goto_1e9

    .line 411
    :cond_1c7
    const-string v0, "--allow-background-activity-starts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ea

    .line 412
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    # getter for: Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1900(Lcom/android/server/am/ActivityManagerShellCommand;)Landroid/app/BroadcastOptions;

    move-result-object v0

    if-nez v0, :cond_1e0

    .line 413
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    # setter for: Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;
    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1902(Lcom/android/server/am/ActivityManagerShellCommand;Landroid/app/BroadcastOptions;)Landroid/app/BroadcastOptions;

    .line 415
    :cond_1e0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    # getter for: Lcom/android/server/am/ActivityManagerShellCommand;->mBroadcastOptions:Landroid/app/BroadcastOptions;
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1900(Lcom/android/server/am/ActivityManagerShellCommand;)Landroid/app/BroadcastOptions;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    .line 419
    :goto_1e9
    return v1

    .line 417
    :cond_1ea
    return v2
.end method
