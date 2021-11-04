.class public final synthetic Lcom/samsung/android/hardware/secinputdev/-$$Lambda$SemInputDeviceManagerService$GEQKa-Rt4weMQ3-lZxpVXT7-Sck;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspSupportFeatureCallback;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ILjava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/-$$Lambda$SemInputDeviceManagerService$GEQKa-Rt4weMQ3-lZxpVXT7-Sck;->f$0:I

    iput-object p2, p0, Lcom/samsung/android/hardware/secinputdev/-$$Lambda$SemInputDeviceManagerService$GEQKa-Rt4weMQ3-lZxpVXT7-Sck;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onValues(ILjava/lang/String;)V
    .registers 5

    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/-$$Lambda$SemInputDeviceManagerService$GEQKa-Rt4weMQ3-lZxpVXT7-Sck;->f$0:I

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/-$$Lambda$SemInputDeviceManagerService$GEQKa-Rt4weMQ3-lZxpVXT7-Sck;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->lambda$getTspSupportFeature$1(ILjava/util/ArrayList;ILjava/lang/String;)V

    return-void
.end method
