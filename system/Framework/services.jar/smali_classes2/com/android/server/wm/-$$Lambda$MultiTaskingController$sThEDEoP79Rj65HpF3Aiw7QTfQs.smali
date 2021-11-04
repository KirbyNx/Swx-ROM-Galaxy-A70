.class public final synthetic Lcom/android/server/wm/-$$Lambda$MultiTaskingController$sThEDEoP79Rj65HpF3Aiw7QTfQs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingController;

.field public final synthetic f$1:Lcom/android/server/wm/Task;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/Task;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$sThEDEoP79Rj65HpF3Aiw7QTfQs;->f$0:Lcom/android/server/wm/MultiTaskingController;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$sThEDEoP79Rj65HpF3Aiw7QTfQs;->f$1:Lcom/android/server/wm/Task;

    iput-boolean p3, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$sThEDEoP79Rj65HpF3Aiw7QTfQs;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$sThEDEoP79Rj65HpF3Aiw7QTfQs;->f$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$sThEDEoP79Rj65HpF3Aiw7QTfQs;->f$1:Lcom/android/server/wm/Task;

    iget-boolean v2, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$sThEDEoP79Rj65HpF3Aiw7QTfQs;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/MultiTaskingController;->lambda$minimizeTaskLocked$2$MultiTaskingController(Lcom/android/server/wm/Task;Z)V

    return-void
.end method
