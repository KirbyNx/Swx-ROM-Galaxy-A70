.class Lcom/android/server/policy/PhoneWindowManagerExt$2;
.super Ljava/lang/Object;
.source "PhoneWindowManagerExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2481
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2484
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$5000(Lcom/android/server/policy/PhoneWindowManagerExt;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2485
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$5000(Lcom/android/server/policy/PhoneWindowManagerExt;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2487
    :cond_11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$2;->val$message:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$5002(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 2488
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$5000(Lcom/android/server/policy/PhoneWindowManagerExt;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 2489
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # getter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$5000(Lcom/android/server/policy/PhoneWindowManagerExt;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2490
    return-void
.end method
