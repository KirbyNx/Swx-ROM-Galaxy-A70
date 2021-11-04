.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowContainer$Lrhj5ep4zP0u0jJvcsjhu8G2I20;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/-$$Lambda$WindowContainer$Lrhj5ep4zP0u0jJvcsjhu8G2I20;->f$0:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/-$$Lambda$WindowContainer$Lrhj5ep4zP0u0jJvcsjhu8G2I20;->f$0:Z

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, p1}, Lcom/android/server/wm/WindowContainer;->lambda$getTopMostLeafTask$15(ZLcom/android/server/wm/Task;)Z

    move-result p1

    return p1
.end method
