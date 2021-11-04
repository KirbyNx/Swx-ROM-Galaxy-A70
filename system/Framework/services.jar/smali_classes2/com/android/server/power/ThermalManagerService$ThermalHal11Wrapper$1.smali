.class Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;
.super Landroid/hardware/thermal/V1_1/IThermalCallback$Stub;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;


# direct methods
.method constructor <init>(Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    .line 813
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    invoke-direct {p0}, Landroid/hardware/thermal/V1_1/IThermalCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyThrottling(ZLandroid/hardware/thermal/V1_0/Temperature;)V
    .registers 8
    .param p1, "isThrottling"    # Z
    .param p2, "temperature"    # Landroid/hardware/thermal/V1_0/Temperature;

    .line 817
    new-instance v0, Landroid/os/Temperature;

    iget v1, p2, Landroid/hardware/thermal/V1_0/Temperature;->currentValue:F

    iget v2, p2, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    iget-object v3, p2, Landroid/hardware/thermal/V1_0/Temperature;->name:Ljava/lang/String;

    .line 819
    if-eqz p1, :cond_c

    const/4 v4, 0x3

    goto :goto_d

    .line 820
    :cond_c
    const/4 v4, 0x0

    :goto_d
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    .line 821
    .local v0, "thermalSvcTemp":Landroid/os/Temperature;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 823
    .local v1, "token":J
    :try_start_14
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    iget-object v3, v3, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;

    invoke-interface {v3, v0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;->onValues(Landroid/os/Temperature;)V
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_20

    .line 825
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 826
    nop

    .line 827
    return-void

    .line 825
    :catchall_20
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 826
    throw v3
.end method
