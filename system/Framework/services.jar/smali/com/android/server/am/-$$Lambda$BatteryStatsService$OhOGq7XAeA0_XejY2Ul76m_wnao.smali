.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryStatsService$OhOGq7XAeA0_XejY2Ul76m_wnao;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$OhOGq7XAeA0_XejY2Ul76m_wnao;->f$0:Lcom/android/server/am/BatteryStatsService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$OhOGq7XAeA0_XejY2Ul76m_wnao;->f$0:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->lambda$noteNetworkStatsEnabled$91$BatteryStatsService()V

    return-void
.end method
