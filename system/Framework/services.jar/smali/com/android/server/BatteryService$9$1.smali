.class Lcom/android/server/BatteryService$9$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$9;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$9;

.field final synthetic val$fastWirelessAutoModeEnable:Z


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$9;Z)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/BatteryService$9;

    .line 831
    iput-object p1, p0, Lcom/android/server/BatteryService$9$1;->this$1:Lcom/android/server/BatteryService$9;

    iput-boolean p2, p0, Lcom/android/server/BatteryService$9$1;->val$fastWirelessAutoModeEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 834
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fastWirelessAutoModeEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BatteryService$9$1;->val$fastWirelessAutoModeEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v0, p0, Lcom/android/server/BatteryService$9$1;->this$1:Lcom/android/server/BatteryService$9;

    iget-object v0, v0, Lcom/android/server/BatteryService$9;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v1, p0, Lcom/android/server/BatteryService$9$1;->val$fastWirelessAutoModeEnable:Z

    xor-int/lit8 v1, v1, 0x1

    # invokes: Lcom/android/server/BatteryService;->setWirelessFastCharging(Z)V
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$1900(Lcom/android/server/BatteryService;Z)V

    .line 836
    return-void
.end method
