.class public final synthetic Lvendor/samsung/hardware/biometrics/face/V2_0/-$$Lambda$ISehBiometricsFaceClientCallback$Stub$x0GeOX1WDaUBHdrRdErKEWaHQLc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lvendor/samsung/hardware/biometrics/face/V2_0/-$$Lambda$ISehBiometricsFaceClientCallback$Stub$x0GeOX1WDaUBHdrRdErKEWaHQLc;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lvendor/samsung/hardware/biometrics/face/V2_0/-$$Lambda$ISehBiometricsFaceClientCallback$Stub$x0GeOX1WDaUBHdrRdErKEWaHQLc;

    invoke-direct {v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/-$$Lambda$ISehBiometricsFaceClientCallback$Stub$x0GeOX1WDaUBHdrRdErKEWaHQLc;-><init>()V

    sput-object v0, Lvendor/samsung/hardware/biometrics/face/V2_0/-$$Lambda$ISehBiometricsFaceClientCallback$Stub$x0GeOX1WDaUBHdrRdErKEWaHQLc;->INSTANCE:Lvendor/samsung/hardware/biometrics/face/V2_0/-$$Lambda$ISehBiometricsFaceClientCallback$Stub$x0GeOX1WDaUBHdrRdErKEWaHQLc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/os/HwParcel;

    invoke-static {p1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Stub;->lambda$onTransact$0(Landroid/os/HwParcel;)Landroid/os/HidlMemory;

    move-result-object p1

    return-object p1
.end method
