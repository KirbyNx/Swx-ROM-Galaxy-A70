.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryStatsService$PQCKNGxND_a6xi95_v3u_9JDSKo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;IJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$PQCKNGxND_a6xi95_v3u_9JDSKo;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$PQCKNGxND_a6xi95_v3u_9JDSKo;->f$1:I

    iput-wide p3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$PQCKNGxND_a6xi95_v3u_9JDSKo;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$PQCKNGxND_a6xi95_v3u_9JDSKo;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$PQCKNGxND_a6xi95_v3u_9JDSKo;->f$1:I

    iget-wide v2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$PQCKNGxND_a6xi95_v3u_9JDSKo;->f$2:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/BatteryStatsService;->lambda$noteDualScreenState$38$BatteryStatsService(IJ)V

    return-void
.end method
