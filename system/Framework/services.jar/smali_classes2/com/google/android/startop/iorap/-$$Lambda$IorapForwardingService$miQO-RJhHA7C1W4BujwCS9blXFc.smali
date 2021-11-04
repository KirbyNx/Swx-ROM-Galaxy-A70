.class public final synthetic Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$miQO-RJhHA7C1W4BujwCS9blXFc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/startop/iorap/IorapForwardingService;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/startop/iorap/IorapForwardingService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$miQO-RJhHA7C1W4BujwCS9blXFc;->f$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    return-void
.end method


# virtual methods
.method public final run(Lcom/google/android/startop/iorap/IIorap;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$miQO-RJhHA7C1W4BujwCS9blXFc;->f$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-virtual {v0, p1}, Lcom/google/android/startop/iorap/IorapForwardingService;->lambda$connectToRemoteAndConfigureLocked$0$IorapForwardingService(Lcom/google/android/startop/iorap/IIorap;)V

    return-void
.end method
