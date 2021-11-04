.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryStatsService$1UB2TLahyK4niVCEad3bKHxVspg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:J

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;IZJJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1UB2TLahyK4niVCEad3bKHxVspg;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1UB2TLahyK4niVCEad3bKHxVspg;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1UB2TLahyK4niVCEad3bKHxVspg;->f$2:Z

    iput-wide p4, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1UB2TLahyK4niVCEad3bKHxVspg;->f$3:J

    iput-wide p6, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1UB2TLahyK4niVCEad3bKHxVspg;->f$4:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1UB2TLahyK4niVCEad3bKHxVspg;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1UB2TLahyK4niVCEad3bKHxVspg;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1UB2TLahyK4niVCEad3bKHxVspg;->f$2:Z

    iget-wide v3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1UB2TLahyK4niVCEad3bKHxVspg;->f$3:J

    iget-wide v5, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$1UB2TLahyK4niVCEad3bKHxVspg;->f$4:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiSupplicantStateChanged$76$BatteryStatsService(IZJJ)V

    return-void
.end method
