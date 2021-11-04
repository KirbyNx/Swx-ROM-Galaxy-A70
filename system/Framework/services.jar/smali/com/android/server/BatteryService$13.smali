.class Lcom/android/server/BatteryService$13;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    .line 1259
    iput-object p1, p0, Lcom/android/server/BatteryService$13;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1262
    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object v0

    .line 1263
    .local v0, "iqi":Lcom/att/iqi/lib/IQIManager;
    if-eqz v0, :cond_31

    sget-object v1, Lcom/att/iqi/lib/metrics/hw/HW12;->ID:Lcom/att/iqi/lib/Metric$ID;

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/IQIManager;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1264
    new-instance v1, Lcom/att/iqi/lib/metrics/hw/HW12;

    invoke-direct {v1}, Lcom/att/iqi/lib/metrics/hw/HW12;-><init>()V

    .line 1265
    .local v1, "mHw12":Lcom/att/iqi/lib/metrics/hw/HW12;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/att/iqi/lib/metrics/hw/HW12;->setCause(B)Lcom/att/iqi/lib/metrics/hw/HW12;

    .line 1266
    invoke-virtual {v1, v2}, Lcom/att/iqi/lib/metrics/hw/HW12;->setProcessor(B)Lcom/att/iqi/lib/metrics/hw/HW12;

    .line 1267
    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/IQIManager;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    .line 1268
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "submit HW12"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    .end local v1    # "mHw12":Lcom/att/iqi/lib/metrics/hw/HW12;
    :cond_31
    return-void
.end method
