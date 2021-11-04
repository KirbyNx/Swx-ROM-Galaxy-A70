.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryStatsService$eKG_cK_ZgwFO9PNl2S48EFCf_RM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Landroid/os/AudioOutEnergyInfo;

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/AudioOutEnergyInfo;JJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$eKG_cK_ZgwFO9PNl2S48EFCf_RM;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$eKG_cK_ZgwFO9PNl2S48EFCf_RM;->f$1:Landroid/os/AudioOutEnergyInfo;

    iput-wide p3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$eKG_cK_ZgwFO9PNl2S48EFCf_RM;->f$2:J

    iput-wide p5, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$eKG_cK_ZgwFO9PNl2S48EFCf_RM;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$eKG_cK_ZgwFO9PNl2S48EFCf_RM;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$eKG_cK_ZgwFO9PNl2S48EFCf_RM;->f$1:Landroid/os/AudioOutEnergyInfo;

    iget-wide v2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$eKG_cK_ZgwFO9PNl2S48EFCf_RM;->f$2:J

    iget-wide v4, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$eKG_cK_ZgwFO9PNl2S48EFCf_RM;->f$3:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/BatteryStatsService;->lambda$updateAudioOutEnergyInfo$109$BatteryStatsService(Landroid/os/AudioOutEnergyInfo;JJ)V

    return-void
.end method
