.class public final synthetic Lvendor/samsung/hardware/biometrics/face/V2_0/-$$Lambda$ISehBiometricsFace$Stub$eCIZ50qJw-7jrfWdlwm2vgoJ_j0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lvendor/samsung/hardware/biometrics/face/V2_0/-$$Lambda$ISehBiometricsFace$Stub$eCIZ50qJw-7jrfWdlwm2vgoJ_j0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lvendor/samsung/hardware/biometrics/face/V2_0/-$$Lambda$ISehBiometricsFace$Stub$eCIZ50qJw-7jrfWdlwm2vgoJ_j0;

    invoke-direct {v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/-$$Lambda$ISehBiometricsFace$Stub$eCIZ50qJw-7jrfWdlwm2vgoJ_j0;-><init>()V

    sput-object v0, Lvendor/samsung/hardware/biometrics/face/V2_0/-$$Lambda$ISehBiometricsFace$Stub$eCIZ50qJw-7jrfWdlwm2vgoJ_j0;->INSTANCE:Lvendor/samsung/hardware/biometrics/face/V2_0/-$$Lambda$ISehBiometricsFace$Stub$eCIZ50qJw-7jrfWdlwm2vgoJ_j0;

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

    invoke-static {p1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->lambda$onTransact$0(Landroid/os/HwParcel;)Landroid/os/HidlMemory;

    move-result-object p1

    return-object p1
.end method
