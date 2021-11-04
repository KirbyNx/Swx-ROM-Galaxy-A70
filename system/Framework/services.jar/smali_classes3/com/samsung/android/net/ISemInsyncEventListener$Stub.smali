.class public abstract Lcom/samsung/android/net/ISemInsyncEventListener$Stub;
.super Landroid/os/Binder;
.source "ISemInsyncEventListener.java"

# interfaces
.implements Lcom/samsung/android/net/ISemInsyncEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/net/ISemInsyncEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/net/ISemInsyncEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.net.ISemInsyncEventListener"

.field public static final TRANSACTION_onConfirmed:I = 0x2

.field public static final TRANSACTION_onTapEvent:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 32
    const-string v0, "com.samsung.android.net.ISemInsyncEventListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/net/ISemInsyncEventListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_4
    const-string v0, "com.samsung.android.net.ISemInsyncEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 44
    instance-of v1, v0, Lcom/samsung/android/net/ISemInsyncEventListener;

    if-eqz v1, :cond_13

    .line 45
    check-cast v0, Lcom/samsung/android/net/ISemInsyncEventListener;

    return-object v0

    .line 47
    :cond_13
    new-instance v0, Lcom/samsung/android/net/ISemInsyncEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/net/ISemInsyncEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/android/net/ISemInsyncEventListener;
    .registers 1

    .line 163
    sget-object v0, Lcom/samsung/android/net/ISemInsyncEventListener$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/net/ISemInsyncEventListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/net/ISemInsyncEventListener;)Z
    .registers 2

    .line 156
    sget-object v0, Lcom/samsung/android/net/ISemInsyncEventListener$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/net/ISemInsyncEventListener;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 157
    sput-object p0, Lcom/samsung/android/net/ISemInsyncEventListener$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/net/ISemInsyncEventListener;

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

    const-string v2, "com.samsung.android.net.ISemInsyncEventListener"

    if-eq p1, v1, :cond_28

    const/4 v3, 0x2

    if-eq p1, v3, :cond_17

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_13

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 60
    :cond_13
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 79
    :cond_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_21

    move v0, v1

    .line 82
    :cond_21
    invoke-interface {p0, v0}, Lcom/samsung/android/net/ISemInsyncEventListener;->onConfirmed(Z)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 65
    :cond_28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-interface {p0}, Lcom/samsung/android/net/ISemInsyncEventListener;->onTapEvent()Landroid/content/Intent;

    move-result-object p1

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3b

    .line 69
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3f

    :cond_3b
    nop

    .line 73
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3f
    return v1
.end method
