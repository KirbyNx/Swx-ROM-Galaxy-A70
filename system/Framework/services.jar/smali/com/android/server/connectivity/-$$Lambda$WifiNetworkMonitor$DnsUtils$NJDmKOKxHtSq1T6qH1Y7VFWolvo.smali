.class public final synthetic Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$DnsUtils$NJDmKOKxHtSq1T6qH1Y7VFWolvo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$DnsUtils$NJDmKOKxHtSq1T6qH1Y7VFWolvo;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$DnsUtils$NJDmKOKxHtSq1T6qH1Y7VFWolvo;

    invoke-direct {v0}, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$DnsUtils$NJDmKOKxHtSq1T6qH1Y7VFWolvo;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$DnsUtils$NJDmKOKxHtSq1T6qH1Y7VFWolvo;->INSTANCE:Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$DnsUtils$NJDmKOKxHtSq1T6qH1Y7VFWolvo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 2

    invoke-static {p1}, Lcom/android/server/connectivity/WifiNetworkMonitor$DnsUtils;->lambda$getAllByName$1(Ljava/lang/Runnable;)V

    return-void
.end method
