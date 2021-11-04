.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryStatsService$yTp1hDBD5s8o3OXgpEIZu40ihro;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z

.field public final synthetic f$5:J

.field public final synthetic f$6:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;ZJJ)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$yTp1hDBD5s8o3OXgpEIZu40ihro;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$yTp1hDBD5s8o3OXgpEIZu40ihro;->f$1:I

    iput-object p3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$yTp1hDBD5s8o3OXgpEIZu40ihro;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$yTp1hDBD5s8o3OXgpEIZu40ihro;->f$3:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$yTp1hDBD5s8o3OXgpEIZu40ihro;->f$4:Z

    iput-wide p6, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$yTp1hDBD5s8o3OXgpEIZu40ihro;->f$5:J

    iput-wide p8, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$yTp1hDBD5s8o3OXgpEIZu40ihro;->f$6:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$yTp1hDBD5s8o3OXgpEIZu40ihro;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$yTp1hDBD5s8o3OXgpEIZu40ihro;->f$1:I

    iget-object v2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$yTp1hDBD5s8o3OXgpEIZu40ihro;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$yTp1hDBD5s8o3OXgpEIZu40ihro;->f$3:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$yTp1hDBD5s8o3OXgpEIZu40ihro;->f$4:Z

    iget-wide v5, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$yTp1hDBD5s8o3OXgpEIZu40ihro;->f$5:J

    iget-wide v7, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$yTp1hDBD5s8o3OXgpEIZu40ihro;->f$6:J

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/BatteryStatsService;->lambda$updateBatteryStatsOnActivityUsage$113$BatteryStatsService(ILjava/lang/String;Ljava/lang/String;ZJJ)V

    return-void
.end method
