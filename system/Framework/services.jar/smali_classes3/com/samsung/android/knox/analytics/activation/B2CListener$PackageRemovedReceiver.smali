.class public Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "B2CListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/activation/B2CListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageRemovedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/activation/B2CListener;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/knox/analytics/activation/B2CListener;

    .line 71
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 74
    # getter for: Lcom/samsung/android/knox/analytics/activation/B2CListener;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageRemovedReceiver: onReceive() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 76
    invoke-static {p1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getB2CFeaturePackageList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 77
    .local v0, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_5f

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 79
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    # getter for: Lcom/samsung/android/knox/analytics/activation/B2CListener;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;
    invoke-static {v2}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->access$100(Lcom/samsung/android/knox/analytics/activation/B2CListener;)Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkB2C(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 80
    # getter for: Lcom/samsung/android/knox/analytics/activation/B2CListener;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "B2C application removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_5f
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    # invokes: Lcom/samsung/android/knox/analytics/activation/B2CListener;->checkRemovedReceiver()V
    invoke-static {v2}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->access$500(Lcom/samsung/android/knox/analytics/activation/B2CListener;)V

    .line 84
    .end local v0    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_64
    return-void
.end method
