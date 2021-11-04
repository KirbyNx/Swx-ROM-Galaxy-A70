.class public abstract Lcom/samsung/android/mcf/ISubscribeCallback$Stub;
.super Landroid/os/Binder;
.source "ISubscribeCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/ISubscribeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ISubscribeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/ISubscribeCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mcf.ISubscribeCallback"

.field public static final TRANSACTION_onConnectionFailed:I = 0x9

.field public static final TRANSACTION_onConnectionStateChanged:I = 0x8

.field public static final TRANSACTION_onDiscoveryStarted:I = 0x1

.field public static final TRANSACTION_onDiscoveryStopped:I = 0x2

.field public static final TRANSACTION_onHandoverResult:I = 0xa

.field public static final TRANSACTION_onHandoverStarted:I = 0x3

.field public static final TRANSACTION_onHandoverStopped:I = 0x4

.field public static final TRANSACTION_onMcfServiceStateChanged:I = 0xb

.field public static final TRANSACTION_onPilotAdvertiseStarted:I = 0x5

.field public static final TRANSACTION_onPilotAdvertiseStopped:I = 0x6

.field public static final TRANSACTION_onReceiveHandoverResponse:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    const-string v0, "com.samsung.android.mcf.ISubscribeCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/ISubscribeCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_4
    const-string v0, "com.samsung.android.mcf.ISubscribeCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 67
    instance-of v1, v0, Lcom/samsung/android/mcf/ISubscribeCallback;

    if-eqz v1, :cond_13

    .line 68
    check-cast v0, Lcom/samsung/android/mcf/ISubscribeCallback;

    return-object v0

    .line 70
    :cond_13
    new-instance v0, Lcom/samsung/android/mcf/ISubscribeCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/android/mcf/ISubscribeCallback;
    .registers 1

    .line 451
    sget-object v0, Lcom/samsung/android/mcf/ISubscribeCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/ISubscribeCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/mcf/ISubscribeCallback;)Z
    .registers 2

    .line 444
    sget-object v0, Lcom/samsung/android/mcf/ISubscribeCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/ISubscribeCallback;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 445
    sput-object p0, Lcom/samsung/android/mcf/ISubscribeCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/ISubscribeCallback;

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

    const-string v1, "com.samsung.android.mcf.ISubscribeCallback"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_d2

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_d6

    .line 206
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 196
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 201
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/mcf/ISubscribeCallback;->onMcfServiceStateChanged(II)V

    return v0

    .line 181
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_33

    .line 184
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/os/PersistableBundle;

    goto :goto_34

    :cond_33
    nop

    .line 190
    :goto_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 191
    invoke-interface {p0, v2, p1}, Lcom/samsung/android/mcf/ISubscribeCallback;->onHandoverResult(Landroid/os/PersistableBundle;I)V

    return v0

    .line 166
    :pswitch_3c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4f

    .line 169
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/os/PersistableBundle;

    goto :goto_50

    :cond_4f
    nop

    .line 175
    :goto_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 176
    invoke-interface {p0, v2, p1}, Lcom/samsung/android/mcf/ISubscribeCallback;->onConnectionFailed(Landroid/os/PersistableBundle;I)V

    return v0

    .line 151
    :pswitch_58
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6b

    .line 154
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/os/PersistableBundle;

    goto :goto_6c

    :cond_6b
    nop

    .line 160
    :goto_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 161
    invoke-interface {p0, v2, p1}, Lcom/samsung/android/mcf/ISubscribeCallback;->onConnectionStateChanged(Landroid/os/PersistableBundle;I)V

    return v0

    .line 136
    :pswitch_74
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_87

    .line 139
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/os/PersistableBundle;

    goto :goto_88

    :cond_87
    nop

    .line 145
    :goto_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 146
    invoke-interface {p0, v2, p1}, Lcom/samsung/android/mcf/ISubscribeCallback;->onReceiveHandoverResponse(Landroid/os/PersistableBundle;I)V

    return v0

    .line 128
    :pswitch_90
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 131
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/ISubscribeCallback;->onPilotAdvertiseStopped(I)V

    return v0

    .line 120
    :pswitch_9b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 123
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/ISubscribeCallback;->onPilotAdvertiseStarted(I)V

    return v0

    .line 112
    :pswitch_a6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 115
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/ISubscribeCallback;->onHandoverStopped(I)V

    return v0

    .line 104
    :pswitch_b1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 107
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/ISubscribeCallback;->onHandoverStarted(I)V

    return v0

    .line 96
    :pswitch_bc
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 99
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/ISubscribeCallback;->onDiscoveryStopped(I)V

    return v0

    .line 88
    :pswitch_c7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 91
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/ISubscribeCallback;->onDiscoveryStarted(I)V

    return v0

    .line 83
    :cond_d2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_c7
        :pswitch_bc
        :pswitch_b1
        :pswitch_a6
        :pswitch_9b
        :pswitch_90
        :pswitch_74
        :pswitch_58
        :pswitch_3c
        :pswitch_20
        :pswitch_11
    .end packed-switch
.end method
