.class public abstract Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener$Stub;
.super Landroid/os/Binder;
.source "IContinuitySimpleListener.java"

# interfaces
.implements Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mcfds.lib.common.IContinuitySimpleListener"

.field static final TRANSACTION_onNotify:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "com.samsung.android.mcfds.lib.common.IContinuitySimpleListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 33
    if-nez p0, :cond_4

    .line 34
    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_4
    const-string v0, "com.samsung.android.mcfds.lib.common.IContinuitySimpleListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;

    if-eqz v1, :cond_14

    .line 38
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;

    return-object v1

    .line 40
    :cond_14
    new-instance v1, Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;
    .registers 1

    .line 123
    sget-object v0, Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;)Z
    .registers 2
    .param p0, "impl"    # Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;

    .line 116
    sget-object v0, Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 117
    sput-object p0, Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener;

    .line 118
    const/4 v0, 0x1

    return v0

    .line 120
    :cond_a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 44
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

    .line 48
    const-string v0, "com.samsung.android.mcfds.lib.common.IContinuitySimpleListener"

    .line 49
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_13

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_f

    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 53
    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return v1

    .line 58
    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_25

    .line 61
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .local v2, "_arg0":Landroid/os/Bundle;
    goto :goto_26

    .line 64
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :cond_25
    const/4 v2, 0x0

    .line 66
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    :goto_26
    invoke-virtual {p0, v2}, Lcom/samsung/android/mcfds/lib/common/IContinuitySimpleListener$Stub;->onNotify(Landroid/os/Bundle;)V

    .line 67
    return v1
.end method
