.class public final synthetic Lcom/android/server/audio/-$$Lambda$AudioService$eq0KnrBbF7KWNGmAJRjyeCTIdzQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/audio/-$$Lambda$AudioService$eq0KnrBbF7KWNGmAJRjyeCTIdzQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/audio/-$$Lambda$AudioService$eq0KnrBbF7KWNGmAJRjyeCTIdzQ;

    invoke-direct {v0}, Lcom/android/server/audio/-$$Lambda$AudioService$eq0KnrBbF7KWNGmAJRjyeCTIdzQ;-><init>()V

    sput-object v0, Lcom/android/server/audio/-$$Lambda$AudioService$eq0KnrBbF7KWNGmAJRjyeCTIdzQ;->INSTANCE:Lcom/android/server/audio/-$$Lambda$AudioService$eq0KnrBbF7KWNGmAJRjyeCTIdzQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Landroid/media/AudioAttributes;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->lambda$ensureValidAttributes$0(Landroid/media/AudioAttributes;)Z

    move-result p1

    return p1
.end method
