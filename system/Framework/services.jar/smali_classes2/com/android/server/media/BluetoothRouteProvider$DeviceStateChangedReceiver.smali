.class Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;
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
    name = "DeviceStateChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/BluetoothRouteProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/media/BluetoothRouteProvider;)V
    .registers 2

    .line 476
    iput-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/media/BluetoothRouteProvider;
    .param p2, "x1"    # Lcom/android/server/media/BluetoothRouteProvider$1;

    .line 476
    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;-><init>(Lcom/android/server/media/BluetoothRouteProvider;)V

    return-void
.end method

.method private handleConnectionStateChanged(ILandroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .registers 9
    .param p1, "profile"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 505
    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 506
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object v1, v1, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    .line 507
    .local v1, "btRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    const/4 v2, 0x2

    if-ne v0, v2, :cond_40

    .line 508
    if-nez v1, :cond_39

    .line 509
    iget-object v2, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    # invokes: Lcom/android/server/media/BluetoothRouteProvider;->createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    invoke-static {v2, p3}, Lcom/android/server/media/BluetoothRouteProvider;->access$500(Lcom/android/server/media/BluetoothRouteProvider;Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    move-result-object v1

    .line 510
    iget-object v2, v1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_6a

    .line 511
    iget-object v2, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object v2, v2, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object v2, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    # invokes: Lcom/android/server/media/BluetoothRouteProvider;->notifyBluetoothRoutesUpdated()V
    invoke-static {v2}, Lcom/android/server/media/BluetoothRouteProvider;->access$700(Lcom/android/server/media/BluetoothRouteProvider;)V

    goto :goto_6a

    .line 515
    :cond_39
    iget-object v2, v1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_6a

    .line 517
    :cond_40
    const/4 v2, 0x3

    if-eq v0, v2, :cond_45

    if-nez v0, :cond_6a

    .line 519
    :cond_45
    if-eqz v1, :cond_6a

    .line 520
    iget-object v2, v1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 521
    iget-object v2, v1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-nez v2, :cond_6a

    .line 522
    iget-object v2, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object v3, v2, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    # invokes: Lcom/android/server/media/BluetoothRouteProvider;->removeActiveRoute(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V
    invoke-static {v2, v3}, Lcom/android/server/media/BluetoothRouteProvider;->access$1200(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V

    .line 523
    iget-object v2, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    # invokes: Lcom/android/server/media/BluetoothRouteProvider;->notifyBluetoothRoutesUpdated()V
    invoke-static {v2}, Lcom/android/server/media/BluetoothRouteProvider;->access$700(Lcom/android/server/media/BluetoothRouteProvider;)V

    .line 527
    :cond_6a
    :goto_6a
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 479
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    sparse-switch v1, :sswitch_data_80

    :cond_e
    goto :goto_37

    :sswitch_f
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v4

    goto :goto_38

    :sswitch_19
    const-string v1, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v3

    goto :goto_38

    :sswitch_23
    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_38

    :sswitch_2d
    const-string v1, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_38

    :goto_37
    const/4 v0, -0x1

    :goto_38
    if-eqz v0, :cond_5f

    if-eq v0, v3, :cond_4b

    if-eq v0, v4, :cond_47

    if-eq v0, v2, :cond_41

    goto :goto_7f

    .line 498
    :cond_41
    const/16 v0, 0x15

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->handleConnectionStateChanged(ILandroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_7f

    .line 495
    :cond_47
    invoke-direct {p0, v4, p2, p3}, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->handleConnectionStateChanged(ILandroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 496
    goto :goto_7f

    .line 488
    :cond_4b
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    const/16 v1, 0x17

    # invokes: Lcom/android/server/media/BluetoothRouteProvider;->clearActiveRoutesWithType(I)V
    invoke-static {v0, v1}, Lcom/android/server/media/BluetoothRouteProvider;->access$1000(Lcom/android/server/media/BluetoothRouteProvider;I)V

    .line 489
    if-eqz p3, :cond_59

    .line 490
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    # invokes: Lcom/android/server/media/BluetoothRouteProvider;->addActiveHearingAidDevices(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v0, p3}, Lcom/android/server/media/BluetoothRouteProvider;->access$1100(Lcom/android/server/media/BluetoothRouteProvider;Landroid/bluetooth/BluetoothDevice;)V

    .line 492
    :cond_59
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    # invokes: Lcom/android/server/media/BluetoothRouteProvider;->notifyBluetoothRoutesUpdated()V
    invoke-static {v0}, Lcom/android/server/media/BluetoothRouteProvider;->access$700(Lcom/android/server/media/BluetoothRouteProvider;)V

    .line 493
    goto :goto_7f

    .line 481
    :cond_5f
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    const/16 v1, 0x8

    # invokes: Lcom/android/server/media/BluetoothRouteProvider;->clearActiveRoutesWithType(I)V
    invoke-static {v0, v1}, Lcom/android/server/media/BluetoothRouteProvider;->access$1000(Lcom/android/server/media/BluetoothRouteProvider;I)V

    .line 482
    if-eqz p3, :cond_79

    .line 483
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object v1, v0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    # invokes: Lcom/android/server/media/BluetoothRouteProvider;->addActiveRoute(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V
    invoke-static {v0, v1}, Lcom/android/server/media/BluetoothRouteProvider;->access$600(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V

    .line 485
    :cond_79
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    # invokes: Lcom/android/server/media/BluetoothRouteProvider;->notifyBluetoothRoutesUpdated()V
    invoke-static {v0}, Lcom/android/server/media/BluetoothRouteProvider;->access$700(Lcom/android/server/media/BluetoothRouteProvider;)V

    .line 486
    nop

    .line 501
    :goto_7f
    return-void

    :sswitch_data_80
    .sparse-switch
        -0x2486726f -> :sswitch_2d
        0x1d0d7e43 -> :sswitch_23
        0x461dab18 -> :sswitch_19
        0x4a286686 -> :sswitch_f
    .end sparse-switch
.end method
