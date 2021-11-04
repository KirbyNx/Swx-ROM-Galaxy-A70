.class public final synthetic Lcom/android/server/display/-$$Lambda$AdaptiveBrightnessStatsTracker$HEnpqUomoM_7p64CLU6TYc2O5Ec;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/-$$Lambda$AdaptiveBrightnessStatsTracker$HEnpqUomoM_7p64CLU6TYc2O5Ec;->f$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    return-void
.end method


# virtual methods
.method public final elapsedTimeMillis()J
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/-$$Lambda$AdaptiveBrightnessStatsTracker$HEnpqUomoM_7p64CLU6TYc2O5Ec;->f$0:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->lambda$new$0$AdaptiveBrightnessStatsTracker()J

    move-result-wide v0

    return-wide v0
.end method
