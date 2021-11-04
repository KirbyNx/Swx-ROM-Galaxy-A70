.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryStatsService$qGmRST659yxHIafaGm7eCGT0aEY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$qGmRST659yxHIafaGm7eCGT0aEY;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-wide p2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$qGmRST659yxHIafaGm7eCGT0aEY;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$qGmRST659yxHIafaGm7eCGT0aEY;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-wide v1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$qGmRST659yxHIafaGm7eCGT0aEY;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->lambda$noteResetGps$69$BatteryStatsService(J)V

    return-void
.end method
