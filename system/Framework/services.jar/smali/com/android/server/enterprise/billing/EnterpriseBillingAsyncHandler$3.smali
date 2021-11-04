.class Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$3;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseBillingAsyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    .line 182
    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$3;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$EnterpriseBillingAsyncHandler$3(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "packageModificationReceiver - onreceive - start - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseBillingAsyncHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$3;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mEbpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->access$000(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->onPackageModified(Landroid/content/Intent;)V

    .line 191
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 187
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/billing/-$$Lambda$EnterpriseBillingAsyncHandler$3$HPYvWxtLmRgxSPP0KXa4HTEWkC0;

    invoke-direct {v1, p0, p2}, Lcom/android/server/enterprise/billing/-$$Lambda$EnterpriseBillingAsyncHandler$3$HPYvWxtLmRgxSPP0KXa4HTEWkC0;-><init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$3;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 191
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 192
    return-void
.end method
