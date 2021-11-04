.class public abstract Lcom/samsung/android/mcf/ble/IBleAdapterCallback$Stub;
.super Landroid/os/Binder;
.source "IBleAdapterCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/ble/IBleAdapterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ble/IBleAdapterCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/ble/IBleAdapterCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mcf.ble.IBleAdapterCallback"

.field public static final TRANSACTION_onMcfServiceStateChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.samsung.android.mcf.ble.IBleAdapterCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/ble/IBleAdapterCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_4
    const-string v0, "com.samsung.android.mcf.ble.IBleAdapterCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 43
    instance-of v1, v0, Lcom/samsung/android/mcf/ble/IBleAdapterCallback;

    if-eqz v1, :cond_13

    .line 44
    check-cast v0, Lcom/samsung/android/mcf/ble/IBleAdapterCallback;

    return-object v0

    .line 46
    :cond_13
    new-instance v0, Lcom/samsung/android/mcf/ble/IBleAdapterCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/ble/IBleAdapterCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/android/mcf/ble/IBleAdapterCallback;
    .registers 1

    .line 125
    sget-object v0, Lcom/samsung/android/mcf/ble/IBleAdapterCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/ble/IBleAdapterCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/mcf/ble/IBleAdapterCallback;)Z
    .registers 2

    .line 118
    sget-object v0, Lcom/samsung/android/mcf/ble/IBleAdapterCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/ble/IBleAdapterCallback;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 119
    sput-object p0, Lcom/samsung/android/mcf/ble/IBleAdapterCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/ble/IBleAdapterCallback;

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

    const-string v1, "com.samsung.android.mcf.ble.IBleAdapterCallback"

    if-eq p1, v0, :cond_13

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_f

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 59
    :cond_f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 64
    :cond_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 69
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/mcf/ble/IBleAdapterCallback;->onMcfServiceStateChanged(II)V

    return v0
.end method
