.class public abstract Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$Stub;
.super Landroid/os/Binder;
.source "IKeepDeviceCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mcf.discovery.IKeepDeviceCallback"

.field public static final TRANSACTION_onKeepDeviceStateCallback:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "com.samsung.android.mcf.discovery.IKeepDeviceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_4
    const-string v0, "com.samsung.android.mcf.discovery.IKeepDeviceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 39
    instance-of v1, v0, Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback;

    if-eqz v1, :cond_13

    .line 40
    check-cast v0, Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback;

    return-object v0

    .line 42
    :cond_13
    new-instance v0, Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback;
    .registers 1

    .line 128
    sget-object v0, Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback;)Z
    .registers 2

    .line 121
    sget-object v0, Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 122
    sput-object p0, Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback;

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

    const-string v1, "com.samsung.android.mcf.discovery.IKeepDeviceCallback"

    if-eq p1, v0, :cond_13

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_f

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 55
    :cond_f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 60
    :cond_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_25

    .line 63
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PersistableBundle;

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    .line 69
    :goto_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 70
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback;->onKeepDeviceStateCallback(Landroid/os/PersistableBundle;I)V

    return v0
.end method
