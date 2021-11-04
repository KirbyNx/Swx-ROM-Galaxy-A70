.class public Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "B2CListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/activation/B2CListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActivationReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/activation/B2CListener;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/knox/analytics/activation/B2CListener;

    .line 47
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 50
    # getter for: Lcom/samsung/android/knox/analytics/activation/B2CListener;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivationReceiver: onReceive() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.analytics.intent.action.B2C_ACTIVATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 52
    const-string v0, "com.samsung.android.knox.analytics.intent.extra.B2C_PACKAGE_NAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "pkgName":Ljava/lang/String;
    const-string v1, "com.samsung.android.knox.analytics.intent.extra.B2C_FEATURE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "feature":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "com.samsung.android.knox.analytics.intent.extra.B2C_ACTIVATION_STATUS"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 55
    .local v2, "status":Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    # getter for: Lcom/samsung/android/knox/analytics/activation/B2CListener;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;
    invoke-static {v3}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->access$100(Lcom/samsung/android/knox/analytics/activation/B2CListener;)Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v0, v1, v4}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkB2C(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8d

    iget-object v3, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    # getter for: Lcom/samsung/android/knox/analytics/activation/B2CListener;->mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;
    invoke-static {v3}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->access$200(Lcom/samsung/android/knox/analytics/activation/B2CListener;)Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    move-result-object v3

    if-nez v3, :cond_8d

    .line 58
    iget-object v3, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    new-instance v4, Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    iget-object v5, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;-><init>(Lcom/samsung/android/knox/analytics/activation/B2CListener;)V

    # setter for: Lcom/samsung/android/knox/analytics/activation/B2CListener;->mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;
    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->access$202(Lcom/samsung/android/knox/analytics/activation/B2CListener;Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;)Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    .line 59
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    .local v3, "removedPkgFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v4, "package"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 63
    iget-object v4, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    # getter for: Lcom/samsung/android/knox/analytics/activation/B2CListener;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->access$400(Lcom/samsung/android/knox/analytics/activation/B2CListener;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    # getter for: Lcom/samsung/android/knox/analytics/activation/B2CListener;->mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;
    invoke-static {v5}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->access$200(Lcom/samsung/android/knox/analytics/activation/B2CListener;)Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    # getter for: Lcom/samsung/android/knox/analytics/activation/B2CListener;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->access$300(Lcom/samsung/android/knox/analytics/activation/B2CListener;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .end local v3    # "removedPkgFilter":Landroid/content/IntentFilter;
    goto :goto_99

    .line 64
    :cond_8d
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_99

    .line 65
    iget-object v3, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    # invokes: Lcom/samsung/android/knox/analytics/activation/B2CListener;->checkRemovedReceiver()V
    invoke-static {v3}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->access$500(Lcom/samsung/android/knox/analytics/activation/B2CListener;)V

    nop

    .line 68
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "feature":Ljava/lang/String;
    .end local v2    # "status":Ljava/lang/Boolean;
    :cond_99
    :goto_99
    return-void
.end method
