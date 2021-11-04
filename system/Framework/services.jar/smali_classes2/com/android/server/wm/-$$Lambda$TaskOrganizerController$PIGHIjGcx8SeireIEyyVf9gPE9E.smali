.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$PIGHIjGcx8SeireIEyyVf9gPE9E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskOrganizerController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskOrganizerController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$PIGHIjGcx8SeireIEyyVf9gPE9E;->f$0:Lcom/android/server/wm/TaskOrganizerController;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$PIGHIjGcx8SeireIEyyVf9gPE9E;->f$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskOrganizerController;->lambda$dispatchTaskInfoChanged$2$TaskOrganizerController(I)Z

    move-result p1

    return p1
.end method
