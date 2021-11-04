.class public abstract Lcom/samsung/android/mcf/ICasterCallback$Stub;
.super Landroid/os/Binder;
.source "ICasterCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/ICasterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ICasterCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/ICasterCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mcf.ICasterCallback"

.field public static final TRANSACTION_onAdvertiseStarted:I = 0x1

.field public static final TRANSACTION_onAdvertiseStopped:I = 0x2

.field public static final TRANSACTION_onConnectionFailed:I = 0x6

.field public static final TRANSACTION_onConnectionStateChanged:I = 0x5

.field public static final TRANSACTION_onHandoverRequest:I = 0x4

.field public static final TRANSACTION_onHandoverResult:I = 0x7

.field public static final TRANSACTION_onMcfServiceStateChanged:I = 0x8

.field public static final TRANSACTION_onPilotScanResult:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "com.samsung.android.mcf.ICasterCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/ICasterCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 63
    :cond_4
    const-string v0, "com.samsung.android.mcf.ICasterCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 64
    instance-of v1, v0, Lcom/samsung/android/mcf/ICasterCallback;

    if-eqz v1, :cond_13

    .line 65
    check-cast v0, Lcom/samsung/android/mcf/ICasterCallback;

    return-object v0

    .line 67
    :cond_13
    new-instance v0, Lcom/samsung/android/mcf/ICasterCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/ICasterCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/android/mcf/ICasterCallback;
    .registers 1

    .line 385
    sget-object v0, Lcom/samsung/android/mcf/ICasterCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/ICasterCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/mcf/ICasterCallback;)Z
    .registers 2

    .line 378
    sget-object v0, Lcom/samsung/android/mcf/ICasterCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/ICasterCallback;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 379
    sput-object p0, Lcom/samsung/android/mcf/ICasterCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/ICasterCallback;

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

    const-string v1, "com.samsung.android.mcf.ICasterCallback"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_b9

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_be

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 173
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 178
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/mcf/ICasterCallback;->onMcfServiceStateChanged(II)V

    return v0

    .line 158
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_33

    .line 161
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/os/PersistableBundle;

    goto :goto_34

    :cond_33
    nop

    .line 167
    :goto_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 168
    invoke-interface {p0, v2, p1}, Lcom/samsung/android/mcf/ICasterCallback;->onHandoverResult(Landroid/os/PersistableBundle;I)V

    return v0

    .line 143
    :pswitch_3c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4f

    .line 146
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/os/PersistableBundle;

    goto :goto_50

    :cond_4f
    nop

    .line 152
    :goto_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 153
    invoke-interface {p0, v2, p1}, Lcom/samsung/android/mcf/ICasterCallback;->onConnectionFailed(Landroid/os/PersistableBundle;I)V

    return v0

    .line 128
    :pswitch_58
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6b

    .line 131
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/os/PersistableBundle;

    goto :goto_6c

    :cond_6b
    nop

    .line 137
    :goto_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 138
    invoke-interface {p0, v2, p1}, Lcom/samsung/android/mcf/ICasterCallback;->onConnectionStateChanged(Landroid/os/PersistableBundle;I)V

    return v0

    .line 111
    :pswitch_74
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_8b

    .line 116
    sget-object p3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Landroid/os/PersistableBundle;

    goto :goto_8c

    :cond_8b
    nop

    .line 122
    :goto_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 123
    invoke-interface {p0, p1, v2, p2}, Lcom/samsung/android/mcf/ICasterCallback;->onHandoverRequest(ILandroid/os/PersistableBundle;I)V

    return v0

    .line 101
    :pswitch_94
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 106
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/mcf/ICasterCallback;->onPilotScanResult(Ljava/lang/String;I)V

    return v0

    .line 93
    :pswitch_a3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 96
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/ICasterCallback;->onAdvertiseStopped(I)V

    return v0

    .line 85
    :pswitch_ae
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 88
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/ICasterCallback;->onAdvertiseStarted(I)V

    return v0

    .line 80
    :cond_b9
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_ae
        :pswitch_a3
        :pswitch_94
        :pswitch_74
        :pswitch_58
        :pswitch_3c
        :pswitch_20
        :pswitch_11
    .end packed-switch
.end method
