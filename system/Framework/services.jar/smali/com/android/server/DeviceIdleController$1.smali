.class Lcom/android/server/DeviceIdleController$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    .line 584
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 586
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5bb23923

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_2f

    const v2, -0x45e5283a

    if-eq v1, v2, :cond_25

    const v2, 0x1f50b9c2

    if-eq v1, v2, :cond_1b

    :cond_1a
    goto :goto_39

    :cond_1b
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v3

    goto :goto_3a

    :cond_25
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v4

    goto :goto_3a

    :cond_2f
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v5

    goto :goto_3a

    :goto_39
    const/4 v0, -0x1

    :goto_3a
    if-eqz v0, :cond_81

    if-eq v0, v5, :cond_5c

    if-eq v0, v3, :cond_41

    goto :goto_87

    .line 598
    :cond_41
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_87

    .line 599
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 601
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_87

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "ssp":Ljava/lang/String;
    if-eqz v1, :cond_87

    .line 602
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1, v2}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    goto :goto_87

    .line 591
    .end local v0    # "data":Landroid/net/Uri;
    .end local v2    # "ssp":Ljava/lang/String;
    :cond_5c
    const-string/jumbo v0, "present"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 592
    .local v0, "present":Z
    const-string/jumbo v1, "plugged"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6e

    move v1, v5

    goto :goto_6f

    :cond_6e
    move v1, v4

    .line 593
    .local v1, "plugged":Z
    :goto_6f
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v2

    .line 594
    :try_start_72
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    if-eqz v0, :cond_79

    if-eqz v1, :cond_79

    move v4, v5

    :cond_79
    invoke-virtual {v3, v4}, Lcom/android/server/DeviceIdleController;->updateChargingLocked(Z)V

    .line 595
    monitor-exit v2

    .line 596
    .end local v0    # "present":Z
    .end local v1    # "plugged":Z
    goto :goto_87

    .line 595
    .restart local v0    # "present":Z
    .restart local v1    # "plugged":Z
    :catchall_7e
    move-exception v3

    monitor-exit v2
    :try_end_80
    .catchall {:try_start_72 .. :try_end_80} :catchall_7e

    throw v3

    .line 588
    .end local v0    # "present":Z
    .end local v1    # "plugged":Z
    :cond_81
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p2}, Lcom/android/server/DeviceIdleController;->updateConnectivityState(Landroid/content/Intent;)V

    .line 589
    nop

    .line 607
    :cond_87
    :goto_87
    return-void
.end method
