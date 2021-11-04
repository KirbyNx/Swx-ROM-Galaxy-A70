.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryStatsService$Z62At9lIV_IWOgupaSRYpdnc6Ws;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Z62At9lIV_IWOgupaSRYpdnc6Ws;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Z62At9lIV_IWOgupaSRYpdnc6Ws;->f$1:I

    iput-object p3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Z62At9lIV_IWOgupaSRYpdnc6Ws;->f$2:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Z62At9lIV_IWOgupaSRYpdnc6Ws;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Z62At9lIV_IWOgupaSRYpdnc6Ws;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Z62At9lIV_IWOgupaSRYpdnc6Ws;->f$1:I

    iget-object v2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Z62At9lIV_IWOgupaSRYpdnc6Ws;->f$2:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Z62At9lIV_IWOgupaSRYpdnc6Ws;->f$3:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiState$75$BatteryStatsService(ILjava/lang/String;J)V

    return-void
.end method
