.class Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;
.super Ljava/lang/Object;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Sample"
.end annotation


# instance fields
.field public temperature:F

.field final synthetic this$1:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

.field public time:J


# direct methods
.method constructor <init>(Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;JF)V
    .registers 5
    .param p1, "this$1"    # Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;
    .param p2, "time"    # J
    .param p4, "temperature"    # F

    .line 1282
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->this$1:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1283
    iput-wide p2, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->time:J

    .line 1284
    iput p4, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    .line 1285
    return-void
.end method
