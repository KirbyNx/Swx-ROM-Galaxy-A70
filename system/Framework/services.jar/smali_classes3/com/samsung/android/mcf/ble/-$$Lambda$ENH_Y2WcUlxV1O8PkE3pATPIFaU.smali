.class public final synthetic Lcom/samsung/android/mcf/ble/-$$Lambda$ENH_Y2WcUlxV1O8PkE3pATPIFaU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/bluetooth/le/AdvertiseData$Builder;


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/le/AdvertiseData$Builder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/ble/-$$Lambda$ENH_Y2WcUlxV1O8PkE3pATPIFaU;->f$0:Landroid/bluetooth/le/AdvertiseData$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/-$$Lambda$ENH_Y2WcUlxV1O8PkE3pATPIFaU;->f$0:Landroid/bluetooth/le/AdvertiseData$Builder;

    check-cast p1, Landroid/os/ParcelUuid;

    invoke-virtual {v0, p1}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/AdvertiseData$Builder;

    return-void
.end method
