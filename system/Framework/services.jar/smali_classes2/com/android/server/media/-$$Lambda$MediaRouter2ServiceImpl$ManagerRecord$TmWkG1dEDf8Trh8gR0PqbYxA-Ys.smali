.class public final synthetic Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$ManagerRecord$TmWkG1dEDf8Trh8gR0PqbYxA-Ys;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$ManagerRecord$TmWkG1dEDf8Trh8gR0PqbYxA-Ys;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$ManagerRecord$TmWkG1dEDf8Trh8gR0PqbYxA-Ys;

    invoke-direct {v0}, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$ManagerRecord$TmWkG1dEDf8Trh8gR0PqbYxA-Ys;-><init>()V

    sput-object v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$ManagerRecord$TmWkG1dEDf8Trh8gR0PqbYxA-Ys;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$ManagerRecord$TmWkG1dEDf8Trh8gR0PqbYxA-Ys;

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

    invoke-static {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->lambda$startScan$0(Ljava/lang/Object;)V

    return-void
.end method
