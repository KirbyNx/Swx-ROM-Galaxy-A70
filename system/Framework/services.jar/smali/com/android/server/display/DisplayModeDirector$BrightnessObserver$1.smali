.class Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    .line 1675
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$1;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1678
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY_SUPPORT_SEAMLESS:Z

    if-eqz v0, :cond_36

    .line 1679
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1680
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$1;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    const-string/jumbo v1, "plugged"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    # setter for: Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mIsWirelessCharging:Z
    invoke-static {v0, v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$2202(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;Z)Z

    .line 1682
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$1;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    iget-object v0, v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$200(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1683
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$1;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    iget-object v0, v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    # getter for: Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$200(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->checkLfdOff()V

    .line 1686
    :cond_36
    return-void
.end method
