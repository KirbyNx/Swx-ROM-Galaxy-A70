.class Lcom/android/server/policy/PhoneWindowManagerExt$3;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 3074
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 3076
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3077
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    if-nez v1, :cond_1c

    .line 3078
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 3079
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 3080
    :cond_1c
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_QUINTUPLE_TAP_POWER_LAUNCH_ONE_TOUCH_REPORT:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_41

    .line 3081
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintupleTapLaunchIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$5200(Lcom/android/server/policy/PhoneWindowManagerExt;)Landroid/content/Intent;

    move-result-object v4

    # invokes: Lcom/android/server/policy/PhoneWindowManagerExt;->isActivitiesAvailable(Landroid/content/Intent;)Z
    invoke-static {v1, v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$5300(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Intent;)Z

    move-result v4

    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAvailableOneTouchReport:Z
    invoke-static {v1, v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$5102(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 3082
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAvailableOneTouchReport:Z
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$5100(Lcom/android/server/policy/PhoneWindowManagerExt;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 3083
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/16 v4, 0x67

    iput v4, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    goto :goto_41

    .line 3085
    :cond_3d
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iput v3, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    .line 3090
    :cond_41
    :goto_41
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3091
    .local v1, "goodLockRoutinePlusIntent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.samsung.android.app.routineplus"

    const-string v6, "com.samsung.android.app.routineplus.main.RoutinePlusActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3094
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    iget-boolean v4, v4, Lcom/android/server/policy/KeyCustomizeManager;->mIsAvailableRoutinePlus:Z

    .line 3096
    .local v4, "isAvailablePrevious":Z
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 3097
    # invokes: Lcom/android/server/policy/PhoneWindowManagerExt;->isActivitiesAvailable(Landroid/content/Intent;)Z
    invoke-static {v5, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$5300(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Intent;)Z

    move-result v5

    .line 3099
    .local v5, "isAvailableNow":Z
    if-eq v5, v4, :cond_90

    .line 3100
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    iput-boolean v5, v6, Lcom/android/server/policy/KeyCustomizeManager;->mIsAvailableRoutinePlus:Z

    .line 3101
    if-nez v5, :cond_90

    .line 3102
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removed goodLock Routine plus app. available pre="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " now="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PhoneWindowManagerExt"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3104
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/16 v7, 0x384

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v3, v8, v8}, Lcom/android/server/policy/PhoneWindowManagerExt;->clearKeyCustomizeEvent(IIZZ)V

    .line 3110
    .end local v1    # "goodLockRoutinePlusIntent":Landroid/content/Intent;
    .end local v4    # "isAvailablePrevious":Z
    .end local v5    # "isAvailableNow":Z
    :cond_90
    nop

    .line 3111
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 3112
    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 3114
    .local v1, "replacing":Z
    if-nez v1, :cond_ae

    .line 3115
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizePolicy:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/policy/KeyCustomizeManager;->removeHotKey(Ljava/lang/String;)V

    .line 3119
    .end local v1    # "replacing":Z
    :cond_ae
    return-void
.end method
