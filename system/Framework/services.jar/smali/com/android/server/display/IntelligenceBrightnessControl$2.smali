.class Lcom/android/server/display/IntelligenceBrightnessControl$2;
.super Landroid/content/BroadcastReceiver;
.source "IntelligenceBrightnessControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/IntelligenceBrightnessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IntelligenceBrightnessControl;


# direct methods
.method constructor <init>(Lcom/android/server/display/IntelligenceBrightnessControl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/IntelligenceBrightnessControl;

    .line 810
    iput-object p1, p0, Lcom/android/server/display/IntelligenceBrightnessControl$2;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 813
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 814
    const-string/jumbo v0, "showing"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 818
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl$2;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # setter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIsIBCScenario:Z
    invoke-static {v0, v1}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1902(Lcom/android/server/display/IntelligenceBrightnessControl;Z)Z

    goto :goto_39

    .line 820
    :cond_1c
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl$2;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mHandler:Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;
    invoke-static {v0}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1500(Lcom/android/server/display/IntelligenceBrightnessControl;)Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->removeMessages(I)V

    .line 821
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl$2;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mHandler:Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;
    invoke-static {v0}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1500(Lcom/android/server/display/IntelligenceBrightnessControl;)Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl$2;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mHandler:Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;
    invoke-static {v2}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1500(Lcom/android/server/display/IntelligenceBrightnessControl;)Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 828
    :cond_39
    :goto_39
    return-void
.end method
