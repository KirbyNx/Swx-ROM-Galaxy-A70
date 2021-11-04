.class public final synthetic Lcom/samsung/android/hardware/secinputdev/-$$Lambda$SemInputDeviceManagerService$-sVXTUafejbm3ouYEwqIJ6K3wCw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getKeyCodePressedCallback;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/-$$Lambda$SemInputDeviceManagerService$-sVXTUafejbm3ouYEwqIJ6K3wCw;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onValues(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/-$$Lambda$SemInputDeviceManagerService$-sVXTUafejbm3ouYEwqIJ6K3wCw;->f$0:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->lambda$getKeyCodePressed$0(Ljava/util/ArrayList;ILjava/lang/String;)V

    return-void
.end method
