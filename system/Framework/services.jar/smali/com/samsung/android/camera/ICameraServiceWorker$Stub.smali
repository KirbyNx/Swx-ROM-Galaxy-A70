.class public abstract Lcom/samsung/android/camera/ICameraServiceWorker$Stub;
.super Landroid/os/Binder;
.source "ICameraServiceWorker.java"

# interfaces
.implements Lcom/samsung/android/camera/ICameraServiceWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/ICameraServiceWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_acquireRequestInjector:I = 0x4

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_notifyCameraState:I = 0x2

.field static final TRANSACTION_pingForUpdate:I = 0x1

.field static final TRANSACTION_queryPackageName:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 49
    const-string v0, "com$samsung$android$camera$ICameraServiceWorker"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    sget-object v0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 47
    sget-object v0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/ICameraServiceWorker;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 61
    if-nez p0, :cond_4

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_4
    sget-object v0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/camera/ICameraServiceWorker;

    if-eqz v1, :cond_14

    .line 66
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/camera/ICameraServiceWorker;

    return-object v1

    .line 68
    :cond_14
    new-instance v1, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/samsung/android/camera/ICameraServiceWorker;
    .registers 1

    .line 306
    sget-object v0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/camera/ICameraServiceWorker;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/camera/ICameraServiceWorker;)Z
    .registers 3
    .param p0, "impl"    # Lcom/samsung/android/camera/ICameraServiceWorker;

    .line 296
    sget-object v0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/camera/ICameraServiceWorker;

    if-nez v0, :cond_c

    .line 299
    if-eqz p0, :cond_a

    .line 300
    sput-object p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/camera/ICameraServiceWorker;

    .line 301
    const/4 v0, 0x1

    return v0

    .line 303
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 297
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 72
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    sget-object v3, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 77
    .local v3, "descriptor":Ljava/lang/String;
    const/4 v4, 0x1

    if-eq v0, v4, :cond_8c

    const/4 v5, 0x2

    if-eq v0, v5, :cond_67

    const/4 v5, 0x3

    if-eq v0, v5, :cond_4f

    const/4 v5, 0x4

    if-eq v0, v5, :cond_41

    const v5, 0x5f4e5446

    if-eq v0, v5, :cond_3d

    packed-switch v0, :pswitch_data_96

    .line 142
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 128
    :pswitch_21
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->getInterfaceVersion()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    return v4

    .line 135
    :pswitch_2f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    return v4

    .line 81
    :cond_3d
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return v4

    .line 120
    :cond_41
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->acquireRequestInjector()Landroid/os/IBinder;

    move-result-object v5

    .line 122
    .local v5, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 124
    return v4

    .line 108
    .end local v5    # "_result":Landroid/os/IBinder;
    :cond_4f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 112
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 113
    .local v6, "_arg1":I
    move-object/from16 v13, p0

    invoke-virtual {v13, v5, v6}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->queryPackageName(II)Ljava/lang/String;

    move-result-object v7

    .line 114
    .local v7, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {v2, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v4

    .line 92
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_result":Ljava/lang/String;
    :cond_67
    move-object/from16 v13, p0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 98
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 100
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 102
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 103
    .local v16, "_arg4":I
    move-object/from16 v7, p0

    move-object v8, v5

    move v9, v6

    move v10, v14

    move-object v11, v15

    move/from16 v12, v16

    invoke-virtual/range {v7 .. v12}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->notifyCameraState(Ljava/lang/String;IILjava/lang/String;I)V

    .line 104
    return v4

    .line 86
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :cond_8c
    move-object/from16 v13, p0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->pingForUpdate()V

    .line 88
    return v4

    nop

    :pswitch_data_96
    .packed-switch 0xfffffe
        :pswitch_2f
        :pswitch_21
    .end packed-switch
.end method
