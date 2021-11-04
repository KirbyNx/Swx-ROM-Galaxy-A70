.class public final synthetic Lcom/samsung/android/mcf/ble/-$$Lambda$BleAdvertiseData$gmNx-RkOXZ_-8de40Kz_IQwABp4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/ble/BleAdvertiseData;

.field public final synthetic f$1:Landroid/bluetooth/le/AdvertiseData$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/ble/BleAdvertiseData;Landroid/bluetooth/le/AdvertiseData$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/ble/-$$Lambda$BleAdvertiseData$gmNx-RkOXZ_-8de40Kz_IQwABp4;->f$0:Lcom/samsung/android/mcf/ble/BleAdvertiseData;

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/-$$Lambda$BleAdvertiseData$gmNx-RkOXZ_-8de40Kz_IQwABp4;->f$1:Landroid/bluetooth/le/AdvertiseData$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/-$$Lambda$BleAdvertiseData$gmNx-RkOXZ_-8de40Kz_IQwABp4;->f$0:Lcom/samsung/android/mcf/ble/BleAdvertiseData;

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/-$$Lambda$BleAdvertiseData$gmNx-RkOXZ_-8de40Kz_IQwABp4;->f$1:Landroid/bluetooth/le/AdvertiseData$Builder;

    check-cast p1, [B

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->lambda$toAdvertiseData$1$BleAdvertiseData(Landroid/bluetooth/le/AdvertiseData$Builder;[B)V

    return-void
.end method
