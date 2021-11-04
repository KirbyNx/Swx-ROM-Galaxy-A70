.class Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;
.super Ljava/lang/Object;
.source "BTConnectivity.java"

# interfaces
.implements Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/connectivity/BTConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/connectivity/BTConnectivity;


# direct methods
.method private constructor <init>(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;Lcom/samsung/accessory/manager/connectivity/BTConnectivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/accessory/manager/connectivity/BTConnectivity;
    .param p2, "x1"    # Lcom/samsung/accessory/manager/connectivity/BTConnectivity$1;

    .line 42
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;-><init>(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 44
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 46
    .local v0, "state":I
    const/16 v1, 0xa

    if-eq v0, v1, :cond_1a

    const/16 v1, 0xc

    if-eq v0, v1, :cond_11

    goto :goto_23

    .line 51
    :cond_11
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    iget-object v1, v1, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;->onStateChanged(I)V

    .line 52
    goto :goto_23

    .line 54
    :cond_1a
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    iget-object v1, v1, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;->onStateChanged(I)V

    .line 55
    nop

    .line 59
    :goto_23
    return-void
.end method
