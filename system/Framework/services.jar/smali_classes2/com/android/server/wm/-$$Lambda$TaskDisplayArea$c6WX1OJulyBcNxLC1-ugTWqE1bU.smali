.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$c6WX1OJulyBcNxLC1-ugTWqE1bU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$c6WX1OJulyBcNxLC1-ugTWqE1bU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$c6WX1OJulyBcNxLC1-ugTWqE1bU;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$c6WX1OJulyBcNxLC1-ugTWqE1bU;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$c6WX1OJulyBcNxLC1-ugTWqE1bU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$c6WX1OJulyBcNxLC1-ugTWqE1bU;

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

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1}, Lcom/android/server/wm/TaskDisplayArea;->lambda$onAnimationFinished$3(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
