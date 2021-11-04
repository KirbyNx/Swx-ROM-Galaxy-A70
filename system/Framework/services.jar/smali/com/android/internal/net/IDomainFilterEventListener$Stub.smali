.class public abstract Lcom/android/internal/net/IDomainFilterEventListener$Stub;
.super Landroid/os/Binder;
.source "IDomainFilterEventListener.java"

# interfaces
.implements Lcom/android/internal/net/IDomainFilterEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/IDomainFilterEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/IDomainFilterEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_onDomainFilterReportEvent:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 21
    const-string v0, "com$android$internal$net$IDomainFilterEventListener"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/IDomainFilterEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    sget-object v0, Lcom/android/internal/net/IDomainFilterEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/net/IDomainFilterEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 19
    sget-object v0, Lcom/android/internal/net/IDomainFilterEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IDomainFilterEventListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 33
    if-nez p0, :cond_4

    .line 34
    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_4
    sget-object v0, Lcom/android/internal/net/IDomainFilterEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/net/IDomainFilterEventListener;

    if-eqz v1, :cond_14

    .line 38
    move-object v1, v0

    check-cast v1, Lcom/android/internal/net/IDomainFilterEventListener;

    return-object v1

    .line 40
    :cond_14
    new-instance v1, Lcom/android/internal/net/IDomainFilterEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/net/IDomainFilterEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/android/internal/net/IDomainFilterEventListener;
    .registers 1

    .line 127
    sget-object v0, Lcom/android/internal/net/IDomainFilterEventListener$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/net/IDomainFilterEventListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/android/internal/net/IDomainFilterEventListener;)Z
    .registers 3
    .param p0, "impl"    # Lcom/android/internal/net/IDomainFilterEventListener;

    .line 117
    sget-object v0, Lcom/android/internal/net/IDomainFilterEventListener$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/net/IDomainFilterEventListener;

    if-nez v0, :cond_c

    .line 120
    if-eqz p0, :cond_a

    .line 121
    sput-object p0, Lcom/android/internal/net/IDomainFilterEventListener$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/net/IDomainFilterEventListener;

    .line 122
    const/4 v0, 0x1

    return v0

    .line 124
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 118
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 44
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
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
    move/from16 v0, p1

    sget-object v1, Lcom/android/internal/net/IDomainFilterEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 49
    .local v1, "descriptor":Ljava/lang/String;
    const/4 v2, 0x1

    if-eq v0, v2, :cond_17

    const v3, 0x5f4e5446

    if-eq v0, v3, :cond_11

    .line 72
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 53
    :cond_11
    move-object/from16 v3, p3

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return v2

    .line 58
    :cond_17
    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 62
    .local v11, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 64
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 66
    .local v13, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 67
    .local v15, "_arg3":Ljava/lang/String;
    move-object/from16 v5, p0

    move v6, v11

    move v7, v12

    move-wide v8, v13

    move-object v10, v15

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/net/IDomainFilterEventListener$Stub;->onDomainFilterReportEvent(IIJLjava/lang/String;)V

    .line 68
    return v2
.end method
