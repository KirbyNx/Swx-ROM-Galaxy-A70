.class Lcom/android/server/BatteryService$6$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$6;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$6;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/BatteryService$6;

    .line 725
    iput-object p1, p0, Lcom/android/server/BatteryService$6$1;->this$1:Lcom/android/server/BatteryService$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 728
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dex Start"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v0, p0, Lcom/android/server/BatteryService$6$1;->this$1:Lcom/android/server/BatteryService$6;

    iget-object v0, v0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    const/4 v1, 0x2

    # invokes: Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V
    invoke-static {v0, v1, v1}, Lcom/android/server/BatteryService;->access$1600(Lcom/android/server/BatteryService;II)V

    .line 731
    return-void
.end method
