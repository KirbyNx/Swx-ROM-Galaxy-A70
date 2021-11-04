.class final Lcom/android/server/am/Pageboost$HeimdalldProxy;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeimdalldProxy"
.end annotation


# static fields
.field private static conn:Lcom/android/server/am/Pageboost$DaemonConnector; = null

.field private static final socketName:Ljava/lang/String; = "heimdalld"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3600()V
    .registers 0

    .line 2745
    invoke-static {}, Lcom/android/server/am/Pageboost$HeimdalldProxy;->init()V

    return-void
.end method

.method private static init()V
    .registers 2

    .line 2750
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "heimdall init proxy!!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    new-instance v0, Lcom/android/server/am/Pageboost$DaemonConnector;

    const-string/jumbo v1, "heimdalld"

    invoke-direct {v0, v1}, Lcom/android/server/am/Pageboost$DaemonConnector;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/Pageboost$HeimdalldProxy;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    .line 2752
    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$DaemonConnector;->getSocket()Landroid/net/LocalSocket;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/Pageboost$HeimdalldProxy;->initReceiver(Landroid/net/LocalSocket;)V

    .line 2761
    return-void
.end method

.method private static initReceiver(Landroid/net/LocalSocket;)V
    .registers 3
    .param p0, "sSocket"    # Landroid/net/LocalSocket;

    .line 2764
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "heimdalldProxy; initReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    if-nez p0, :cond_17

    .line 2766
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "heimdalldProxy: socket not ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    return-void

    .line 2769
    :cond_17
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/Pageboost$HeimdalldProxy$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/Pageboost$HeimdalldProxy$1;-><init>(Landroid/net/LocalSocket;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2788
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2789
    return-void
.end method
