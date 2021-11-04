.class public abstract Lcom/android/internal/net/INetdTetherEventListener$Stub;
.super Landroid/os/Binder;
.source "INetdTetherEventListener.java"

# interfaces
.implements Lcom/android/internal/net/INetdTetherEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/INetdTetherEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/INetdTetherEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_onTetherStart:I = 0x1

.field static final TRANSACTION_onTetherStop:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 24
    const-string v0, "com$android$internal$net$INetdTetherEventListener"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/INetdTetherEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    sget-object v0, Lcom/android/internal/net/INetdTetherEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/net/INetdTetherEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 22
    sget-object v0, Lcom/android/internal/net/INetdTetherEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/INetdTetherEventListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 36
    if-nez p0, :cond_4

    .line 37
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_4
    sget-object v0, Lcom/android/internal/net/INetdTetherEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/net/INetdTetherEventListener;

    if-eqz v1, :cond_14

    .line 41
    move-object v1, v0

    check-cast v1, Lcom/android/internal/net/INetdTetherEventListener;

    return-object v1

    .line 43
    :cond_14
    new-instance v1, Lcom/android/internal/net/INetdTetherEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/net/INetdTetherEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/android/internal/net/INetdTetherEventListener;
    .registers 1

    .line 140
    sget-object v0, Lcom/android/internal/net/INetdTetherEventListener$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/net/INetdTetherEventListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/android/internal/net/INetdTetherEventListener;)Z
    .registers 3
    .param p0, "impl"    # Lcom/android/internal/net/INetdTetherEventListener;

    .line 130
    sget-object v0, Lcom/android/internal/net/INetdTetherEventListener$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/net/INetdTetherEventListener;

    if-nez v0, :cond_c

    .line 133
    if-eqz p0, :cond_a

    .line 134
    sput-object p0, Lcom/android/internal/net/INetdTetherEventListener$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/net/INetdTetherEventListener;

    .line 135
    const/4 v0, 0x1

    return v0

    .line 137
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 131
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 47
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

    .line 51
    sget-object v0, Lcom/android/internal/net/INetdTetherEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 52
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1d

    const/4 v2, 0x2

    if-eq p1, v2, :cond_16

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_12

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 56
    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return v1

    .line 67
    :cond_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/internal/net/INetdTetherEventListener$Stub;->onTetherStop()V

    .line 69
    return v1

    .line 61
    :cond_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/net/INetdTetherEventListener$Stub;->onTetherStart()V

    .line 63
    return v1
.end method
