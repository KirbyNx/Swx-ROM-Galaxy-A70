.class public abstract Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Stub;
.super Landroid/os/Binder;
.source "IMcfAdvertiseCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mcf.discovery.IMcfAdvertiseCallback"

.field public static final TRANSACTION_onAdvertiseStarted:I = 0x1

.field public static final TRANSACTION_onAdvertiseStopped:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "com.samsung.android.mcf.discovery.IMcfAdvertiseCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 39
    :cond_4
    const-string v0, "com.samsung.android.mcf.discovery.IMcfAdvertiseCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 40
    instance-of v1, v0, Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback;

    if-eqz v1, :cond_13

    .line 41
    check-cast v0, Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback;

    return-object v0

    .line 43
    :cond_13
    new-instance v0, Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback;
    .registers 1

    .line 140
    sget-object v0, Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback;)Z
    .registers 2

    .line 133
    sget-object v0, Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 134
    sput-object p0, Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback;

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

    const-string v1, "com.samsung.android.mcf.discovery.IMcfAdvertiseCallback"

    if-eq p1, v0, :cond_21

    const/4 v2, 0x2

    if-eq p1, v2, :cond_16

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_12

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 56
    :cond_12
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 69
    :cond_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 72
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback;->onAdvertiseStopped(I)V

    return v0

    .line 61
    :cond_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 64
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback;->onAdvertiseStarted(I)V

    return v0
.end method
