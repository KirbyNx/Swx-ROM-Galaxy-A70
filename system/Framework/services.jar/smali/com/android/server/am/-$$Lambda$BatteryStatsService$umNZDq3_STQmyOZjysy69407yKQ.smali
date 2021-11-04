.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryStatsService$umNZDq3_STQmyOZjysy69407yKQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Landroid/os/WorkSource;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I

.field public final synthetic f$6:J

.field public final synthetic f$7:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$umNZDq3_STQmyOZjysy69407yKQ;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$umNZDq3_STQmyOZjysy69407yKQ;->f$1:Landroid/os/WorkSource;

    iput p3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$umNZDq3_STQmyOZjysy69407yKQ;->f$2:I

    iput-object p4, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$umNZDq3_STQmyOZjysy69407yKQ;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$umNZDq3_STQmyOZjysy69407yKQ;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$umNZDq3_STQmyOZjysy69407yKQ;->f$5:I

    iput-wide p7, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$umNZDq3_STQmyOZjysy69407yKQ;->f$6:J

    iput-wide p9, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$umNZDq3_STQmyOZjysy69407yKQ;->f$7:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$umNZDq3_STQmyOZjysy69407yKQ;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$umNZDq3_STQmyOZjysy69407yKQ;->f$1:Landroid/os/WorkSource;

    iget v2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$umNZDq3_STQmyOZjysy69407yKQ;->f$2:I

    iget-object v3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$umNZDq3_STQmyOZjysy69407yKQ;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$umNZDq3_STQmyOZjysy69407yKQ;->f$4:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$umNZDq3_STQmyOZjysy69407yKQ;->f$5:I

    iget-wide v6, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$umNZDq3_STQmyOZjysy69407yKQ;->f$6:J

    iget-wide v8, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$umNZDq3_STQmyOZjysy69407yKQ;->f$7:J

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStopWakelockFromSource$26$BatteryStatsService(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V

    return-void
.end method
