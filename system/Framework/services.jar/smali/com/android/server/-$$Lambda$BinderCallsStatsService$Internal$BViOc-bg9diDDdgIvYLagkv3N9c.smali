.class public final synthetic Lcom/android/server/-$$Lambda$BinderCallsStatsService$Internal$BViOc-bg9diDDdgIvYLagkv3N9c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/BinderCallsStatsService$Internal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BinderCallsStatsService$Internal;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$BinderCallsStatsService$Internal$BViOc-bg9diDDdgIvYLagkv3N9c;->f$0:Lcom/android/server/BinderCallsStatsService$Internal;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$BinderCallsStatsService$Internal$BViOc-bg9diDDdgIvYLagkv3N9c;->f$0:Lcom/android/server/BinderCallsStatsService$Internal;

    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->lambda$reportCpuUsage$0$BinderCallsStatsService$Internal()V

    return-void
.end method
