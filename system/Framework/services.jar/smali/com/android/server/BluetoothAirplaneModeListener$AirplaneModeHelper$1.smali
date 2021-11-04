.class Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper$1;
.super Ljava/lang/Object;
.source "BluetoothAirplaneModeListener.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    .line 173
    iput-object p1, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper$1;->this$0:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 5
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 177
    const/4 v0, 0x2

    if-eq p1, v0, :cond_11

    const/16 v0, 0x15

    if-eq p1, v0, :cond_8

    goto :goto_1a

    .line 182
    :cond_8
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper$1;->this$0:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHearingAid;

    # setter for: Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->access$202(Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothHearingAid;

    .line 183
    goto :goto_1a

    .line 179
    :cond_11
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper$1;->this$0:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothA2dp;

    # setter for: Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->access$102(Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 180
    nop

    .line 187
    :goto_1a
    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 4
    .param p1, "profile"    # I

    .line 192
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_f

    const/16 v0, 0x15

    if-eq p1, v0, :cond_9

    goto :goto_15

    .line 197
    :cond_9
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper$1;->this$0:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    # setter for: Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->access$202(Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothHearingAid;

    .line 198
    goto :goto_15

    .line 194
    :cond_f
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper$1;->this$0:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    # setter for: Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->access$102(Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 195
    nop

    .line 202
    :goto_15
    return-void
.end method
