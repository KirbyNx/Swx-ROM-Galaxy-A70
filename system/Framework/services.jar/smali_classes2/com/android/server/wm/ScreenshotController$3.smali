.class Lcom/android/server/wm/ScreenshotController$3;
.super Landroid/content/BroadcastReceiver;
.source "ScreenshotController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ScreenshotController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ScreenshotController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ScreenshotController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/ScreenshotController;

    .line 628
    iput-object p1, p0, Lcom/android/server/wm/ScreenshotController$3;->this$0:Lcom/android/server/wm/ScreenshotController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 630
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/ScreenshotController$3;->this$0:Lcom/android/server/wm/ScreenshotController;

    # getter for: Lcom/android/server/wm/ScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v1}, Lcom/android/server/wm/ScreenshotController;->access$600(Lcom/android/server/wm/ScreenshotController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v1

    .line 632
    .local v1, "isKeyguardLocked":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isKeyguardLocked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    if-eqz v1, :cond_31

    .line 634
    return-void

    .line 637
    :cond_31
    const-string v2, "com.samsung.android.motion.SWEEP_LEFT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    const-string v3, "com.samsung.android.motion.SWEEP_RIGHT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    goto :goto_56

    .line 664
    :cond_42
    const-string v2, "com.samsung.android.motion.SWEEP_FULL_SCREEN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 665
    iget-object v3, p0, Lcom/android/server/wm/ScreenshotController$3;->this$0:Lcom/android/server/wm/ScreenshotController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    # invokes: Lcom/android/server/wm/ScreenshotController;->sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V
    invoke-static/range {v3 .. v8}, Lcom/android/server/wm/ScreenshotController;->access$700(Lcom/android/server/wm/ScreenshotController;IIIILandroid/os/Bundle;)V

    goto :goto_8f

    .line 664
    :cond_55
    :goto_55
    goto :goto_8f

    .line 639
    :cond_56
    :goto_56
    const/4 v3, 0x0

    .line 645
    .local v3, "dexMode":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_5c

    .line 646
    const/4 v4, 0x2

    .local v4, "capturedDisplay":I
    goto :goto_7a

    .line 648
    .end local v4    # "capturedDisplay":I
    :cond_5c
    const-string v4, "PalmMotion"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 649
    .local v4, "display":Ljava/lang/String;
    const-string v5, "MAIN"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 650
    const/4 v5, 0x0

    move v4, v5

    .local v5, "capturedDisplay":I
    goto :goto_7a

    .line 651
    .end local v5    # "capturedDisplay":I
    :cond_6d
    const-string v5, "SUB"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 652
    const/4 v5, 0x4

    move v4, v5

    .restart local v5    # "capturedDisplay":I
    goto :goto_7a

    .line 654
    .end local v5    # "capturedDisplay":I
    :cond_78
    const/4 v5, 0x0

    move v4, v5

    .line 657
    .local v4, "capturedDisplay":I
    :goto_7a
    iget-object v6, p0, Lcom/android/server/wm/ScreenshotController$3;->this$0:Lcom/android/server/wm/ScreenshotController;

    const/4 v7, 0x1

    .line 659
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 660
    const/4 v2, 0x2

    move v8, v2

    goto :goto_88

    .line 661
    :cond_86
    const/4 v2, 0x3

    move v8, v2

    :goto_88
    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 657
    move v9, v4

    # invokes: Lcom/android/server/wm/ScreenshotController;->sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V
    invoke-static/range {v6 .. v11}, Lcom/android/server/wm/ScreenshotController;->access$700(Lcom/android/server/wm/ScreenshotController;IIIILandroid/os/Bundle;)V

    .end local v3    # "dexMode":I
    .end local v4    # "capturedDisplay":I
    goto :goto_55

    .line 671
    :goto_8f
    return-void
.end method
