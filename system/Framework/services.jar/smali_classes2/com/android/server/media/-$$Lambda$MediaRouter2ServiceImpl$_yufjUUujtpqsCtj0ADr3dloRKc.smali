.class public final synthetic Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$_yufjUUujtpqsCtj0ADr3dloRKc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$_yufjUUujtpqsCtj0ADr3dloRKc;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$_yufjUUujtpqsCtj0ADr3dloRKc;

    invoke-direct {v0}, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$_yufjUUujtpqsCtj0ADr3dloRKc;-><init>()V

    sput-object v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$_yufjUUujtpqsCtj0ADr3dloRKc;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$_yufjUUujtpqsCtj0ADr3dloRKc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p3, Landroid/media/MediaRoute2Info;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, v0, v1, p3, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$setRouteVolumeWithRouter2Locked$8(Ljava/lang/Object;JLandroid/media/MediaRoute2Info;I)V

    return-void
.end method
