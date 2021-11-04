.class public abstract Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub;
.super Landroid/os/Binder;
.source "IMcfHandoverCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mcf.handover.IMcfHandoverCallback"

.field public static final TRANSACTION_onConnectionFailed:I = 0x5

.field public static final TRANSACTION_onConnectionStateChanged:I = 0x4

.field public static final TRANSACTION_onHandoverRequest:I = 0x1

.field public static final TRANSACTION_onHandoverResult:I = 0x3

.field public static final TRANSACTION_onReceiveHandoverResponse:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "com.samsung.android.mcf.handover.IMcfHandoverCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_4
    const-string v0, "com.samsung.android.mcf.handover.IMcfHandoverCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 49
    instance-of v1, v0, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;

    if-eqz v1, :cond_13

    .line 50
    check-cast v0, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;

    return-object v0

    .line 52
    :cond_13
    new-instance v0, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;
    .registers 1

    .line 297
    sget-object v0, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;)Z
    .registers 2

    .line 290
    sget-object v0, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 291
    sput-object p0, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;

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

    const/4 v0, 0x1

    const-string v1, "com.samsung.android.mcf.handover.IMcfHandoverCallback"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_ac

    const/4 v2, 0x0

    if-eq p1, v0, :cond_8c

    const/4 v3, 0x2

    if-eq p1, v3, :cond_70

    const/4 v3, 0x3

    if-eq p1, v3, :cond_54

    const/4 v3, 0x4

    if-eq p1, v3, :cond_38

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1c

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 132
    :cond_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2f

    .line 135
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/os/PersistableBundle;

    goto :goto_30

    :cond_2f
    nop

    .line 141
    :goto_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 142
    invoke-interface {p0, v2, p1}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;->onConnectionFailed(Landroid/os/PersistableBundle;I)V

    return v0

    .line 117
    :cond_38
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4b

    .line 120
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/os/PersistableBundle;

    goto :goto_4c

    :cond_4b
    nop

    .line 126
    :goto_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 127
    invoke-interface {p0, v2, p1}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;->onConnectionStateChanged(Landroid/os/PersistableBundle;I)V

    return v0

    .line 102
    :cond_54
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_67

    .line 105
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/os/PersistableBundle;

    goto :goto_68

    :cond_67
    nop

    .line 111
    :goto_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 112
    invoke-interface {p0, v2, p1}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;->onHandoverResult(Landroid/os/PersistableBundle;I)V

    return v0

    .line 87
    :cond_70
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_83

    .line 90
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/os/PersistableBundle;

    goto :goto_84

    :cond_83
    nop

    .line 96
    :goto_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 97
    invoke-interface {p0, v2, p1}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;->onReceiveHandoverResponse(Landroid/os/PersistableBundle;I)V

    return v0

    .line 70
    :cond_8c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9f

    .line 73
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/os/PersistableBundle;

    goto :goto_a0

    :cond_9f
    nop

    .line 79
    :goto_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 82
    invoke-interface {p0, v2, p1, p2}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;->onHandoverRequest(Landroid/os/PersistableBundle;II)V

    return v0

    .line 65
    :cond_ac
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
