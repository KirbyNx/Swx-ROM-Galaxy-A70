.class public final synthetic Lcom/android/server/-$$Lambda$ConnectivityService$JY3Fsf9qJWzwZET3dVIbTV1rp4M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$ConnectivityService$JY3Fsf9qJWzwZET3dVIbTV1rp4M;->f$0:Lcom/android/server/ConnectivityService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$ConnectivityService$JY3Fsf9qJWzwZET3dVIbTV1rp4M;->f$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService;->lambda$setUnderlyingNetworksForVpn$11$ConnectivityService()V

    return-void
.end method
