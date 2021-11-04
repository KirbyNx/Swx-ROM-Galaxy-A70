.class Lcom/android/server/ipm/PkgPredictorService$7;
.super Landroid/content/BroadcastReceiver;
.source "PkgPredictorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/PkgPredictorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/PkgPredictorService;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/PkgPredictorService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/PkgPredictorService;

    .line 400
    iput-object p1, p0, Lcom/android/server/ipm/PkgPredictorService$7;->this$0:Lcom/android/server/ipm/PkgPredictorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 403
    const-string/jumbo v0, "switch"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "napSwitch":Ljava/lang/String;
    const-string v1, "enable"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "napEnable":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "PkgPredictorService"

    const-string/jumbo v5, "off"

    const-string/jumbo v6, "on"

    if-eqz v0, :cond_41

    .line 407
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " nap switch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 409
    # setter for: Lcom/android/server/ipm/PkgPredictorService;->NAP_SWITCH:Z
    invoke-static {v3}, Lcom/android/server/ipm/PkgPredictorService;->access$1302(Z)Z

    goto :goto_73

    .line 410
    :cond_37
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 411
    # setter for: Lcom/android/server/ipm/PkgPredictorService;->NAP_SWITCH:Z
    invoke-static {v2}, Lcom/android/server/ipm/PkgPredictorService;->access$1302(Z)Z

    goto :goto_73

    .line 413
    :cond_41
    if-eqz v1, :cond_73

    .line 414
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " nap enable "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v7, "persist.sys.nap_onoff"

    if-eqz v4, :cond_67

    .line 416
    # setter for: Lcom/android/server/ipm/PkgPredictorService;->NAP_ENABLE:Z
    invoke-static {v3}, Lcom/android/server/ipm/PkgPredictorService;->access$1402(Z)Z

    .line 417
    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_73

    .line 418
    :cond_67
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 419
    # setter for: Lcom/android/server/ipm/PkgPredictorService;->NAP_ENABLE:Z
    invoke-static {v2}, Lcom/android/server/ipm/PkgPredictorService;->access$1402(Z)Z

    .line 420
    invoke-static {v7, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_73
    :goto_73
    return-void
.end method
