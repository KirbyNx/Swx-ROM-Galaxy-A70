.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryStatsService$_nikpQPwCtYGZgtGxgUWkLCzbcY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$_nikpQPwCtYGZgtGxgUWkLCzbcY;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$_nikpQPwCtYGZgtGxgUWkLCzbcY;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$_nikpQPwCtYGZgtGxgUWkLCzbcY;->f$2:I

    iput-wide p4, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$_nikpQPwCtYGZgtGxgUWkLCzbcY;->f$3:J

    iput-wide p6, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$_nikpQPwCtYGZgtGxgUWkLCzbcY;->f$4:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$_nikpQPwCtYGZgtGxgUWkLCzbcY;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$_nikpQPwCtYGZgtGxgUWkLCzbcY;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$_nikpQPwCtYGZgtGxgUWkLCzbcY;->f$2:I

    iget-wide v3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$_nikpQPwCtYGZgtGxgUWkLCzbcY;->f$3:J

    iget-wide v5, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$_nikpQPwCtYGZgtGxgUWkLCzbcY;->f$4:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteProcessAnr$10$BatteryStatsService(Ljava/lang/String;IJJ)V

    return-void
.end method
