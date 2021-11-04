.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryStatsService$Zt5KUW4VxYdaiKuIse94MR15YrQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:J

.field public final synthetic f$7:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;IIIIIJJ)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Zt5KUW4VxYdaiKuIse94MR15YrQ;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Zt5KUW4VxYdaiKuIse94MR15YrQ;->f$1:I

    iput p3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Zt5KUW4VxYdaiKuIse94MR15YrQ;->f$2:I

    iput p4, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Zt5KUW4VxYdaiKuIse94MR15YrQ;->f$3:I

    iput p5, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Zt5KUW4VxYdaiKuIse94MR15YrQ;->f$4:I

    iput p6, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Zt5KUW4VxYdaiKuIse94MR15YrQ;->f$5:I

    iput-wide p7, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Zt5KUW4VxYdaiKuIse94MR15YrQ;->f$6:J

    iput-wide p9, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Zt5KUW4VxYdaiKuIse94MR15YrQ;->f$7:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Zt5KUW4VxYdaiKuIse94MR15YrQ;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Zt5KUW4VxYdaiKuIse94MR15YrQ;->f$1:I

    iget v2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Zt5KUW4VxYdaiKuIse94MR15YrQ;->f$2:I

    iget v3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Zt5KUW4VxYdaiKuIse94MR15YrQ;->f$3:I

    iget v4, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Zt5KUW4VxYdaiKuIse94MR15YrQ;->f$4:I

    iget v5, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Zt5KUW4VxYdaiKuIse94MR15YrQ;->f$5:I

    iget-wide v6, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Zt5KUW4VxYdaiKuIse94MR15YrQ;->f$6:J

    iget-wide v8, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Zt5KUW4VxYdaiKuIse94MR15YrQ;->f$7:J

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/BatteryStatsService;->lambda$setTemperatureNCurrent$107$BatteryStatsService(IIIIIJJ)V

    return-void
.end method
