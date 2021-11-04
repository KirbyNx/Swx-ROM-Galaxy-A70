.class public final synthetic Lcom/android/server/enterprise/billing/-$$Lambda$EnterpriseBillingAsyncHandler$3$HPYvWxtLmRgxSPP0KXa4HTEWkC0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$3;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$3;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/billing/-$$Lambda$EnterpriseBillingAsyncHandler$3$HPYvWxtLmRgxSPP0KXa4HTEWkC0;->f$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$3;

    iput-object p2, p0, Lcom/android/server/enterprise/billing/-$$Lambda$EnterpriseBillingAsyncHandler$3$HPYvWxtLmRgxSPP0KXa4HTEWkC0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/billing/-$$Lambda$EnterpriseBillingAsyncHandler$3$HPYvWxtLmRgxSPP0KXa4HTEWkC0;->f$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$3;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/-$$Lambda$EnterpriseBillingAsyncHandler$3$HPYvWxtLmRgxSPP0KXa4HTEWkC0;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$3;->lambda$onReceive$0$EnterpriseBillingAsyncHandler$3(Landroid/content/Intent;)V

    return-void
.end method
