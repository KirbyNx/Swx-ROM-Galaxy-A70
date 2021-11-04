.class public abstract Lsamsung/uwb/IRangingCallback$Stub;
.super Landroid/os/Binder;
.source "IRangingCallback.java"

# interfaces
.implements Lsamsung/uwb/IRangingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsamsung/uwb/IRangingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsamsung/uwb/IRangingCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "samsung.uwb.IRangingCallback"

.field static final TRANSACTION_onRangingDataReceived:I = 0x1

.field static final TRANSACTION_onRangingStatusReceived:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "samsung.uwb.IRangingCallback"

    invoke-virtual {p0, p0, v0}, Lsamsung/uwb/IRangingCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lsamsung/uwb/IRangingCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 36
    if-nez p0, :cond_4

    .line 37
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_4
    const-string v0, "samsung.uwb.IRangingCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lsamsung/uwb/IRangingCallback;

    if-eqz v1, :cond_14

    .line 41
    move-object v1, v0

    check-cast v1, Lsamsung/uwb/IRangingCallback;

    return-object v1

    .line 43
    :cond_14
    new-instance v1, Lsamsung/uwb/IRangingCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lsamsung/uwb/IRangingCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lsamsung/uwb/IRangingCallback;
    .registers 1

    .line 165
    sget-object v0, Lsamsung/uwb/IRangingCallback$Stub$Proxy;->sDefaultImpl:Lsamsung/uwb/IRangingCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lsamsung/uwb/IRangingCallback;)Z
    .registers 3
    .param p0, "impl"    # Lsamsung/uwb/IRangingCallback;

    .line 155
    sget-object v0, Lsamsung/uwb/IRangingCallback$Stub$Proxy;->sDefaultImpl:Lsamsung/uwb/IRangingCallback;

    if-nez v0, :cond_c

    .line 158
    if-eqz p0, :cond_a

    .line 159
    sput-object p0, Lsamsung/uwb/IRangingCallback$Stub$Proxy;->sDefaultImpl:Lsamsung/uwb/IRangingCallback;

    .line 160
    const/4 v0, 0x1

    return v0

    .line 162
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 156
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 47
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const-string v0, "samsung.uwb.IRangingCallback"

    .line 52
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_24

    const/4 v2, 0x2

    if-eq p1, v2, :cond_16

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_12

    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 56
    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return v1

    .line 75
    :cond_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 78
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lsamsung/uwb/IRangingCallback$Stub;->onRangingStatusReceived(I)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    return v1

    .line 61
    .end local v2    # "_arg0":I
    :cond_24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_36

    .line 64
    sget-object v2, Lsamsung/uwb/RangingMeasure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsamsung/uwb/RangingMeasure;

    .local v2, "_arg0":Lsamsung/uwb/RangingMeasure;
    goto :goto_37

    .line 67
    .end local v2    # "_arg0":Lsamsung/uwb/RangingMeasure;
    :cond_36
    const/4 v2, 0x0

    .line 69
    .restart local v2    # "_arg0":Lsamsung/uwb/RangingMeasure;
    :goto_37
    invoke-virtual {p0, v2}, Lsamsung/uwb/IRangingCallback$Stub;->onRangingDataReceived(Lsamsung/uwb/RangingMeasure;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    return v1
.end method
