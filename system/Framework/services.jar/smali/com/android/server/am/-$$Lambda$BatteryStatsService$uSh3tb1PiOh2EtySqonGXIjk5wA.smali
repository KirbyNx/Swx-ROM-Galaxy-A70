.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryStatsService$uSh3tb1PiOh2EtySqonGXIjk5wA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$uSh3tb1PiOh2EtySqonGXIjk5wA;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$uSh3tb1PiOh2EtySqonGXIjk5wA;->f$1:I

    iput-wide p3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$uSh3tb1PiOh2EtySqonGXIjk5wA;->f$2:J

    iput-wide p5, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$uSh3tb1PiOh2EtySqonGXIjk5wA;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$uSh3tb1PiOh2EtySqonGXIjk5wA;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$uSh3tb1PiOh2EtySqonGXIjk5wA;->f$1:I

    iget-wide v2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$uSh3tb1PiOh2EtySqonGXIjk5wA;->f$2:J

    iget-wide v4, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$uSh3tb1PiOh2EtySqonGXIjk5wA;->f$3:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartVideo$57$BatteryStatsService(IJJ)V

    return-void
.end method
