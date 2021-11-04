.class public abstract Lcom/samsung/android/mcf/IMcfService$Stub;
.super Landroid/os/Binder;
.source "IMcfService.java"

# interfaces
.implements Lcom/samsung/android/mcf/IMcfService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/IMcfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/IMcfService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mcf.IMcfService"

.field public static final TRANSACTION_internalCommand:I = 0x3

.field public static final TRANSACTION_internalStringCommand:I = 0x4

.field public static final TRANSACTION_registerInsyncEventListenerDelegator:I = 0x1

.field public static final TRANSACTION_unregisterInsyncEventListenerDelegator:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "com.samsung.android.mcf.IMcfService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/IMcfService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_4
    const-string v0, "com.samsung.android.mcf.IMcfService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 57
    instance-of v1, v0, Lcom/samsung/android/mcf/IMcfService;

    if-eqz v1, :cond_13

    .line 58
    check-cast v0, Lcom/samsung/android/mcf/IMcfService;

    return-object v0

    .line 60
    :cond_13
    new-instance v0, Lcom/samsung/android/mcf/IMcfService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/IMcfService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/android/mcf/IMcfService;
    .registers 1

    .line 264
    sget-object v0, Lcom/samsung/android/mcf/IMcfService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/IMcfService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/mcf/IMcfService;)Z
    .registers 2

    .line 257
    sget-object v0, Lcom/samsung/android/mcf/IMcfService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/IMcfService;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 258
    sput-object p0, Lcom/samsung/android/mcf/IMcfService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcf/IMcfService;

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

    const-string v1, "com.samsung.android.mcf.IMcfService"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_83

    if-eq p1, v0, :cond_6d

    const/4 v2, 0x2

    if-eq p1, v2, :cond_57

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_38

    const/4 v2, 0x4

    if-eq p1, v2, :cond_19

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 113
    :cond_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2c

    .line 116
    sget-object p1, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/os/Message;

    goto :goto_2d

    :cond_2c
    nop

    .line 121
    :goto_2d
    invoke-interface {p0, v3}, Lcom/samsung/android/mcf/IMcfService;->internalStringCommand(Landroid/os/Message;)Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 98
    :cond_38
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4b

    .line 101
    sget-object p1, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/os/Message;

    goto :goto_4c

    :cond_4b
    nop

    .line 106
    :goto_4c
    invoke-interface {p0, v3}, Lcom/samsung/android/mcf/IMcfService;->internalCommand(Landroid/os/Message;)I

    move-result p1

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 88
    :cond_57
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/net/ISemInsyncEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/net/ISemInsyncEventListener;

    move-result-object p1

    .line 91
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/IMcfService;->unregisterInsyncEventListenerDelegator(Lcom/samsung/android/net/ISemInsyncEventListener;)Z

    move-result p1

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 78
    :cond_6d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/net/ISemInsyncEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/net/ISemInsyncEventListener;

    move-result-object p1

    .line 81
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/IMcfService;->registerInsyncEventListenerDelegator(Lcom/samsung/android/net/ISemInsyncEventListener;)Z

    move-result p1

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 73
    :cond_83
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
