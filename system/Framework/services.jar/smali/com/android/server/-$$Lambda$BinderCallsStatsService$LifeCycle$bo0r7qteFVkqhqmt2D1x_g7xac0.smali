.class public final synthetic Lcom/android/server/-$$Lambda$BinderCallsStatsService$LifeCycle$bo0r7qteFVkqhqmt2D1x_g7xac0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/BinderCallsStatsService$LifeCycle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BinderCallsStatsService$LifeCycle;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$BinderCallsStatsService$LifeCycle$bo0r7qteFVkqhqmt2D1x_g7xac0;->f$0:Lcom/android/server/BinderCallsStatsService$LifeCycle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$BinderCallsStatsService$LifeCycle$bo0r7qteFVkqhqmt2D1x_g7xac0;->f$0:Lcom/android/server/BinderCallsStatsService$LifeCycle;

    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$LifeCycle;->lambda$onBootPhase$0$BinderCallsStatsService$LifeCycle()V

    return-void
.end method
