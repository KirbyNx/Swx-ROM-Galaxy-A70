.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryStatsService$1IifnfFqdQFE1FlRfggyOC0W7Rg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;ZJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1IifnfFqdQFE1FlRfggyOC0W7Rg;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-boolean p2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1IifnfFqdQFE1FlRfggyOC0W7Rg;->f$1:Z

    iput-wide p3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1IifnfFqdQFE1FlRfggyOC0W7Rg;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1IifnfFqdQFE1FlRfggyOC0W7Rg;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-boolean v1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1IifnfFqdQFE1FlRfggyOC0W7Rg;->f$1:Z

    iget-wide v2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1IifnfFqdQFE1FlRfggyOC0W7Rg;->f$2:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/BatteryStatsService;->lambda$noteInteractive$43$BatteryStatsService(ZJ)V

    return-void
.end method
