.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$ziCnUvqCJ69Rax2Gcc2c2WPZCR8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

.field public final synthetic f$1:Lcom/android/server/wm/Task;

.field public final synthetic f$2:F

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;Lcom/android/server/wm/Task;FI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$ziCnUvqCJ69Rax2Gcc2c2WPZCR8;->f$0:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$ziCnUvqCJ69Rax2Gcc2c2WPZCR8;->f$1:Lcom/android/server/wm/Task;

    iput p3, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$ziCnUvqCJ69Rax2Gcc2c2WPZCR8;->f$2:F

    iput p4, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$ziCnUvqCJ69Rax2Gcc2c2WPZCR8;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$ziCnUvqCJ69Rax2Gcc2c2WPZCR8;->f$0:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$ziCnUvqCJ69Rax2Gcc2c2WPZCR8;->f$1:Lcom/android/server/wm/Task;

    iget v2, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$ziCnUvqCJ69Rax2Gcc2c2WPZCR8;->f$2:F

    iget v3, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$ziCnUvqCJ69Rax2Gcc2c2WPZCR8;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->lambda$onTaskSplitLayoutChanged$5$TaskOrganizerController$TaskOrganizerCallbacks(Lcom/android/server/wm/Task;FI)V

    return-void
.end method
