.class public final synthetic Lcom/samsung/android/hardware/secinputdev/-$$Lambda$SemInputDeviceManagerService$NfGFSdx2IsBTSVP-tkilVJndrD0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getSpenCommandListCallback;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/-$$Lambda$SemInputDeviceManagerService$NfGFSdx2IsBTSVP-tkilVJndrD0;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onValues(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/-$$Lambda$SemInputDeviceManagerService$NfGFSdx2IsBTSVP-tkilVJndrD0;->f$0:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->lambda$getSpenCommandList$3(Ljava/util/ArrayList;ILjava/lang/String;)V

    return-void
.end method
