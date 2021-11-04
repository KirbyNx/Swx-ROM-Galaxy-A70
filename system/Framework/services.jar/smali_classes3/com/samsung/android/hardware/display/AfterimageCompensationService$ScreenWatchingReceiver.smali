.class final Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AfterimageCompensationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/AfterimageCompensationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .registers 2

    .line 506
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Lcom/samsung/android/hardware/display/AfterimageCompensationService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;
    .param p2, "x1"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService$1;

    .line 506
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 509
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 512
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "HqmManagerService"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SemHqmManager;

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mSemHqmManager:Landroid/os/SemHqmManager;
    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$102(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Landroid/os/SemHqmManager;)Landroid/os/SemHqmManager;

    .line 515
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$302(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Landroid/view/WindowManager;)Landroid/view/WindowManager;

    .line 518
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v1

    const-string v2, "AfterimageCompensationService"

    if-eqz v1, :cond_54

    .line 519
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    new-instance v3, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;-><init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Lcom/samsung/android/hardware/display/AfterimageCompensationService$1;)V

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;
    invoke-static {v1, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$502(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 520
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$500(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 521
    const-string v1, "AFC Thread Start"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 524
    :cond_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AfcStateCondition is already done - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :goto_6e
    return-void

    .line 528
    :cond_6f
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 529
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->receive_screen_on_intent()V
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$700(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 530
    return-void

    .line 532
    :cond_7d
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 533
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->receive_screen_off_intent()V
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$800(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 534
    return-void

    .line 536
    :cond_8b
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 537
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v1

    if-ltz v1, :cond_bc

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_bc

    .line 538
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v1

    if-lez v1, :cond_bc

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v1

    const v2, 0x10c8e0

    if-gt v1, v2, :cond_bc

    .line 539
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->writeLoggingDataEfs()V
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1100(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 542
    :cond_bc
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v1

    if-eqz v1, :cond_ee

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_ee

    .line 543
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_ee

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v1

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataTerminate(I)I
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1400(I)I

    goto :goto_ee

    .line 546
    :cond_e1
    const-string v1, "sec.app.policy.UPDATE.AFPC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 547
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->updatePolicyScpm()V
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1500(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 549
    :cond_ee
    :goto_ee
    return-void
.end method
