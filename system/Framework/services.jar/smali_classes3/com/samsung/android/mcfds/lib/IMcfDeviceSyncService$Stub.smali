.class public abstract Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub;
.super Landroid/os/Binder;
.source "IMcfDeviceSyncService.java"

# interfaces
.implements Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mcfds.lib.IMcfDeviceSyncService"

.field static final TRANSACTION_internalCommand:I = 0x1

.field static final TRANSACTION_internalCommandWithReturnValue:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.samsung.android.mcfds.lib.IMcfDeviceSyncService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_4
    const-string v0, "com.samsung.android.mcfds.lib.IMcfDeviceSyncService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    if-eqz v1, :cond_14

    .line 47
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    return-object v1

    .line 49
    :cond_14
    new-instance v1, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;
    .registers 1

    .line 198
    sget-object v0, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;)Z
    .registers 2
    .param p0, "impl"    # Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    .line 191
    sget-object v0, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 192
    sput-object p0, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    .line 193
    const/4 v0, 0x1

    return v0

    .line 195
    :cond_a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 53
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const-string v0, "com.samsung.android.mcfds.lib.IMcfDeviceSyncService"

    .line 58
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_40

    const/4 v2, 0x2

    if-eq p1, v2, :cond_16

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_12

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 62
    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return v1

    .line 82
    :cond_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_28

    .line 85
    sget-object v2, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .local v2, "_arg0":Landroid/os/Message;
    goto :goto_29

    .line 88
    .end local v2    # "_arg0":Landroid/os/Message;
    :cond_28
    const/4 v2, 0x0

    .line 91
    .restart local v2    # "_arg0":Landroid/os/Message;
    :goto_29
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub;->internalCommandWithReturnValue(Landroid/os/Message;Landroid/os/Bundle;)I

    move-result v4

    .line 93
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    nop

    .line 96
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    invoke-virtual {v3, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 102
    return v1

    .line 67
    .end local v2    # "_arg0":Landroid/os/Message;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_result":I
    :cond_40
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_52

    .line 70
    sget-object v2, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .restart local v2    # "_arg0":Landroid/os/Message;
    goto :goto_53

    .line 73
    .end local v2    # "_arg0":Landroid/os/Message;
    :cond_52
    const/4 v2, 0x0

    .line 75
    .restart local v2    # "_arg0":Landroid/os/Message;
    :goto_53
    invoke-virtual {p0, v2}, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub;->internalCommand(Landroid/os/Message;)I

    move-result v3

    .line 76
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return v1
.end method
