.class public final synthetic Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$hrUGlaIwjtWiqXsp8f2Cg90flDE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$hrUGlaIwjtWiqXsp8f2Cg90flDE;->f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$hrUGlaIwjtWiqXsp8f2Cg90flDE;->f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->lambda$sendBroadcastToNtpServices$6$DateTimePolicy()V

    return-void
.end method
