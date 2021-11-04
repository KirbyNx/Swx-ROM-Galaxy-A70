.class Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WirelessChargerConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

    .line 39
    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;->this$0:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 42
    # getter for: Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", misc_event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "misc_event"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", msg state: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;->this$0:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

    # getter for: Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I
    invoke-static {v4}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->access$200(Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x400

    and-int/2addr v0, v1

    const/4 v4, 0x1

    if-ne v0, v1, :cond_6a

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;->this$0:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

    # getter for: Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I
    invoke-static {v0}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->access$200(Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;)I

    move-result v0

    if-ne v0, v4, :cond_6a

    .line 45
    # getter for: Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "read bit set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;->this$0:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

    const/4 v1, 0x2

    # setter for: Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I
    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->access$202(Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;I)I

    goto :goto_80

    .line 48
    :cond_6a
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_80

    .line 50
    # getter for: Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "read bit clear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;->this$0:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

    # setter for: Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I
    invoke-static {v0, v4}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->access$202(Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;I)I

    .line 54
    :cond_80
    :goto_80
    return-void
.end method
