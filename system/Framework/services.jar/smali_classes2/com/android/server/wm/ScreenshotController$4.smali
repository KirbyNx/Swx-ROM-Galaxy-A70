.class Lcom/android/server/wm/ScreenshotController$4;
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

    .line 682
    iput-object p1, p0, Lcom/android/server/wm/ScreenshotController$4;->this$0:Lcom/android/server/wm/ScreenshotController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 684
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.android.capture.QuickPanelCapture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Receive "

    const-string v3, "WindowManager"

    if-eqz v1, :cond_2e

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v4, p0, Lcom/android/server/wm/ScreenshotController$4;->this$0:Lcom/android/server/wm/ScreenshotController;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    # invokes: Lcom/android/server/wm/ScreenshotController;->sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V
    invoke-static/range {v4 .. v9}, Lcom/android/server/wm/ScreenshotController;->access$700(Lcom/android/server/wm/ScreenshotController;IIIILandroid/os/Bundle;)V

    goto/16 :goto_af

    .line 692
    :cond_2e
    const-string v1, "com.samsung.android.capture.DesktopCapture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 693
    const-string/jumbo v1, "type"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 694
    .local v1, "type":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const-string v2, "Fullscreen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 696
    iget-object v3, p0, Lcom/android/server/wm/ScreenshotController$4;->this$0:Lcom/android/server/wm/ScreenshotController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x0

    # invokes: Lcom/android/server/wm/ScreenshotController;->sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V
    invoke-static/range {v3 .. v8}, Lcom/android/server/wm/ScreenshotController;->access$700(Lcom/android/server/wm/ScreenshotController;IIIILandroid/os/Bundle;)V

    goto :goto_ae

    .line 701
    :cond_6a
    const-string v2, "Region"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 702
    iget-object v3, p0, Lcom/android/server/wm/ScreenshotController$4;->this$0:Lcom/android/server/wm/ScreenshotController;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x0

    # invokes: Lcom/android/server/wm/ScreenshotController;->sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V
    invoke-static/range {v3 .. v8}, Lcom/android/server/wm/ScreenshotController;->access$700(Lcom/android/server/wm/ScreenshotController;IIIILandroid/os/Bundle;)V

    goto :goto_ae

    .line 708
    .end local v1    # "type":Ljava/lang/String;
    :cond_7d
    const-string v1, "com.samsung.android.capture.BixbyCapture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 709
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 710
    .local v1, "bundle":Landroid/os/Bundle;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", bundle="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v4, p0, Lcom/android/server/wm/ScreenshotController$4;->this$0:Lcom/android/server/wm/ScreenshotController;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x5

    move-object v9, v1

    # invokes: Lcom/android/server/wm/ScreenshotController;->sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V
    invoke-static/range {v4 .. v9}, Lcom/android/server/wm/ScreenshotController;->access$700(Lcom/android/server/wm/ScreenshotController;IIIILandroid/os/Bundle;)V

    goto :goto_af

    .line 708
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_ae
    :goto_ae
    nop

    .line 717
    :goto_af
    return-void
.end method
