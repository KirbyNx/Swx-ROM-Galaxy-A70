.class Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver;
.super Ljava/lang/Object;
.source "BluetoothRouteProvider.java"

# interfaces
.implements Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/BluetoothRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterStateChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/BluetoothRouteProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/media/BluetoothRouteProvider;)V
    .registers 2

    .line 460
    iput-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/media/BluetoothRouteProvider;
    .param p2, "x1"    # Lcom/android/server/media/BluetoothRouteProvider$1;

    .line 460
    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver;-><init>(Lcom/android/server/media/BluetoothRouteProvider;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 462
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 463
    .local v0, "state":I
    const/16 v1, 0xa

    if-eq v0, v1, :cond_29

    const/16 v1, 0xd

    if-ne v0, v1, :cond_10

    goto :goto_29

    .line 467
    :cond_10
    const/16 v1, 0xc

    if-ne v0, v1, :cond_35

    .line 468
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    # invokes: Lcom/android/server/media/BluetoothRouteProvider;->buildBluetoothRoutes()V
    invoke-static {v1}, Lcom/android/server/media/BluetoothRouteProvider;->access$900(Lcom/android/server/media/BluetoothRouteProvider;)V

    .line 469
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object v1, v1, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_35

    .line 470
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    # invokes: Lcom/android/server/media/BluetoothRouteProvider;->notifyBluetoothRoutesUpdated()V
    invoke-static {v1}, Lcom/android/server/media/BluetoothRouteProvider;->access$700(Lcom/android/server/media/BluetoothRouteProvider;)V

    goto :goto_35

    .line 465
    :cond_29
    :goto_29
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object v1, v1, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 466
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    # invokes: Lcom/android/server/media/BluetoothRouteProvider;->notifyBluetoothRoutesUpdated()V
    invoke-static {v1}, Lcom/android/server/media/BluetoothRouteProvider;->access$700(Lcom/android/server/media/BluetoothRouteProvider;)V

    .line 473
    :cond_35
    :goto_35
    return-void
.end method
