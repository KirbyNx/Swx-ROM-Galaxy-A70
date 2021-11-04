.class public final synthetic Lcom/android/server/wm/-$$Lambda$RecentTasks$Mi9WYYtyfM2M4ZmugtLpNWIUlP4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$RecentTasks$Mi9WYYtyfM2M4ZmugtLpNWIUlP4;->f$0:Lcom/android/server/wm/Task;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$RecentTasks$Mi9WYYtyfM2M4ZmugtLpNWIUlP4;->f$0:Lcom/android/server/wm/Task;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, p1}, Lcom/android/server/wm/RecentTasks;->lambda$okToRemove$2(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z

    move-result p1

    return p1
.end method
