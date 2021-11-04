.class public final synthetic Lcom/android/server/sepunion/friends/-$$Lambda$FrsServiceImpl$7IHRb86vcGQfGvMQPfjLwj89TBg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sepunion/friends/FrsServiceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/friends/FrsServiceImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/friends/-$$Lambda$FrsServiceImpl$7IHRb86vcGQfGvMQPfjLwj89TBg;->f$0:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/server/sepunion/friends/-$$Lambda$FrsServiceImpl$7IHRb86vcGQfGvMQPfjLwj89TBg;->f$0:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->lambda$7IHRb86vcGQfGvMQPfjLwj89TBg(Lcom/android/server/sepunion/friends/FrsServiceImpl;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
