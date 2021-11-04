.class public final synthetic Lcom/samsung/android/mcf/-$$Lambda$AHEMFV-W_1Vdu4s6NqXzBzTqOxo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/-$$Lambda$AHEMFV-W_1Vdu4s6NqXzBzTqOxo;->f$0:Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/-$$Lambda$AHEMFV-W_1Vdu4s6NqXzBzTqOxo;->f$0:Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;->onCatchMcfServiceStateChanged(II)Z

    move-result p1

    return p1
.end method
