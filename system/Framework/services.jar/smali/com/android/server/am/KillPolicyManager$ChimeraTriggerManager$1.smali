.class Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager$1;
.super Landroid/content/BroadcastReceiver;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    .line 2126
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager$1;->this$0:Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChimeraTriggerManager::onReceive() - action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x33e5d967

    if-eq v2, v3, :cond_28

    :cond_27
    goto :goto_32

    :cond_28
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    goto :goto_33

    :goto_32
    const/4 v0, -0x1

    :goto_33
    if-eqz v0, :cond_37

    goto/16 :goto_cb

    .line 2132
    :cond_37
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager$1;->this$0:Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    .line 2133
    # getter for: Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->access$4100(Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2134
    .local v0, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    .line 2135
    .local v2, "deviceInDoze":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChimeraTriggerManager::onReceive() -  deviceInDoze: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", chimeraTriggerRequired: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager$1;->this$0:Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    .line 2137
    # getter for: Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mChimeraTriggerRequired:Z
    invoke-static {v4}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->access$4200(Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2135
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    if-eqz v2, :cond_cb

    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager$1;->this$0:Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    # getter for: Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mChimeraTriggerRequired:Z
    invoke-static {v3}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->access$4200(Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;)Z

    move-result v3

    if-eqz v3, :cond_cb

    .line 2140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager$1;->this$0:Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    # getter for: Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mLastTriggeredTime:J
    invoke-static {v5}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->access$4300(Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 2141
    .local v3, "elapsedTime":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ChimeraTriggerManager::onReceive() - need to trigger, elapsedTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    # getter for: Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->TRIGGER_MIN_INTERVAL:J
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->access$4400()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_a3

    .line 2145
    const-string v5, "ChimeraTriggerManager::onReceive() - Not enough time has passed since the previous trigger."

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cb

    .line 2148
    :cond_a3
    const-string v5, "ChimeraTriggerManager::onReceive() - PMM_CRITICAL_TRIGGER_ACTION has been fired."

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.samsung.PMM_CRITICAL_TRIGGER"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2151
    .local v1, "triggerIntent":Landroid/content/Intent;
    const-string v5, "android"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2152
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "com.samsung.android.permission.BROADCAST_PMM_CRITICAL_TRIGGER"

    invoke-virtual {p1, v1, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2155
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager$1;->this$0:Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    # setter for: Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mLastTriggeredTime:J
    invoke-static {v5, v6, v7}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->access$4302(Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;J)J

    .line 2156
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager$1;->this$0:Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    const/high16 v6, -0x40800000    # -1.0f

    # setter for: Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mLastPolicyScore:F
    invoke-static {v5, v6}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->access$4502(Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;F)F

    .line 2164
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    .end local v1    # "triggerIntent":Landroid/content/Intent;
    .end local v2    # "deviceInDoze":Z
    .end local v3    # "elapsedTime":J
    :cond_cb
    :goto_cb
    return-void
.end method
