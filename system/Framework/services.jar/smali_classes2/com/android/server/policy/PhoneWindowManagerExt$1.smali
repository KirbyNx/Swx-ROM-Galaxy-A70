.class Lcom/android/server/policy/PhoneWindowManagerExt$1;
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

    .line 344
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$1;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 346
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 348
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$1;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleted:Z

    .line 350
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SPEN:Z

    if-eqz v1, :cond_39

    .line 352
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$1;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->getPenState()I

    move-result v1

    .line 353
    .local v1, "penState":I
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$1;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I
    invoke-static {v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$000(Lcom/android/server/policy/PhoneWindowManagerExt;)I

    move-result v3

    if-eq v1, v3, :cond_39

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$1;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I
    invoke-static {v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$100(Lcom/android/server/policy/PhoneWindowManagerExt;)I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_39

    .line 354
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$1;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-wide/16 v4, 0x0

    if-ne v1, v2, :cond_35

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :goto_36
    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->notifyPenSwitchChanged(JZ)V

    .line 358
    .end local v1    # "penState":I
    :cond_39
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$1;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$200(Lcom/android/server/policy/PhoneWindowManagerExt;)Lcom/android/server/policy/OneHandOpPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/policy/OneHandOpPolicyManager;->systemBooted()V

    .line 362
    :cond_42
    return-void
.end method
