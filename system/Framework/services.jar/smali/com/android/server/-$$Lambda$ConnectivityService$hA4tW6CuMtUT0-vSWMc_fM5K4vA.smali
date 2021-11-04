.class public final synthetic Lcom/android/server/-$$Lambda$ConnectivityService$hA4tW6CuMtUT0-vSWMc_fM5K4vA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ConnectivityService;

.field public final synthetic f$1:Landroid/net/Network;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$ConnectivityService$hA4tW6CuMtUT0-vSWMc_fM5K4vA;->f$0:Lcom/android/server/ConnectivityService;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$ConnectivityService$hA4tW6CuMtUT0-vSWMc_fM5K4vA;->f$1:Landroid/net/Network;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/-$$Lambda$ConnectivityService$hA4tW6CuMtUT0-vSWMc_fM5K4vA;->f$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$ConnectivityService$hA4tW6CuMtUT0-vSWMc_fM5K4vA;->f$1:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->lambda$startCaptivePortalApp$5$ConnectivityService(Landroid/net/Network;)V

    return-void
.end method
