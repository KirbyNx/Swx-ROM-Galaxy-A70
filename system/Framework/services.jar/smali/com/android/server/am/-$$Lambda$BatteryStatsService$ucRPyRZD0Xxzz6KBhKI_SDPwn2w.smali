.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryStatsService$ucRPyRZD0Xxzz6KBhKI_SDPwn2w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ucRPyRZD0Xxzz6KBhKI_SDPwn2w;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ucRPyRZD0Xxzz6KBhKI_SDPwn2w;->f$1:I

    iput p3, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ucRPyRZD0Xxzz6KBhKI_SDPwn2w;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ucRPyRZD0Xxzz6KBhKI_SDPwn2w;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ucRPyRZD0Xxzz6KBhKI_SDPwn2w;->f$1:I

    iget v2, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ucRPyRZD0Xxzz6KBhKI_SDPwn2w;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->lambda$removeIsolatedUid$7$BatteryStatsService(II)V

    return-void
.end method
