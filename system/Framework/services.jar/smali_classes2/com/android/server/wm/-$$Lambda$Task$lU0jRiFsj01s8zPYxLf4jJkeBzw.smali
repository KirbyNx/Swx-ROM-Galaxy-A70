.class public final synthetic Lcom/android/server/wm/-$$Lambda$Task$lU0jRiFsj01s8zPYxLf4jJkeBzw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$lU0jRiFsj01s8zPYxLf4jJkeBzw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$Task$lU0jRiFsj01s8zPYxLf4jJkeBzw;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$Task$lU0jRiFsj01s8zPYxLf4jJkeBzw;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$Task$lU0jRiFsj01s8zPYxLf4jJkeBzw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$lU0jRiFsj01s8zPYxLf4jJkeBzw;

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

    invoke-static {p1}, Lcom/android/server/wm/Task;->lambda$onAnimationFinished$7(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
