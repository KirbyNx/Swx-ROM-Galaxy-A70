.class public abstract Lcom/samsung/android/camera/IRequestInjector$Stub;
.super Landroid/os/Binder;
.source "IRequestInjector.java"

# interfaces
.implements Lcom/samsung/android/camera/IRequestInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/IRequestInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/IRequestInjector$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_applyRequests:I = 0x1

.field static final TRANSACTION_clearRequests:I = 0x2

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 41
    const-string v0, "com$samsung$android$camera$IRequestInjector"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/IRequestInjector$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    sget-object v0, Lcom/samsung/android/camera/IRequestInjector$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/camera/IRequestInjector$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 39
    sget-object v0, Lcom/samsung/android/camera/IRequestInjector$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/IRequestInjector;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_4
    sget-object v0, Lcom/samsung/android/camera/IRequestInjector$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/camera/IRequestInjector;

    if-eqz v1, :cond_14

    .line 58
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/camera/IRequestInjector;

    return-object v1

    .line 60
    :cond_14
    new-instance v1, Lcom/samsung/android/camera/IRequestInjector$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/IRequestInjector$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/samsung/android/camera/IRequestInjector;
    .registers 1

    .line 230
    sget-object v0, Lcom/samsung/android/camera/IRequestInjector$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/camera/IRequestInjector;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/camera/IRequestInjector;)Z
    .registers 3
    .param p0, "impl"    # Lcom/samsung/android/camera/IRequestInjector;

    .line 220
    sget-object v0, Lcom/samsung/android/camera/IRequestInjector$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/camera/IRequestInjector;

    if-nez v0, :cond_c

    .line 223
    if-eqz p0, :cond_a

    .line 224
    sput-object p0, Lcom/samsung/android/camera/IRequestInjector$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/camera/IRequestInjector;

    .line 225
    const/4 v0, 0x1

    return v0

    .line 227
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 221
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 64
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

    .line 68
    sget-object v0, Lcom/samsung/android/camera/IRequestInjector$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 69
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3f

    const/4 v2, 0x2

    if-eq p1, v2, :cond_35

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_31

    packed-switch p1, :pswitch_data_52

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 94
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/camera/IRequestInjector$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    return v1

    .line 101
    :pswitch_23
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/camera/IRequestInjector$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    return v1

    .line 73
    :cond_31
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return v1

    .line 87
    :cond_35
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/camera/IRequestInjector$Stub;->clearRequests()V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    return v1

    .line 78
    :cond_3f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/PersistableBundle;

    .line 81
    .local v2, "_arg0":[Landroid/os/PersistableBundle;
    invoke-virtual {p0, v2}, Lcom/samsung/android/camera/IRequestInjector$Stub;->applyRequests([Landroid/os/PersistableBundle;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    return v1

    nop

    :pswitch_data_52
    .packed-switch 0xfffffe
        :pswitch_23
        :pswitch_15
    .end packed-switch
.end method
