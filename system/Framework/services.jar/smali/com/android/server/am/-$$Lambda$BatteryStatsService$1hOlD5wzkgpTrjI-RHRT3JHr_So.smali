.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryStatsService$1hOlD5wzkgpTrjI-RHRT3JHr_So;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1hOlD5wzkgpTrjI-RHRT3JHr_So;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1hOlD5wzkgpTrjI-RHRT3JHr_So;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1hOlD5wzkgpTrjI-RHRT3JHr_So;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1hOlD5wzkgpTrjI-RHRT3JHr_So;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1hOlD5wzkgpTrjI-RHRT3JHr_So;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1hOlD5wzkgpTrjI-RHRT3JHr_So;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->lambda$noteNetworkInterfaceType$90$BatteryStatsService(Ljava/lang/String;I)V

    return-void
.end method
