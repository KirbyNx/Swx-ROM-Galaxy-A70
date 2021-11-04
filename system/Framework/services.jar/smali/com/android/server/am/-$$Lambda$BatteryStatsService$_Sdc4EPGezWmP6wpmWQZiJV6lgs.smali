.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryStatsService$_Sdc4EPGezWmP6wpmWQZiJV6lgs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Landroid/os/WorkSource;

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:Landroid/os/WorkSource;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJLandroid/os/WorkSource;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$_Sdc4EPGezWmP6wpmWQZiJV6lgs;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$_Sdc4EPGezWmP6wpmWQZiJV6lgs;->f$1:Landroid/os/WorkSource;

    iput-wide p3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$_Sdc4EPGezWmP6wpmWQZiJV6lgs;->f$2:J

    iput-wide p5, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$_Sdc4EPGezWmP6wpmWQZiJV6lgs;->f$3:J

    iput-object p7, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$_Sdc4EPGezWmP6wpmWQZiJV6lgs;->f$4:Landroid/os/WorkSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$_Sdc4EPGezWmP6wpmWQZiJV6lgs;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$_Sdc4EPGezWmP6wpmWQZiJV6lgs;->f$1:Landroid/os/WorkSource;

    iget-wide v2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$_Sdc4EPGezWmP6wpmWQZiJV6lgs;->f$2:J

    iget-wide v4, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$_Sdc4EPGezWmP6wpmWQZiJV6lgs;->f$3:J

    iget-object v6, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$_Sdc4EPGezWmP6wpmWQZiJV6lgs;->f$4:Landroid/os/WorkSource;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiRunning$72$BatteryStatsService(Landroid/os/WorkSource;JJLandroid/os/WorkSource;)V

    return-void
.end method
