.class public final synthetic Lcom/android/server/-$$Lambda$IpSecService$fEohV8w-aKy2H7Pc5nplFrk1PZs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/IpSecService;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/IpSecService;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$IpSecService$fEohV8w-aKy2H7Pc5nplFrk1PZs;->f$0:Lcom/android/server/IpSecService;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$IpSecService$fEohV8w-aKy2H7Pc5nplFrk1PZs;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/-$$Lambda$IpSecService$fEohV8w-aKy2H7Pc5nplFrk1PZs;->f$0:Lcom/android/server/IpSecService;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$IpSecService$fEohV8w-aKy2H7Pc5nplFrk1PZs;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService;->lambda$createTunnelInterface$1$IpSecService(Ljava/lang/String;)V

    return-void
.end method
