.class public final synthetic Lcom/android/server/usage/-$$Lambda$UsageStatsService$vzfO7VLqevyXqH5dIJvZqzOOYEM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usage/UsageStatsService;

.field public final synthetic f$1:Landroid/app/usage/UsageEvents$Event;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;Landroid/app/usage/UsageEvents$Event;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/-$$Lambda$UsageStatsService$vzfO7VLqevyXqH5dIJvZqzOOYEM;->f$0:Lcom/android/server/usage/UsageStatsService;

    iput-object p2, p0, Lcom/android/server/usage/-$$Lambda$UsageStatsService$vzfO7VLqevyXqH5dIJvZqzOOYEM;->f$1:Landroid/app/usage/UsageEvents$Event;

    iput p3, p0, Lcom/android/server/usage/-$$Lambda$UsageStatsService$vzfO7VLqevyXqH5dIJvZqzOOYEM;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/usage/-$$Lambda$UsageStatsService$vzfO7VLqevyXqH5dIJvZqzOOYEM;->f$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, p0, Lcom/android/server/usage/-$$Lambda$UsageStatsService$vzfO7VLqevyXqH5dIJvZqzOOYEM;->f$1:Landroid/app/usage/UsageEvents$Event;

    iget v2, p0, Lcom/android/server/usage/-$$Lambda$UsageStatsService$vzfO7VLqevyXqH5dIJvZqzOOYEM;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/UsageStatsService;->lambda$reportEvent$1$UsageStatsService(Landroid/app/usage/UsageEvents$Event;I)V

    return-void
.end method
