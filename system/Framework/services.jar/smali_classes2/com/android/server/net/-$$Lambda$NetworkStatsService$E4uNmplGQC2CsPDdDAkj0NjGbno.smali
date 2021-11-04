.class public final synthetic Lcom/android/server/net/-$$Lambda$NetworkStatsService$E4uNmplGQC2CsPDdDAkj0NjGbno;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/net/NetworkStatsService$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/-$$Lambda$NetworkStatsService$E4uNmplGQC2CsPDdDAkj0NjGbno;->f$0:Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/net/-$$Lambda$NetworkStatsService$E4uNmplGQC2CsPDdDAkj0NjGbno;->f$0:Lcom/android/internal/util/IndentingPrintWriter;

    check-cast p1, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;

    invoke-static {v0, p1}, Lcom/android/server/net/NetworkStatsService;->lambda$dump$2(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;)V

    return-void
.end method
