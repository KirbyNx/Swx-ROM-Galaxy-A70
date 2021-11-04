.class public final synthetic Lcom/android/server/wm/-$$Lambda$MultiTaskingController$X2-1MgS7f8Ie-2hBET7P8ce2xyo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$MultiTaskingController$X2-1MgS7f8Ie-2hBET7P8ce2xyo;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$X2-1MgS7f8Ie-2hBET7P8ce2xyo;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$X2-1MgS7f8Ie-2hBET7P8ce2xyo;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$X2-1MgS7f8Ie-2hBET7P8ce2xyo;->INSTANCE:Lcom/android/server/wm/-$$Lambda$MultiTaskingController$X2-1MgS7f8Ie-2hBET7P8ce2xyo;

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

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {p1}, Lcom/android/server/wm/MultiTaskingController;->lambda$getMultiSplitFlags$5(Lcom/android/server/wm/Task;)Z

    move-result p1

    return p1
.end method
