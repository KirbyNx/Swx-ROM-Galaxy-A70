.class public final synthetic Lcom/android/server/-$$Lambda$BinderCallsStatsService$Internal$5RGGOeZgj4LHO3MBcnS7msbpIyg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/BinderCallsStatsService$Internal;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BinderCallsStatsService$Internal;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$BinderCallsStatsService$Internal$5RGGOeZgj4LHO3MBcnS7msbpIyg;->f$0:Lcom/android/server/BinderCallsStatsService$Internal;

    iput p2, p0, Lcom/android/server/-$$Lambda$BinderCallsStatsService$Internal$5RGGOeZgj4LHO3MBcnS7msbpIyg;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/-$$Lambda$BinderCallsStatsService$Internal$5RGGOeZgj4LHO3MBcnS7msbpIyg;->f$0:Lcom/android/server/BinderCallsStatsService$Internal;

    iget v1, p0, Lcom/android/server/-$$Lambda$BinderCallsStatsService$Internal$5RGGOeZgj4LHO3MBcnS7msbpIyg;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/BinderCallsStatsService$Internal;->lambda$reportCpuUsage$1$BinderCallsStatsService$Internal(I)V

    return-void
.end method
