.class public final synthetic Lcom/android/server/wm/-$$Lambda$Task$0uL0RU611D7nrU5byJQm7iBsIdU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$Task$0uL0RU611D7nrU5byJQm7iBsIdU;->f$0:Lcom/android/server/wm/Task;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$Task$0uL0RU611D7nrU5byJQm7iBsIdU;->f$0:Lcom/android/server/wm/Task;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->lambda$performClearTask$2$Task(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
