.class Lcom/android/server/vr/GearVrManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "GearVrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/GearVrManagerService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/GearVrManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/vr/GearVrManagerService;

    .line 627
    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 630
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 632
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->access$900(Lcom/android/server/vr/GearVrManagerService;)Lcom/android/server/vr/HmtManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/vr/HmtManager;->updateSupportDevicePolicy()V

    .line 633
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mDeviceController:Lcom/android/server/vr/DeviceController;
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->access$1100(Lcom/android/server/vr/GearVrManagerService;)Lcom/android/server/vr/DeviceController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;
    invoke-static {v2}, Lcom/android/server/vr/GearVrManagerService;->access$900(Lcom/android/server/vr/GearVrManagerService;)Lcom/android/server/vr/HmtManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/vr/HmtManager;->toDisplayPortWhitelistString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/vr/DeviceController;->setDisplayPortState(Ljava/lang/String;)V

    .line 634
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mDeviceController:Lcom/android/server/vr/DeviceController;
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->access$1100(Lcom/android/server/vr/GearVrManagerService;)Lcom/android/server/vr/DeviceController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;
    invoke-static {v2}, Lcom/android/server/vr/GearVrManagerService;->access$900(Lcom/android/server/vr/GearVrManagerService;)Lcom/android/server/vr/HmtManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/vr/HmtManager;->toPowerLimitingWhitelistString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/vr/DeviceController;->setUsbPowerState(Ljava/lang/String;)V

    .line 635
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->access$1200(Lcom/android/server/vr/GearVrManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 636
    :try_start_42
    const-string v2, "GearVrManagerService"

    const-string/jumbo v3, "update User Unlocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/vr/GearVrManagerService;->mUserUnlocked:Z
    invoke-static {v2, v3}, Lcom/android/server/vr/GearVrManagerService;->access$1702(Lcom/android/server/vr/GearVrManagerService;Z)Z

    .line 638
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->updateReadyLocked()V
    invoke-static {v2}, Lcom/android/server/vr/GearVrManagerService;->access$1800(Lcom/android/server/vr/GearVrManagerService;)V

    .line 639
    monitor-exit v1

    goto :goto_92

    :catchall_57
    move-exception v2

    monitor-exit v1
    :try_end_59
    .catchall {:try_start_42 .. :try_end_59} :catchall_57

    throw v2

    .line 640
    :cond_5a
    const-string/jumbo v1, "sec.app.policy.UPDATE.HmtThridPartyDevicePolicy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 641
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->access$900(Lcom/android/server/vr/GearVrManagerService;)Lcom/android/server/vr/HmtManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/vr/HmtManager;->updateSupportDevicePolicy()V

    .line 642
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mDeviceController:Lcom/android/server/vr/DeviceController;
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->access$1100(Lcom/android/server/vr/GearVrManagerService;)Lcom/android/server/vr/DeviceController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;
    invoke-static {v2}, Lcom/android/server/vr/GearVrManagerService;->access$900(Lcom/android/server/vr/GearVrManagerService;)Lcom/android/server/vr/HmtManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/vr/HmtManager;->toDisplayPortWhitelistString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/vr/DeviceController;->setDisplayPortState(Ljava/lang/String;)V

    .line 643
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mDeviceController:Lcom/android/server/vr/DeviceController;
    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->access$1100(Lcom/android/server/vr/GearVrManagerService;)Lcom/android/server/vr/DeviceController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;
    invoke-static {v2}, Lcom/android/server/vr/GearVrManagerService;->access$900(Lcom/android/server/vr/GearVrManagerService;)Lcom/android/server/vr/HmtManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/vr/HmtManager;->toPowerLimitingWhitelistString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/vr/DeviceController;->setUsbPowerState(Ljava/lang/String;)V

    .line 645
    :cond_92
    :goto_92
    return-void
.end method
