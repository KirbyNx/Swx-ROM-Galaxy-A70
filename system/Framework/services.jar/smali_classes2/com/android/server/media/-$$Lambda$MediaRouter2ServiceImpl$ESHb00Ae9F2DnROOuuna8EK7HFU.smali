.class public final synthetic Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$ESHb00Ae9F2DnROOuuna8EK7HFU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$ESHb00Ae9F2DnROOuuna8EK7HFU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$ESHb00Ae9F2DnROOuuna8EK7HFU;

    invoke-direct {v0}, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$ESHb00Ae9F2DnROOuuna8EK7HFU;-><init>()V

    sput-object v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$ESHb00Ae9F2DnROOuuna8EK7HFU;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$ESHb00Ae9F2DnROOuuna8EK7HFU;

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

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$getOrCreateUserRecordLocked$25(Ljava/lang/Object;)V

    return-void
.end method
