.class public abstract Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;
.super Landroid/os/Binder;
.source "IMcfUWBRangingCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mcf.ranging.IMcfUWBRangingCallback"

.field public static final TRANSACTION_onDataReceived:I = 0x1

.field public static final TRANSACTION_onDeviceDiscovered:I = 0x4

.field public static final TRANSACTION_onStatusChanged:I = 0x2

.field public static final TRANSACTION_onStatusError:I = 0x3

.field public static final TRANSACTION_onUWBParamChanged:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "com.samsung.android.mcf.ranging.IMcfUWBRangingCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_4
    const-string v0, "com.samsung.android.mcf.ranging.IMcfUWBRangingCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 49
    instance-of v1, v0, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;

    if-eqz v1, :cond_13

    .line 50
    check-cast v0, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;

    return-object v0

    .line 52
    :cond_13
    new-instance v0, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;
    .registers 1

    .line 244
    sget-object v0, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;)Z
    .registers 2

    .line 237
    sget-object v0, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 238
    sput-object p0, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;

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

    const-string v1, "com.samsung.android.mcf.ranging.IMcfUWBRangingCallback"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_6e

    if-eq p1, v0, :cond_5f

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4c

    const/4 v2, 0x3

    if-eq p1, v2, :cond_41

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2a

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1b

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 111
    :cond_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 116
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;->onUWBParamChanged(Ljava/lang/String;[B)V

    return v0

    .line 98
    :cond_2a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3c

    .line 101
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PersistableBundle;

    goto :goto_3d

    :cond_3c
    const/4 p1, 0x0

    .line 106
    :goto_3d
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;->onDeviceDiscovered(Landroid/os/PersistableBundle;)V

    return v0

    .line 90
    :cond_41
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 93
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;->onStatusError(I)V

    return v0

    .line 78
    :cond_4c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 85
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;->onStatusChanged(IILjava/lang/String;)V

    return v0

    .line 70
    :cond_5f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    sget-object p1, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/samsung/android/mcf/ranging/McfUWBRangingData;

    .line 73
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;->onDataReceived([Lcom/samsung/android/mcf/ranging/McfUWBRangingData;)V

    return v0

    .line 65
    :cond_6e
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
