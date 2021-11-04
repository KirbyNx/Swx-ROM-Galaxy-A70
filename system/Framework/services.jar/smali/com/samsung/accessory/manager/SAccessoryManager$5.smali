.class Lcom/samsung/accessory/manager/SAccessoryManager$5;
.super Landroid/content/BroadcastReceiver;
.source "SAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/SAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 467
    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$5;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 469
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 470
    const-string/jumbo v0, "misc_event"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 471
    .local v2, "extra":I
    const-string/jumbo v3, "sec_plug_type"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 472
    .local v3, "plug_type":I
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, 0x40

    and-int/2addr v4, v5

    const/4 v6, 0x1

    if-ne v4, v5, :cond_27

    move v4, v6

    goto :goto_28

    :cond_27
    move v4, v1

    .line 473
    .local v4, "det_level":Z
    :goto_28
    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$300()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", misc_event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", plug event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager$5;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # invokes: Lcom/samsung/accessory/manager/SAccessoryManager;->batteryChanged(I)V
    invoke-static {v5, v3}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$1300(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    .line 477
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_69

    .line 478
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$5;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # invokes: Lcom/samsung/accessory/manager/SAccessoryManager;->wirelessChargerConnected(I)V
    invoke-static {v0, v6}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$1400(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    goto :goto_79

    .line 479
    :cond_69
    if-nez v4, :cond_79

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$5;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->wirelesschargerState:Z
    invoke-static {v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$1500(Lcom/samsung/accessory/manager/SAccessoryManager;)Z

    move-result v0

    if-ne v0, v6, :cond_79

    .line 480
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$5;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    const/4 v1, 0x2

    # invokes: Lcom/samsung/accessory/manager/SAccessoryManager;->wirelessChargerConnected(I)V
    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$1400(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    .line 482
    .end local v2    # "extra":I
    .end local v3    # "plug_type":I
    .end local v4    # "det_level":Z
    :cond_79
    :goto_79
    return-void
.end method
