.class public final synthetic Lcom/android/server/wm/-$$Lambda$PairTask$MhN3aJPClC7pPaG-2lzYsFnBT54;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$PairTask$MhN3aJPClC7pPaG-2lzYsFnBT54;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$PairTask$MhN3aJPClC7pPaG-2lzYsFnBT54;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$PairTask$MhN3aJPClC7pPaG-2lzYsFnBT54;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$PairTask$MhN3aJPClC7pPaG-2lzYsFnBT54;->INSTANCE:Lcom/android/server/wm/-$$Lambda$PairTask$MhN3aJPClC7pPaG-2lzYsFnBT54;

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

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {p1}, Lcom/android/server/wm/PairTask;->lambda$takeSnapshotBoundsByWindowingMode$1(Lcom/android/server/wm/Task;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method
