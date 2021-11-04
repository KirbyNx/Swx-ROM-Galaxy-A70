.class Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener$2;
.super Landroid/content/BroadcastReceiver;
.source "SemInDisplaySensorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->registerWirelessPowerBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;

    .line 611
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener$2;->this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 614
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x138c

    const/16 v3, 0x8

    const-string v4, "FingerprintService"

    const/4 v5, 0x0

    if-eqz v1, :cond_7c

    .line 616
    const-class v1, Landroid/os/BatteryManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManagerInternal;

    .line 618
    .local v1, "batMgrInternal":Landroid/os/BatteryManagerInternal;
    :try_start_1b
    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4e

    .line 619
    const-string v5, "WIRELESS CHARGING"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v5, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener$2;->this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mIsWirelessPowerChargingRunning:Z
    invoke-static {v5, v6}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->access$902(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;Z)Z

    .line 622
    iget-object v5, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener$2;->this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;

    # invokes: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->notifyWirelessPowerStatus(Z)V
    invoke-static {v5, v6}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->access$1000(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;Z)V

    .line 623
    iget-object v5, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener$2;->this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mIsWirelessPowerChargingRunning:Z
    invoke-static {v5}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->access$900(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 624
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getInjector()Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v5

    instance-of v5, v5, Lcom/android/server/biometrics/EnrollClient;

    if-eqz v5, :cond_60

    .line 625
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getInjector()Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    move-result-object v5

    invoke-virtual {v5, v3, v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->handleError(II)V

    goto :goto_60

    .line 630
    :cond_4e
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener$2;->this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;

    # setter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mIsWirelessPowerChargingRunning:Z
    invoke-static {v2, v5}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->access$902(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;Z)Z

    .line 631
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener$2;->this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mIsWirelessPowerSharingRunning:Z
    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->access$1100(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 632
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener$2;->this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;

    # invokes: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->notifyWirelessPowerStatus(Z)V
    invoke-static {v2, v5}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->access$1000(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;Z)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_60} :catch_61

    .line 637
    :cond_60
    :goto_60
    goto :goto_cf

    .line 635
    :catch_61
    move-exception v2

    .line 636
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf

    .line 638
    .end local v1    # "batMgrInternal":Landroid/os/BatteryManagerInternal;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7c
    const-string v1, "com.samsung.android.sm.ACTION_WIRELESS_POWER_SHARING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 639
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener$2;->this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;

    .line 640
    const-string v6, "enable"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 639
    # setter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mIsWirelessPowerSharingRunning:Z
    invoke-static {v1, v5}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->access$1102(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;Z)Z

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive: com.samsung.android.sm.ACTION_WIRELESS_POWER_SHARING, "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener$2;->this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;

    .line 643
    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mIsWirelessPowerSharingRunning:Z
    invoke-static {v5}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->access$1100(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;)Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 642
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener$2;->this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mIsWirelessPowerSharingRunning:Z
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->access$1100(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;)Z

    move-result v4

    # invokes: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->notifyWirelessPowerStatus(Z)V
    invoke-static {v1, v4}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->access$1000(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;Z)V

    .line 646
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener$2;->this$0:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->mIsWirelessPowerSharingRunning:Z
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->access$1100(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;)Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 647
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getInjector()Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    instance-of v1, v1, Lcom/android/server/biometrics/EnrollClient;

    if-eqz v1, :cond_d0

    .line 648
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getInjector()Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->handleError(II)V

    goto :goto_d0

    .line 638
    :cond_cf
    :goto_cf
    nop

    .line 653
    :cond_d0
    :goto_d0
    return-void
.end method
