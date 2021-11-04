.class public abstract Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub;
.super Landroid/os/Binder;
.source "IDeviceSyncCallback.java"

# interfaces
.implements Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mcfds.lib.IDeviceSyncCallback"

.field static final TRANSACTION_onDeviceFound:I = 0x1

.field static final TRANSACTION_onDeviceLost:I = 0x3

.field static final TRANSACTION_onDeviceUpdated:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.samsung.android.mcfds.lib.IDeviceSyncCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_4

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_4
    const-string v0, "com.samsung.android.mcfds.lib.IDeviceSyncCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback;

    if-eqz v1, :cond_14

    .line 46
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback;

    return-object v1

    .line 48
    :cond_14
    new-instance v1, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback;
    .registers 1

    .line 203
    sget-object v0, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback;)Z
    .registers 2
    .param p0, "impl"    # Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback;

    .line 196
    sget-object v0, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 197
    sput-object p0, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback;

    .line 198
    const/4 v0, 0x1

    return v0

    .line 200
    :cond_a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 52
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

    .line 56
    const-string v0, "com.samsung.android.mcfds.lib.IDeviceSyncCallback"

    .line 57
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_47

    const/4 v2, 0x2

    if-eq p1, v2, :cond_30

    const/4 v2, 0x3

    if-eq p1, v2, :cond_19

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_15

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 61
    :cond_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return v1

    .line 92
    :cond_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2b

    .line 95
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .local v2, "_arg0":Landroid/os/PersistableBundle;
    goto :goto_2c

    .line 98
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    :cond_2b
    const/4 v2, 0x0

    .line 100
    .restart local v2    # "_arg0":Landroid/os/PersistableBundle;
    :goto_2c
    invoke-virtual {p0, v2}, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub;->onDeviceLost(Landroid/os/PersistableBundle;)V

    .line 101
    return v1

    .line 79
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    :cond_30
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_42

    .line 82
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .restart local v2    # "_arg0":Landroid/os/PersistableBundle;
    goto :goto_43

    .line 85
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    :cond_42
    const/4 v2, 0x0

    .line 87
    .restart local v2    # "_arg0":Landroid/os/PersistableBundle;
    :goto_43
    invoke-virtual {p0, v2}, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub;->onDeviceUpdated(Landroid/os/PersistableBundle;)V

    .line 88
    return v1

    .line 66
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    :cond_47
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_59

    .line 69
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .restart local v2    # "_arg0":Landroid/os/PersistableBundle;
    goto :goto_5a

    .line 72
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    :cond_59
    const/4 v2, 0x0

    .line 74
    .restart local v2    # "_arg0":Landroid/os/PersistableBundle;
    :goto_5a
    invoke-virtual {p0, v2}, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub;->onDeviceFound(Landroid/os/PersistableBundle;)V

    .line 75
    return v1
.end method
