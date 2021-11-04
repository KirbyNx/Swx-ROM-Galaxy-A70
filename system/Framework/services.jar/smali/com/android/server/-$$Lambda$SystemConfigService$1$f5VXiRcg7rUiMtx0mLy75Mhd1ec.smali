.class public final synthetic Lcom/android/server/-$$Lambda$SystemConfigService$1$f5VXiRcg7rUiMtx0mLy75Mhd1ec;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$SystemConfigService$1$f5VXiRcg7rUiMtx0mLy75Mhd1ec;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/-$$Lambda$SystemConfigService$1$f5VXiRcg7rUiMtx0mLy75Mhd1ec;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$SystemConfigService$1$f5VXiRcg7rUiMtx0mLy75Mhd1ec;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$SystemConfigService$1$f5VXiRcg7rUiMtx0mLy75Mhd1ec;->INSTANCE:Lcom/android/server/-$$Lambda$SystemConfigService$1$f5VXiRcg7rUiMtx0mLy75Mhd1ec;

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

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/android/server/SystemConfigService$1;->lambda$getDisabledUntilUsedPreinstalledCarrierAssociatedApps$1(Ljava/util/Map$Entry;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
