.class public final synthetic Lcom/android/server/knox/ddar/proxy/-$$Lambda$DualDARComnService$F7EFR5LW0TpExehCilzQrTiAHYw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

.field public final synthetic f$1:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/knox/ddar/proxy/DualDARComnService;Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/ddar/proxy/-$$Lambda$DualDARComnService$F7EFR5LW0TpExehCilzQrTiAHYw;->f$0:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    iput-object p2, p0, Lcom/android/server/knox/ddar/proxy/-$$Lambda$DualDARComnService$F7EFR5LW0TpExehCilzQrTiAHYw;->f$1:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    iput-object p3, p0, Lcom/android/server/knox/ddar/proxy/-$$Lambda$DualDARComnService$F7EFR5LW0TpExehCilzQrTiAHYw;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/knox/ddar/proxy/-$$Lambda$DualDARComnService$F7EFR5LW0TpExehCilzQrTiAHYw;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/knox/ddar/proxy/-$$Lambda$DualDARComnService$F7EFR5LW0TpExehCilzQrTiAHYw;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/knox/ddar/proxy/-$$Lambda$DualDARComnService$F7EFR5LW0TpExehCilzQrTiAHYw;->f$5:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/-$$Lambda$DualDARComnService$F7EFR5LW0TpExehCilzQrTiAHYw;->f$0:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/-$$Lambda$DualDARComnService$F7EFR5LW0TpExehCilzQrTiAHYw;->f$1:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/-$$Lambda$DualDARComnService$F7EFR5LW0TpExehCilzQrTiAHYw;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/-$$Lambda$DualDARComnService$F7EFR5LW0TpExehCilzQrTiAHYw;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/knox/ddar/proxy/-$$Lambda$DualDARComnService$F7EFR5LW0TpExehCilzQrTiAHYw;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/knox/ddar/proxy/-$$Lambda$DualDARComnService$F7EFR5LW0TpExehCilzQrTiAHYw;->f$5:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->lambda$relayAsync$0$DualDARComnService(Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
