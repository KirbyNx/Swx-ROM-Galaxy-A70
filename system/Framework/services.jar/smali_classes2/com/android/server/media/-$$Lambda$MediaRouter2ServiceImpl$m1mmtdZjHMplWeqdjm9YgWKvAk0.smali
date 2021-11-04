.class public final synthetic Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$m1mmtdZjHMplWeqdjm9YgWKvAk0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$m1mmtdZjHMplWeqdjm9YgWKvAk0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$m1mmtdZjHMplWeqdjm9YgWKvAk0;

    invoke-direct {v0}, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$m1mmtdZjHMplWeqdjm9YgWKvAk0;-><init>()V

    sput-object v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$m1mmtdZjHMplWeqdjm9YgWKvAk0;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$m1mmtdZjHMplWeqdjm9YgWKvAk0;

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

    invoke-static {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$unregisterRouter2Locked$5(Ljava/lang/Object;)V

    return-void
.end method
