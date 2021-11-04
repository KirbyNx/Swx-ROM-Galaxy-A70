.class public Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;
.super Ljava/lang/Object;
.source "SDCDeviceController.java"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # I
    .param p3, "listener"    # Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Model : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", DexControlLib Version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2.17.1221"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexControl_"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    .line 34
    return-void
.end method

.method public requestChargingModeUpdate()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public requestConnectedPowerChargerInfoUpdate()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public setFastChargingEnable(Z)V
    .registers 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public updateDexBinaryDownloadingState(Z)V
    .registers 2
    .param p1, "downloading"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;
        }
    .end annotation

    .line 29
    return-void
.end method
