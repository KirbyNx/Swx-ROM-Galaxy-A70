.class Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$7;
.super Ljava/lang/Object;
.source "PhoneRestrictionPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 2808
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$7;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 2810
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, "Trying to connect to EnterpriseSimPin Service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.enterprise.mdm.services.simpin"

    const-string v3, "com.sec.enterprise.mdm.services.simpin.EnterpriseSimPin"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2813
    .local v1, "compName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$7;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$900(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2815
    :try_start_19
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$7;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$300(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.enterprise.SimPinCode"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$7;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 2816
    # getter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinServiceConn:Landroid/content/ServiceConnection;
    invoke-static {v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$1200(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/content/ServiceConnection;

    move-result-object v4

    const/4 v5, 0x1

    .line 2815
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_34
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_34} :catch_35

    .line 2820
    goto :goto_3b

    .line 2818
    :catch_35
    move-exception v2

    .line 2819
    .local v2, "se":Ljava/lang/SecurityException;
    const-string v3, "Failed to bind Sim Pin Service"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    .end local v2    # "se":Ljava/lang/SecurityException;
    :goto_3b
    return-void
.end method
