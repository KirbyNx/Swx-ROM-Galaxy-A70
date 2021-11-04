.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryStatsService$dXrDHML6XRPY_wQZd8k739WJpJU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Landroid/os/WorkSource;

.field public final synthetic f$2:Landroid/os/WorkSource;

.field public final synthetic f$3:J

.field public final synthetic f$4:J

.field public final synthetic f$5:Landroid/os/WorkSource;

.field public final synthetic f$6:Landroid/os/WorkSource;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;Landroid/os/WorkSource;JJLandroid/os/WorkSource;Landroid/os/WorkSource;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$dXrDHML6XRPY_wQZd8k739WJpJU;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$dXrDHML6XRPY_wQZd8k739WJpJU;->f$1:Landroid/os/WorkSource;

    iput-object p3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$dXrDHML6XRPY_wQZd8k739WJpJU;->f$2:Landroid/os/WorkSource;

    iput-wide p4, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$dXrDHML6XRPY_wQZd8k739WJpJU;->f$3:J

    iput-wide p6, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$dXrDHML6XRPY_wQZd8k739WJpJU;->f$4:J

    iput-object p8, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$dXrDHML6XRPY_wQZd8k739WJpJU;->f$5:Landroid/os/WorkSource;

    iput-object p9, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$dXrDHML6XRPY_wQZd8k739WJpJU;->f$6:Landroid/os/WorkSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$dXrDHML6XRPY_wQZd8k739WJpJU;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$dXrDHML6XRPY_wQZd8k739WJpJU;->f$1:Landroid/os/WorkSource;

    iget-object v2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$dXrDHML6XRPY_wQZd8k739WJpJU;->f$2:Landroid/os/WorkSource;

    iget-wide v3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$dXrDHML6XRPY_wQZd8k739WJpJU;->f$3:J

    iget-wide v5, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$dXrDHML6XRPY_wQZd8k739WJpJU;->f$4:J

    iget-object v7, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$dXrDHML6XRPY_wQZd8k739WJpJU;->f$5:Landroid/os/WorkSource;

    iget-object v8, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$dXrDHML6XRPY_wQZd8k739WJpJU;->f$6:Landroid/os/WorkSource;

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiRunningChanged$73$BatteryStatsService(Landroid/os/WorkSource;Landroid/os/WorkSource;JJLandroid/os/WorkSource;Landroid/os/WorkSource;)V

    return-void
.end method
