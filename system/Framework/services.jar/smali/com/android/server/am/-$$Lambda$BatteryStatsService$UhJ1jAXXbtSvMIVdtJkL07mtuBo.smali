.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryStatsService$UhJ1jAXXbtSvMIVdtJkL07mtuBo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:J

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;IIJJJ)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$UhJ1jAXXbtSvMIVdtJkL07mtuBo;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$UhJ1jAXXbtSvMIVdtJkL07mtuBo;->f$1:I

    iput p3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$UhJ1jAXXbtSvMIVdtJkL07mtuBo;->f$2:I

    iput-wide p4, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$UhJ1jAXXbtSvMIVdtJkL07mtuBo;->f$3:J

    iput-wide p6, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$UhJ1jAXXbtSvMIVdtJkL07mtuBo;->f$4:J

    iput-wide p8, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$UhJ1jAXXbtSvMIVdtJkL07mtuBo;->f$5:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$UhJ1jAXXbtSvMIVdtJkL07mtuBo;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$UhJ1jAXXbtSvMIVdtJkL07mtuBo;->f$1:I

    iget v2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$UhJ1jAXXbtSvMIVdtJkL07mtuBo;->f$2:I

    iget-wide v3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$UhJ1jAXXbtSvMIVdtJkL07mtuBo;->f$3:J

    iget-wide v5, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$UhJ1jAXXbtSvMIVdtJkL07mtuBo;->f$4:J

    iget-wide v7, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$UhJ1jAXXbtSvMIVdtJkL07mtuBo;->f$5:J

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/BatteryStatsService;->lambda$noteJobsDeferred$18$BatteryStatsService(IIJJJ)V

    return-void
.end method
