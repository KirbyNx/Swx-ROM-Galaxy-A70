.class public final synthetic Lcom/android/server/-$$Lambda$ConnectivityService$tg9HG57kURV1-kXQoQzYgwIChsk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$ConnectivityService$tg9HG57kURV1-kXQoQzYgwIChsk;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/-$$Lambda$ConnectivityService$tg9HG57kURV1-kXQoQzYgwIChsk;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$ConnectivityService$tg9HG57kURV1-kXQoQzYgwIChsk;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$ConnectivityService$tg9HG57kURV1-kXQoQzYgwIChsk;->INSTANCE:Lcom/android/server/-$$Lambda$ConnectivityService$tg9HG57kURV1-kXQoQzYgwIChsk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/net/RouteInfo;

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->lambda$updateRoutes$10(Landroid/net/RouteInfo;)Landroid/net/RouteInfo$RouteKey;

    move-result-object p1

    return-object p1
.end method
