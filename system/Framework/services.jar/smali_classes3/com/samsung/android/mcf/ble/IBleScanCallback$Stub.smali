.class public abstract Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub;
.super Landroid/os/Binder;
.source "IBleScanCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/ble/IBleScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ble/IBleScanCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mcf.ble.IBleScanCallback"

.field public static final TRANSACTION_onScanFailed:I = 0x2

.field public static final TRANSACTION_onScanResult:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.samsung.android.mcf.ble.IBleScanCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/ble/IBleScanCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_4
    const-string v0, "com.samsung.android.mcf.ble.IBleScanCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 46
    instance-of v1, v0, Lcom/samsung/android/mcf/ble/IBleScanCallback;

    if-eqz v1, :cond_13

    .line 47
    check-cast v0, Lcom/samsung/android/mcf/ble/IBleScanCallback;

    return-object v0

    .line 49
    :cond_13
    new-instance v0, Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/android/mcf/ble/IBleScanCallback;
    .registers 1

    .line 161
    sget-object v0, Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/ble/IBleScanCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/mcf/ble/IBleScanCallback;)Z
    .registers 2

    .line 154
    sget-object v0, Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/ble/IBleScanCallback;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 155
    sput-object p0, Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/ble/IBleScanCallback;

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.samsung.android.mcf.ble.IBleScanCallback"

    if-eq p1, v0, :cond_21

    const/4 v2, 0x2

    if-eq p1, v2, :cond_16

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_12

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 62
    :cond_12
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 80
    :cond_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 83
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/ble/IBleScanCallback;->onScanFailed(I)V

    return v0

    .line 67
    :cond_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_33

    .line 70
    sget-object p1, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/le/ScanResult;

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    .line 75
    :goto_34
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/ble/IBleScanCallback;->onScanResult(Landroid/bluetooth/le/ScanResult;)V

    return v0
.end method
