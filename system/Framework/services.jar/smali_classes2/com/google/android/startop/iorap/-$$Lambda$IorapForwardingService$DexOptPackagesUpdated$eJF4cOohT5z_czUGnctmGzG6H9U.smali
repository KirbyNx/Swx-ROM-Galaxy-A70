.class public final synthetic Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$DexOptPackagesUpdated$eJF4cOohT5z_czUGnctmGzG6H9U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$DexOptPackagesUpdated$eJF4cOohT5z_czUGnctmGzG6H9U;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lcom/google/android/startop/iorap/IIorap;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$DexOptPackagesUpdated$eJF4cOohT5z_czUGnctmGzG6H9U;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/startop/iorap/IorapForwardingService$DexOptPackagesUpdated;->lambda$onPackagesUpdated$0(Ljava/lang/String;Lcom/google/android/startop/iorap/IIorap;)V

    return-void
.end method
