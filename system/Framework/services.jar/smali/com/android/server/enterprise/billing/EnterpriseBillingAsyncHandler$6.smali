.class Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$6;
.super Landroid/telephony/PhoneStateListener;
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

    .line 227
    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$6;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 229
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 230
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$6;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 232
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$6;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 233
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$6;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 234
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_2b

    .line 235
    :cond_23
    const-string v0, "EnterpriseBillingAsyncHandler"

    const-string/jumbo v1, "mHandler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_2b
    :goto_2b
    return-void
.end method
