.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStack$JQMonqJW6GIeB5raoSYCuMnK3zg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityStack;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityStack;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$JQMonqJW6GIeB5raoSYCuMnK3zg;->f$0:Lcom/android/server/wm/ActivityStack;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$JQMonqJW6GIeB5raoSYCuMnK3zg;->f$0:Lcom/android/server/wm/ActivityStack;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->lambda$switchUser$2$ActivityStack(Lcom/android/server/wm/Task;)V

    return-void
.end method
