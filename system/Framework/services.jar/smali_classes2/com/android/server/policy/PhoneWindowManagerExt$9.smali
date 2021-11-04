.class Lcom/android/server/policy/PhoneWindowManagerExt$9;
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

    .line 4556
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$9;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 4559
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4560
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 4561
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$9;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v1

    if-nez v1, :cond_27

    .line 4562
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$9;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mDefaultDisplayMultiTapHandlers:Landroid/util/SparseArray;

    const/4 v2, 0x3

    .line 4563
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/MultiTapKeyEventHandler;

    .line 4564
    .local v1, "handler":Lcom/android/server/policy/MultiTapKeyEventHandler;
    if-eqz v1, :cond_27

    .line 4565
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MultiTapKeyEventHandler;->setTripleTapEnabled(Z)V

    .line 4568
    .end local v1    # "handler":Lcom/android/server/policy/MultiTapKeyEventHandler;
    :cond_27
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$9;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$9;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mSetupWizardCompleteReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$6100(Lcom/android/server/policy/PhoneWindowManagerExt;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4570
    :cond_34
    return-void
.end method
