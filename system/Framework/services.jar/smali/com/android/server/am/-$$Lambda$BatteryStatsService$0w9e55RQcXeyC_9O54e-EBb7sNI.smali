.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryStatsService$0w9e55RQcXeyC_9O54e-EBb7sNI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$0w9e55RQcXeyC_9O54e-EBb7sNI;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$0w9e55RQcXeyC_9O54e-EBb7sNI;->f$1:I

    iput p3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$0w9e55RQcXeyC_9O54e-EBb7sNI;->f$2:I

    iput-wide p4, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$0w9e55RQcXeyC_9O54e-EBb7sNI;->f$3:J

    iput-wide p6, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$0w9e55RQcXeyC_9O54e-EBb7sNI;->f$4:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$0w9e55RQcXeyC_9O54e-EBb7sNI;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$0w9e55RQcXeyC_9O54e-EBb7sNI;->f$1:I

    iget v2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$0w9e55RQcXeyC_9O54e-EBb7sNI;->f$2:I

    iget-wide v3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$0w9e55RQcXeyC_9O54e-EBb7sNI;->f$3:J

    iget-wide v5, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$0w9e55RQcXeyC_9O54e-EBb7sNI;->f$4:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BatteryStatsService;->lambda$addIsolatedUid$6$BatteryStatsService(IIJJ)V

    return-void
.end method
