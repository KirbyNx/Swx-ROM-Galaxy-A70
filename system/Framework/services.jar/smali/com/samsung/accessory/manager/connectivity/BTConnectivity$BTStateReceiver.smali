.class Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BTConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/connectivity/BTConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BTStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/connectivity/BTConnectivity;


# direct methods
.method private constructor <init>(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;->this$0:Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;Lcom/samsung/accessory/manager/connectivity/BTConnectivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/accessory/manager/connectivity/BTConnectivity;
    .param p2, "x1"    # Lcom/samsung/accessory/manager/connectivity/BTConnectivity$1;

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;-><init>(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 37
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;->this$0:Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    # getter for: Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;
    invoke-static {v1}, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->access$000(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;)Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 39
    :cond_15
    return-void
.end method
