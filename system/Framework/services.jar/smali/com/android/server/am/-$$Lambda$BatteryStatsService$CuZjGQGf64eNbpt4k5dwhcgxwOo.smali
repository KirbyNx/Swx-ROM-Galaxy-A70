.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryStatsService$CuZjGQGf64eNbpt4k5dwhcgxwOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/WorkSource;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:J

.field public final synthetic f$6:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$CuZjGQGf64eNbpt4k5dwhcgxwOo;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$CuZjGQGf64eNbpt4k5dwhcgxwOo;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$CuZjGQGf64eNbpt4k5dwhcgxwOo;->f$2:I

    iput-object p4, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$CuZjGQGf64eNbpt4k5dwhcgxwOo;->f$3:Landroid/os/WorkSource;

    iput-object p5, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$CuZjGQGf64eNbpt4k5dwhcgxwOo;->f$4:Ljava/lang/String;

    iput-wide p6, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$CuZjGQGf64eNbpt4k5dwhcgxwOo;->f$5:J

    iput-wide p8, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$CuZjGQGf64eNbpt4k5dwhcgxwOo;->f$6:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$CuZjGQGf64eNbpt4k5dwhcgxwOo;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$CuZjGQGf64eNbpt4k5dwhcgxwOo;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$CuZjGQGf64eNbpt4k5dwhcgxwOo;->f$2:I

    iget-object v3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$CuZjGQGf64eNbpt4k5dwhcgxwOo;->f$3:Landroid/os/WorkSource;

    iget-object v4, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$CuZjGQGf64eNbpt4k5dwhcgxwOo;->f$4:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$CuZjGQGf64eNbpt4k5dwhcgxwOo;->f$5:J

    iget-wide v7, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$CuZjGQGf64eNbpt4k5dwhcgxwOo;->f$6:J

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWakupAlarm$19$BatteryStatsService(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V

    return-void
.end method
