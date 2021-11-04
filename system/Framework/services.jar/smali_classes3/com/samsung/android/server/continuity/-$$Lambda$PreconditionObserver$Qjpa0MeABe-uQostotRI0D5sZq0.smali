.class public final synthetic Lcom/samsung/android/server/continuity/-$$Lambda$PreconditionObserver$Qjpa0MeABe-uQostotRI0D5sZq0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/continuity/PreconditionObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/continuity/PreconditionObserver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/continuity/-$$Lambda$PreconditionObserver$Qjpa0MeABe-uQostotRI0D5sZq0;->f$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/continuity/-$$Lambda$PreconditionObserver$Qjpa0MeABe-uQostotRI0D5sZq0;->f$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->lambda$Qjpa0MeABe-uQostotRI0D5sZq0(Lcom/samsung/android/server/continuity/PreconditionObserver;Z)V

    return-void
.end method
