.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryStatsService$ZJXFaxQ8fHWxmwMhvJHpIDwbCuI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ZJXFaxQ8fHWxmwMhvJHpIDwbCuI;->f$0:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ZJXFaxQ8fHWxmwMhvJHpIDwbCuI;->f$0:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->lambda$awaitCompletion$0(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
