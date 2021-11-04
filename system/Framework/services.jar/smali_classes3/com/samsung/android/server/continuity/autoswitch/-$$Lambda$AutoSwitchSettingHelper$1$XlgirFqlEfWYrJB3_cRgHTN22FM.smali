.class public final synthetic Lcom/samsung/android/server/continuity/autoswitch/-$$Lambda$AutoSwitchSettingHelper$1$XlgirFqlEfWYrJB3_cRgHTN22FM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/continuity/autoswitch/-$$Lambda$AutoSwitchSettingHelper$1$XlgirFqlEfWYrJB3_cRgHTN22FM;->f$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;

    iput-object p2, p0, Lcom/samsung/android/server/continuity/autoswitch/-$$Lambda$AutoSwitchSettingHelper$1$XlgirFqlEfWYrJB3_cRgHTN22FM;->f$1:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/-$$Lambda$AutoSwitchSettingHelper$1$XlgirFqlEfWYrJB3_cRgHTN22FM;->f$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;

    iget-object v1, p0, Lcom/samsung/android/server/continuity/autoswitch/-$$Lambda$AutoSwitchSettingHelper$1$XlgirFqlEfWYrJB3_cRgHTN22FM;->f$1:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;->lambda$onReceive$1$AutoSwitchSettingHelper$1(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
