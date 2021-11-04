.class public final synthetic Lcom/samsung/android/server/audio/-$$Lambda$8GbBZmMQ9JoRqOKv2vt6V-aJeBw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/server/audio/-$$Lambda$8GbBZmMQ9JoRqOKv2vt6V-aJeBw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/server/audio/-$$Lambda$8GbBZmMQ9JoRqOKv2vt6V-aJeBw;

    invoke-direct {v0}, Lcom/samsung/android/server/audio/-$$Lambda$8GbBZmMQ9JoRqOKv2vt6V-aJeBw;-><init>()V

    sput-object v0, Lcom/samsung/android/server/audio/-$$Lambda$8GbBZmMQ9JoRqOKv2vt6V-aJeBw;->INSTANCE:Lcom/samsung/android/server/audio/-$$Lambda$8GbBZmMQ9JoRqOKv2vt6V-aJeBw;

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

    check-cast p1, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    invoke-virtual {p1}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->isShouldMute()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
