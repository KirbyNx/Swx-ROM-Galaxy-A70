.class public final synthetic Lcom/android/server/-$$Lambda$ConnectivityService$zuEA9OVbdPNWWuifMhPmMRpNGUA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$ConnectivityService$zuEA9OVbdPNWWuifMhPmMRpNGUA;->f$0:Lcom/android/server/ConnectivityService;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$ConnectivityService$zuEA9OVbdPNWWuifMhPmMRpNGUA;->f$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService;->lambda$factoryReset$12$ConnectivityService()V

    return-void
.end method
