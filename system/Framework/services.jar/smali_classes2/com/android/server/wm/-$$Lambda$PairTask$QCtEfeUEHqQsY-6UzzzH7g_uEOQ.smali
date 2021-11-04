.class public final synthetic Lcom/android/server/wm/-$$Lambda$PairTask$QCtEfeUEHqQsY-6UzzzH7g_uEOQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$PairTask$QCtEfeUEHqQsY-6UzzzH7g_uEOQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$PairTask$QCtEfeUEHqQsY-6UzzzH7g_uEOQ;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$PairTask$QCtEfeUEHqQsY-6UzzzH7g_uEOQ;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$PairTask$QCtEfeUEHqQsY-6UzzzH7g_uEOQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$PairTask$QCtEfeUEHqQsY-6UzzzH7g_uEOQ;

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

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {p1}, Lcom/android/server/wm/PairTask;->lambda$dismissPair$0(Lcom/android/server/wm/Task;)V

    return-void
.end method
