.class public abstract Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub;
.super Landroid/os/Binder;
.source "IMcfDeviceDiscoverCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mcf.discovery.IMcfDeviceDiscoverCallback"

.field public static final TRANSACTION_onDeviceDiscovered:I = 0x1

.field public static final TRANSACTION_onDeviceRemoved:I = 0x2

.field public static final TRANSACTION_onDiscoveryStarted:I = 0x3

.field public static final TRANSACTION_onDiscoveryStopped:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.samsung.android.mcf.discovery.IMcfDeviceDiscoverCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_4
    const-string v0, "com.samsung.android.mcf.discovery.IMcfDeviceDiscoverCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 46
    instance-of v1, v0, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;

    if-eqz v1, :cond_13

    .line 47
    check-cast v0, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;

    return-object v0

    .line 49
    :cond_13
    new-instance v0, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;
    .registers 1

    .line 224
    sget-object v0, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;)Z
    .registers 2

    .line 217
    sget-object v0, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 218
    sput-object p0, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;

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
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.samsung.android.mcf.discovery.IMcfDeviceDiscoverCallback"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_67

    const/4 v2, 0x0

    if-eq p1, v0, :cond_4b

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2f

    const/4 v2, 0x3

    if-eq p1, v2, :cond_24

    const/4 v2, 0x4

    if-eq p1, v2, :cond_19

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 105
    :cond_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 108
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;->onDiscoveryStopped(I)V

    return v0

    .line 97
    :cond_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 100
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;->onDiscoveryStarted(I)V

    return v0

    .line 82
    :cond_2f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_42

    .line 85
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/os/PersistableBundle;

    goto :goto_43

    :cond_42
    nop

    .line 91
    :goto_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 92
    invoke-interface {p0, v2, p1}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;->onDeviceRemoved(Landroid/os/PersistableBundle;I)V

    return v0

    .line 67
    :cond_4b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5e

    .line 70
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/os/PersistableBundle;

    goto :goto_5f

    :cond_5e
    nop

    .line 76
    :goto_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 77
    invoke-interface {p0, v2, p1}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;->onDeviceDiscovered(Landroid/os/PersistableBundle;I)V

    return v0

    .line 62
    :cond_67
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
