.class public final synthetic Lcom/android/server/usage/-$$Lambda$UsageStatsService$jh2WnMPT3AedwUmJy7Idgz432JQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usage/UsageStatsService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/-$$Lambda$UsageStatsService$jh2WnMPT3AedwUmJy7Idgz432JQ;->f$0:Lcom/android/server/usage/UsageStatsService;

    iput p2, p0, Lcom/android/server/usage/-$$Lambda$UsageStatsService$jh2WnMPT3AedwUmJy7Idgz432JQ;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/usage/-$$Lambda$UsageStatsService$jh2WnMPT3AedwUmJy7Idgz432JQ;->f$0:Lcom/android/server/usage/UsageStatsService;

    iget v1, p0, Lcom/android/server/usage/-$$Lambda$UsageStatsService$jh2WnMPT3AedwUmJy7Idgz432JQ;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsService;->lambda$onNewUpdate$0$UsageStatsService(I)V

    return-void
.end method
