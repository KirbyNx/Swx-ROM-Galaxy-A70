.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryStatsService$DgjFBCsITV0HiT694IUDW8N7IFw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Ljava/util/List;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$DgjFBCsITV0HiT694IUDW8N7IFw;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$DgjFBCsITV0HiT694IUDW8N7IFw;->f$1:Ljava/util/List;

    iput-wide p3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$DgjFBCsITV0HiT694IUDW8N7IFw;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$DgjFBCsITV0HiT694IUDW8N7IFw;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$DgjFBCsITV0HiT694IUDW8N7IFw;->f$1:Ljava/util/List;

    iget-wide v2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$DgjFBCsITV0HiT694IUDW8N7IFw;->f$2:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/BatteryStatsService;->lambda$updateForegroundAppEnergyInfo$108$BatteryStatsService(Ljava/util/List;J)V

    return-void
.end method
