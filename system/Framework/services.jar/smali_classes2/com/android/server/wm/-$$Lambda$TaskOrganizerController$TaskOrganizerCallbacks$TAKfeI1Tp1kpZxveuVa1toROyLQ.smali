.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$TAKfeI1Tp1kpZxveuVa1toROyLQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

.field public final synthetic f$1:Lcom/android/server/wm/Task;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;Lcom/android/server/wm/Task;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$TAKfeI1Tp1kpZxveuVa1toROyLQ;->f$0:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$TAKfeI1Tp1kpZxveuVa1toROyLQ;->f$1:Lcom/android/server/wm/Task;

    iput-boolean p3, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$TAKfeI1Tp1kpZxveuVa1toROyLQ;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$TAKfeI1Tp1kpZxveuVa1toROyLQ;->f$0:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$TAKfeI1Tp1kpZxveuVa1toROyLQ;->f$1:Lcom/android/server/wm/Task;

    iget-boolean v2, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$TAKfeI1Tp1kpZxveuVa1toROyLQ;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->lambda$onTaskRemoteAnimationStarted$4$TaskOrganizerController$TaskOrganizerCallbacks(Lcom/android/server/wm/Task;Z)V

    return-void
.end method
