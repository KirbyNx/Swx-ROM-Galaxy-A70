.class public abstract Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub;
.super Landroid/os/Binder;
.source "IMcfMessageCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mcf.messaging.IMcfMessageCallback"

.field public static final TRANSACTION_onMessageDeviceStatus:I = 0x3

.field public static final TRANSACTION_onMessageReceived:I = 0x2

.field public static final TRANSACTION_onMessageResult:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.samsung.android.mcf.messaging.IMcfMessageCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_4
    const-string v0, "com.samsung.android.mcf.messaging.IMcfMessageCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 43
    instance-of v1, v0, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;

    if-eqz v1, :cond_13

    .line 44
    check-cast v0, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;

    return-object v0

    .line 46
    :cond_13
    new-instance v0, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;
    .registers 1

    .line 213
    sget-object v0, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;)Z
    .registers 2

    .line 206
    sget-object v0, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 207
    sput-object p0, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;

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

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.samsung.android.mcf.messaging.IMcfMessageCallback"

    if-eq p1, v1, :cond_52

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3a

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1a

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_16

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 59
    :cond_16
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 94
    :cond_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2d

    .line 97
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/PersistableBundle;

    goto :goto_2e

    :cond_2d
    nop

    .line 103
    :goto_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 106
    invoke-interface {p0, v0, p1, p2}, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;->onMessageDeviceStatus(Landroid/os/PersistableBundle;II)V

    return v1

    .line 81
    :cond_3a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4d

    .line 84
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/PersistableBundle;

    goto :goto_4e

    :cond_4d
    nop

    .line 89
    :goto_4e
    invoke-interface {p0, v0}, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;->onMessageReceived(Landroid/os/PersistableBundle;)V

    return v1

    .line 64
    :cond_52
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_65

    .line 67
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/PersistableBundle;

    goto :goto_66

    :cond_65
    nop

    .line 73
    :goto_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 76
    invoke-interface {p0, v0, p1, p2}, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;->onMessageResult(Landroid/os/PersistableBundle;II)V

    return v1
.end method
