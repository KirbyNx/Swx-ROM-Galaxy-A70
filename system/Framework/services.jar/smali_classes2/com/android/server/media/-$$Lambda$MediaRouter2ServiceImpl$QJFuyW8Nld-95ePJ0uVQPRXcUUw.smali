.class public final synthetic Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$QJFuyW8Nld-95ePJ0uVQPRXcUUw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/HexConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$QJFuyW8Nld-95ePJ0uVQPRXcUUw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$QJFuyW8Nld-95ePJ0uVQPRXcUUw;

    invoke-direct {v0}, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$QJFuyW8Nld-95ePJ0uVQPRXcUUw;-><init>()V

    sput-object v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$QJFuyW8Nld-95ePJ0uVQPRXcUUw;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$QJFuyW8Nld-95ePJ0uVQPRXcUUw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    check-cast p4, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    check-cast p5, Landroid/media/RoutingSessionInfo;

    check-cast p6, Landroid/media/MediaRoute2Info;

    move-object p0, p1

    move-wide p1, v0

    invoke-static/range {p0 .. p6}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$requestCreateSessionWithManagerLocked$19(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    return-void
.end method
