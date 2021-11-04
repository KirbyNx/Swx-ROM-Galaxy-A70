.class public final synthetic Lcom/android/server/wm/-$$Lambda$AppPairController$-BpFdj2Rxhu81bykksPxK_sfSfI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AppPairController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppPairController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$AppPairController$-BpFdj2Rxhu81bykksPxK_sfSfI;->f$0:Lcom/android/server/wm/AppPairController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$AppPairController$-BpFdj2Rxhu81bykksPxK_sfSfI;->f$0:Lcom/android/server/wm/AppPairController;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppPairController;->lambda$clearAllPairActivityModeLocked$4$AppPairController(Lcom/android/server/wm/Task;)V

    return-void
.end method
