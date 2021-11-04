.class public abstract Lvendor/samsung/hardware/light/ISehLights$Stub;
.super Landroid/os/Binder;
.source "ISehLights.java"

# interfaces
.implements Lvendor/samsung/hardware/light/ISehLights;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/light/ISehLights;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getLights:I = 0x2

.field static final TRANSACTION_setLightState:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 41
    const-string v0, "vendor$samsung$hardware$light$ISehLights"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/samsung/hardware/light/ISehLights$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    invoke-virtual {p0}, Lvendor/samsung/hardware/light/ISehLights$Stub;->markVintfStability()V

    .line 46
    sget-object v0, Lvendor/samsung/hardware/light/ISehLights$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung/hardware/light/ISehLights$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 39
    sget-object v0, Lvendor/samsung/hardware/light/ISehLights$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/light/ISehLights;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_4
    sget-object v0, Lvendor/samsung/hardware/light/ISehLights$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lvendor/samsung/hardware/light/ISehLights;

    if-eqz v1, :cond_14

    .line 59
    move-object v1, v0

    check-cast v1, Lvendor/samsung/hardware/light/ISehLights;

    return-object v1

    .line 61
    :cond_14
    new-instance v1, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lvendor/samsung/hardware/light/ISehLights;
    .registers 1

    .line 251
    sget-object v0, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;->sDefaultImpl:Lvendor/samsung/hardware/light/ISehLights;

    return-object v0
.end method

.method public static setDefaultImpl(Lvendor/samsung/hardware/light/ISehLights;)Z
    .registers 3
    .param p0, "impl"    # Lvendor/samsung/hardware/light/ISehLights;

    .line 241
    sget-object v0, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;->sDefaultImpl:Lvendor/samsung/hardware/light/ISehLights;

    if-nez v0, :cond_c

    .line 244
    if-eqz p0, :cond_a

    .line 245
    sput-object p0, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;->sDefaultImpl:Lvendor/samsung/hardware/light/ISehLights;

    .line 246
    const/4 v0, 0x1

    return v0

    .line 248
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 242
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 65
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

    .line 69
    sget-object v0, Lvendor/samsung/hardware/light/ISehLights$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 70
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_43

    const/4 v2, 0x2

    if-eq p1, v2, :cond_35

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_31

    packed-switch p1, :pswitch_data_66

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 105
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p0}, Lvendor/samsung/hardware/light/ISehLights$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    return v1

    .line 112
    :pswitch_23
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p0}, Lvendor/samsung/hardware/light/ISehLights$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v1

    .line 74
    :cond_31
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    return v1

    .line 97
    :cond_35
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lvendor/samsung/hardware/light/ISehLights$Stub;->getLights()[Lvendor/samsung/hardware/light/SehHwLight;

    move-result-object v2

    .line 99
    .local v2, "_result":[Lvendor/samsung/hardware/light/SehHwLight;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 101
    return v1

    .line 79
    .end local v2    # "_result":[Lvendor/samsung/hardware/light/SehHwLight;
    :cond_43
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 83
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_59

    .line 84
    sget-object v3, Landroid/hardware/light/HwLightState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/light/HwLightState;

    .local v3, "_arg1":Landroid/hardware/light/HwLightState;
    goto :goto_5a

    .line 87
    .end local v3    # "_arg1":Landroid/hardware/light/HwLightState;
    :cond_59
    const/4 v3, 0x0

    .line 90
    .restart local v3    # "_arg1":Landroid/hardware/light/HwLightState;
    :goto_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 91
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lvendor/samsung/hardware/light/ISehLights$Stub;->setLightState(ILandroid/hardware/light/HwLightState;I)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    return v1

    nop

    :pswitch_data_66
    .packed-switch 0xfffffe
        :pswitch_23
        :pswitch_15
    .end packed-switch
.end method
