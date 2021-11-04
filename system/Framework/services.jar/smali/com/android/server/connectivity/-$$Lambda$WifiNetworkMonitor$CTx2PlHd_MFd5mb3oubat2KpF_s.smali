.class public final synthetic Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$CTx2PlHd_MFd5mb3oubat2KpF_s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$CTx2PlHd_MFd5mb3oubat2KpF_s;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$CTx2PlHd_MFd5mb3oubat2KpF_s;

    invoke-direct {v0}, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$CTx2PlHd_MFd5mb3oubat2KpF_s;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$CTx2PlHd_MFd5mb3oubat2KpF_s;->INSTANCE:Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$CTx2PlHd_MFd5mb3oubat2KpF_s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/concurrent/Future;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->lambda$sendMultiParallelHttpAndHttpsProbes$2(Ljava/util/concurrent/Future;)V

    return-void
.end method
