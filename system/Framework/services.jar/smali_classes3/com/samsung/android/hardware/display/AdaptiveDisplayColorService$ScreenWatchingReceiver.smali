.class final Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 2

    .line 394
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
    .param p2, "x1"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;

    .line 394
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 397
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "keyguard"

    if-eqz v1, :cond_45

    .line 400
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$200(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "mDNIe"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hardware/display/SemMdnieManager;

    # setter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;
    invoke-static {v1, v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$102(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/hardware/display/SemMdnieManager;)Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 401
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$200(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "DisplaySolution"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    # setter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;
    invoke-static {v1, v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$302(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 402
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 403
    .local v1, "keyGuardManager":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_44

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 404
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # setter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isLockScreenOn:Z
    invoke-static {v3, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$402(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Z)Z

    .line 405
    :cond_44
    return-void

    .line 407
    .end local v1    # "keyGuardManager":Landroid/app/KeyguardManager;
    :cond_45
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 408
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 409
    .restart local v1    # "keyGuardManager":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_60

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 410
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # setter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isLockScreenOn:Z
    invoke-static {v3, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$402(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Z)Z

    .line 411
    :cond_60
    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->receive_screen_on_intent()V
    invoke-static {v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$500(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    .line 412
    return-void

    .line 414
    .end local v1    # "keyGuardManager":Landroid/app/KeyguardManager;
    :cond_66
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 415
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->receive_screen_off_intent()V
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$600(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    .line 416
    return-void

    .line 418
    :cond_74
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 419
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    const/4 v2, 0x0

    # setter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isLockScreenOn:Z
    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$402(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Z)Z

    .line 420
    return-void

    .line 422
    :cond_83
    return-void
.end method
