.class public final synthetic Lcom/android/server/wm/-$$Lambda$RootWindowContainer$A2XBJOoO37QKs8UlIHb6L2UUkT8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RootWindowContainer;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$A2XBJOoO37QKs8UlIHb6L2UUkT8;->f$0:Lcom/android/server/wm/RootWindowContainer;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$A2XBJOoO37QKs8UlIHb6L2UUkT8;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$A2XBJOoO37QKs8UlIHb6L2UUkT8;->f$0:Lcom/android/server/wm/RootWindowContainer;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$A2XBJOoO37QKs8UlIHb6L2UUkT8;->f$1:I

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$lockAllProfileTasks$15$RootWindowContainer(ILcom/android/server/wm/Task;)V

    return-void
.end method
