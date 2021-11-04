.class Lvendor/samsung/hardware/bluetooth/V2_0/ISehBluetooth$Stub$2;
.super Ljava/lang/Object;
.source "ISehBluetooth.java"

# interfaces
.implements Lvendor/samsung/hardware/bluetooth/V2_0/ISehBluetooth$getPropertyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/samsung/hardware/bluetooth/V2_0/ISehBluetooth$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/samsung/hardware/bluetooth/V2_0/ISehBluetooth$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/samsung/hardware/bluetooth/V2_0/ISehBluetooth$Stub;Landroid/os/HwParcel;)V
    .registers 3
    .param p1, "this$0"    # Lvendor/samsung/hardware/bluetooth/V2_0/ISehBluetooth$Stub;

    .line 749
    iput-object p1, p0, Lvendor/samsung/hardware/bluetooth/V2_0/ISehBluetooth$Stub$2;->this$0:Lvendor/samsung/hardware/bluetooth/V2_0/ISehBluetooth$Stub;

    iput-object p2, p0, Lvendor/samsung/hardware/bluetooth/V2_0/ISehBluetooth$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ZLjava/lang/String;)V
    .registers 5
    .param p1, "success"    # Z
    .param p2, "data"    # Ljava/lang/String;

    .line 752
    iget-object v0, p0, Lvendor/samsung/hardware/bluetooth/V2_0/ISehBluetooth$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 753
    iget-object v0, p0, Lvendor/samsung/hardware/bluetooth/V2_0/ISehBluetooth$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 754
    iget-object v0, p0, Lvendor/samsung/hardware/bluetooth/V2_0/ISehBluetooth$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Lvendor/samsung/hardware/bluetooth/V2_0/ISehBluetooth$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 756
    return-void
.end method
