.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryStatsService$B2G04pGXnkHp_oO0I4ejNH7F7uc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Landroid/os/SemModemActivityInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/SemModemActivityInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$B2G04pGXnkHp_oO0I4ejNH7F7uc;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$B2G04pGXnkHp_oO0I4ejNH7F7uc;->f$1:Landroid/os/SemModemActivityInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$B2G04pGXnkHp_oO0I4ejNH7F7uc;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$B2G04pGXnkHp_oO0I4ejNH7F7uc;->f$1:Landroid/os/SemModemActivityInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/am/BatteryStatsService;->lambda$updateSemModemActivityInfo$110$BatteryStatsService(Landroid/os/SemModemActivityInfo;)V

    return-void
.end method
