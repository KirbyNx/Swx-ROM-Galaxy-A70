.class final Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemMdnieManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/SemMdnieManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V
    .registers 2

    .line 311
    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/hardware/display/SemMdnieManagerService;
    .param p2, "x1"    # Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;

    .line 311
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 314
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_a5

    .line 317
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # getter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$200(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_mode_automatic_setting"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_21

    goto :goto_22

    :cond_21
    move v3, v2

    :goto_22
    # setter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z
    invoke-static {v1, v3}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$102(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z

    .line 318
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # getter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$200(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, -0x2

    const-string v5, "screen_mode_setting"

    invoke-static {v3, v5, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    # setter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I
    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$302(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)I

    .line 319
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # getter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z
    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$100(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 320
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    const/4 v2, 0x4

    # setter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I
    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$302(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)I

    .line 322
    :cond_47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT_ON - mScreenMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # getter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I
    invoke-static {v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$300(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mAutoModeEnabled - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # getter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z
    invoke-static {v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$100(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemMdnieManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # getter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z
    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$400(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result v1

    if-nez v1, :cond_81

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # getter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z
    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$500(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 324
    :cond_81
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # getter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I
    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$300(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result v2

    # invokes: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->checkScreenMode(I)Z
    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$600(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 325
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # getter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$700(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 326
    :try_start_94
    const-string v2, "/sys/class/mdnie/mdnie/mode"

    iget-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # getter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I
    invoke-static {v3}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$300(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result v3

    # invokes: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z
    invoke-static {v2, v3}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$800(Ljava/lang/String;I)Z

    .line 327
    monitor-exit v1

    goto :goto_a4

    :catchall_a1
    move-exception v2

    monitor-exit v1
    :try_end_a3
    .catchall {:try_start_94 .. :try_end_a3} :catchall_a1

    throw v2

    .line 330
    :cond_a4
    :goto_a4
    return-void

    .line 332
    :cond_a5
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 333
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # setter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z
    invoke-static {v1, v3}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$902(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z

    .line 334
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # getter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z
    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$900(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result v2

    # setter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z
    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$1002(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z

    .line 335
    return-void

    .line 337
    :cond_bc
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 338
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # setter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z
    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$902(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z

    .line 339
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    # getter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z
    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$900(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result v2

    # setter for: Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z
    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->access$1002(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z

    .line 340
    return-void

    .line 342
    :cond_d3
    return-void
.end method
