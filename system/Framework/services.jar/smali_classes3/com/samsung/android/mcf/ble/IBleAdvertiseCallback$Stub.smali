.class public abstract Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Stub;
.super Landroid/os/Binder;
.source "IBleAdvertiseCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mcf.ble.IBleAdvertiseCallback"

.field public static final TRANSACTION_onAdvertisingStarted:I = 0x1

.field public static final TRANSACTION_onAdvertisingStopped:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.samsung.android.mcf.ble.IBleAdvertiseCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_4
    const-string v0, "com.samsung.android.mcf.ble.IBleAdvertiseCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 46
    instance-of v1, v0, Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback;

    if-eqz v1, :cond_13

    .line 47
    check-cast v0, Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback;

    return-object v0

    .line 49
    :cond_13
    new-instance v0, Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback;
    .registers 1

    .line 150
    sget-object v0, Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback;)Z
    .registers 2

    .line 143
    sget-object v0, Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 144
    sput-object p0, Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback;

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

    const-string v1, "com.samsung.android.mcf.ble.IBleAdvertiseCallback"

    if-eq p1, v0, :cond_1d

    const/4 v2, 0x2

    if-eq p1, v2, :cond_16

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_12

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 62
    :cond_12
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 77
    :cond_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-interface {p0}, Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback;->onAdvertisingStopped()V

    return v0

    .line 67
    :cond_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 72
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback;->onAdvertisingStarted(II)V

    return v0
.end method
