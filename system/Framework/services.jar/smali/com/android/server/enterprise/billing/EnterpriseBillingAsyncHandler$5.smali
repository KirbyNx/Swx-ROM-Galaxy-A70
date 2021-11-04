.class Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$5;
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

    .line 211
    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$5;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramIntent"    # Landroid/content/Intent;

    .line 218
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$5;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)Landroid/os/Handler;

    move-result-object v0

    const-string v1, "EnterpriseBillingAsyncHandler"

    if-eqz v0, :cond_26

    .line 219
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$5;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 221
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$5;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 222
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_2c

    .line 223
    :cond_26
    const-string/jumbo v0, "mHandler is null"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_2c
    return-void
.end method
