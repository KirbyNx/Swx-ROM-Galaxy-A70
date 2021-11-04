.class public final synthetic Lcom/android/server/wm/-$$Lambda$MultiWindowFoldController$nnvHKIOYP2dgue2md8V4OgAI5Ms;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$MultiWindowFoldController$nnvHKIOYP2dgue2md8V4OgAI5Ms;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$MultiWindowFoldController$nnvHKIOYP2dgue2md8V4OgAI5Ms;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, p1}, Lcom/android/server/wm/MultiWindowFoldController;->lambda$findDialerTaskLocked$1(Ljava/lang/String;Lcom/android/server/wm/Task;)Z

    move-result p1

    return p1
.end method
