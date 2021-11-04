.class Lcom/android/server/input/InputManagerService$40;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;

    .line 5941
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$40;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$InputManagerService$40()V
    .registers 2

    .line 5975
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$40;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->updateThreeFingerTapBehavior()V

    .line 5976
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$40;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->updateFourFingerTapBehavior()V

    .line 5979
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$40;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->updateFlowPointerSettings()V

    .line 5980
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$40;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->updateFlowPointerDirectionSettings()V

    .line 5981
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$40;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->updateSetPenModeOnDex()V

    .line 5983
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 5944
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5946
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 5947
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$40;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$5000(Lcom/android/server/input/InputManagerService;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 5948
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$40;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$100(Lcom/android/server/input/InputManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 5949
    .local v1, "newLocale":Ljava/util/Locale;
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$40;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mCurLocale:Ljava/util/Locale;
    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$5100(Lcom/android/server/input/InputManagerService;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5950
    .local v2, "curLocaleString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5951
    .local v3, "newLocaleString":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    goto :goto_4e

    .line 5956
    :cond_39
    iget-object v4, p0, Lcom/android/server/input/InputManagerService$40;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mCurrentMissingKeyboardLayoutDevice:Landroid/view/InputDevice;
    invoke-static {v4}, Lcom/android/server/input/InputManagerService;->access$5200(Lcom/android/server/input/InputManagerService;)Landroid/view/InputDevice;

    move-result-object v4

    .line 5957
    .local v4, "tempMissingKeyboardLayoutDevice":Landroid/view/InputDevice;
    iget-object v5, p0, Lcom/android/server/input/InputManagerService$40;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->hideMissingKeyboardLayoutNotification()V
    invoke-static {v5}, Lcom/android/server/input/InputManagerService;->access$5300(Lcom/android/server/input/InputManagerService;)V

    .line 5958
    iget-object v5, p0, Lcom/android/server/input/InputManagerService$40;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V
    invoke-static {v5, v4}, Lcom/android/server/input/InputManagerService;->access$5400(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;)V

    .line 5959
    iget-object v5, p0, Lcom/android/server/input/InputManagerService$40;->this$0:Lcom/android/server/input/InputManagerService;

    # setter for: Lcom/android/server/input/InputManagerService;->mCurLocale:Ljava/util/Locale;
    invoke-static {v5, v1}, Lcom/android/server/input/InputManagerService;->access$5102(Lcom/android/server/input/InputManagerService;Ljava/util/Locale;)Ljava/util/Locale;

    .line 5964
    .end local v1    # "newLocale":Ljava/util/Locale;
    .end local v2    # "curLocaleString":Ljava/lang/String;
    .end local v3    # "newLocaleString":Ljava/lang/String;
    .end local v4    # "tempMissingKeyboardLayoutDevice":Landroid/view/InputDevice;
    :goto_4e
    goto :goto_80

    .line 5967
    :cond_4f
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 5969
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$40;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$000(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputKeyCounter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/input/InputKeyCounter;->surveyEnabled()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 5970
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$40;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$000(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputKeyCounter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$40;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$100(Lcom/android/server/input/InputManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputKeyCounter;->kickOldies(Landroid/content/Context;)V

    .line 5973
    :cond_72
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$40;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$4200(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$InputManagerHandler;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/-$$Lambda$InputManagerService$40$fV7G11JR2kDFbC4kjLqkUZzmq-s;

    invoke-direct {v2, p0}, Lcom/android/server/input/-$$Lambda$InputManagerService$40$fV7G11JR2kDFbC4kjLqkUZzmq-s;-><init>(Lcom/android/server/input/InputManagerService$40;)V

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 5985
    :cond_80
    :goto_80
    return-void
.end method
