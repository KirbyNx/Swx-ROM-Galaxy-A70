.class Lcom/android/server/accessibility/SamsungMagnifierWindow$6;
.super Landroid/content/BroadcastReceiver;
.source "SamsungMagnifierWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungMagnifierWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;

    .line 1594
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$6;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1597
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1598
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_ba

    .line 1599
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$6;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$200(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1600
    .local v1, "newConfig":Landroid/content/res/Configuration;
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mConfigurationChangedReceiver - offsetX : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$6;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
    invoke-static {v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1100(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v5

    iget v5, v5, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " / offsetY : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$6;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    .line 1601
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
    invoke-static {v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1100(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v5

    iget v5, v5, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1600
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$6;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
    invoke-static {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1100(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v3

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetX:F

    # setter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_X:F
    invoke-static {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1502(F)F

    .line 1603
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$6;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
    invoke-static {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1100(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v3

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetY:F

    # setter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_Y:F
    invoke-static {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1602(F)F

    .line 1604
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$6;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->configChanged(Z)V
    invoke-static {v3, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$800(Lcom/android/server/accessibility/SamsungMagnifierWindow;Z)V

    .line 1605
    iget v2, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 1606
    .local v2, "newDisplayType":I
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDisplayType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$6;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayType:I
    invoke-static {v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2700(Lcom/android/server/accessibility/SamsungMagnifierWindow;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " newDisplayType :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$6;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayType:I
    invoke-static {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2700(Lcom/android/server/accessibility/SamsungMagnifierWindow;)I

    move-result v3

    if-eq v3, v2, :cond_b8

    .line 1608
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$6;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->hideMagnifier()V
    invoke-static {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$700(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V

    .line 1609
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$6;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    const/4 v4, 0x1

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->configChanged(Z)V
    invoke-static {v3, v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$800(Lcom/android/server/accessibility/SamsungMagnifierWindow;Z)V

    .line 1610
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$6;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # setter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayType:I
    invoke-static {v3, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2702(Lcom/android/server/accessibility/SamsungMagnifierWindow;I)I

    .line 1612
    .end local v1    # "newConfig":Landroid/content/res/Configuration;
    .end local v2    # "newDisplayType":I
    :cond_b8
    goto/16 :goto_146

    :cond_ba
    nop

    .line 1613
    const-string v1, "TextSelectionChanged_For_MagnifierWindow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_122

    .line 1614
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$6;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->isShowWindow()Z

    move-result v1

    if-eqz v1, :cond_146

    .line 1615
    const-string/jumbo v1, "offset_x"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_text_cursor_X:I
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2802(I)I

    .line 1616
    const-string/jumbo v1, "offset_y"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_text_cursor_Y:I
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2902(I)I

    .line 1617
    const-string v1, "editBox_right"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_editBox_right:I
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1202(I)I

    .line 1618
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$6;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3000(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v1

    if-eqz v1, :cond_fc

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$6;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3000(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getSIPisShown()Z

    move-result v1

    if-nez v1, :cond_104

    :cond_fc
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mInputDeviceSource:I
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3100()I

    move-result v1

    and-int/lit16 v1, v1, 0x101

    if-eqz v1, :cond_146

    .line 1619
    :cond_104
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$6;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_text_cursor_X:I
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2800()I

    move-result v3

    int-to-float v3, v3

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_text_cursor_Y:I
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2900()I

    move-result v4

    int-to-float v4, v4

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->setFollowingMagnifierWindow(FF)V
    invoke-static {v1, v3, v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3200(Lcom/android/server/accessibility/SamsungMagnifierWindow;FF)V

    .line 1620
    # setter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_text_cursor_X:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2802(I)I

    .line 1621
    # setter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_text_cursor_Y:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2902(I)I

    .line 1622
    # setter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsNeedToConfigWindow:Z
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3302(Z)Z

    .line 1623
    const/16 v1, -0x102

    # &= operator for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mInputDeviceSource:I
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3172(I)I

    goto :goto_146

    .line 1626
    :cond_122
    nop

    .line 1627
    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_146

    .line 1628
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$6;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->isShowWindow()Z

    move-result v1

    if-eqz v1, :cond_146

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentFollowingStatus:Z
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2200()Z

    move-result v1

    if-eqz v1, :cond_146

    .line 1629
    const-string v1, "AxT9IME.isVisibleWindow"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1630
    .local v1, "isShowingInputMethod":Z
    if-nez v1, :cond_146

    .line 1631
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$6;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->setCurrentFollowingStatus(Z)V
    invoke-static {v3, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3400(Lcom/android/server/accessibility/SamsungMagnifierWindow;Z)V

    .line 1635
    .end local v1    # "isShowingInputMethod":Z
    :cond_146
    :goto_146
    return-void
.end method
