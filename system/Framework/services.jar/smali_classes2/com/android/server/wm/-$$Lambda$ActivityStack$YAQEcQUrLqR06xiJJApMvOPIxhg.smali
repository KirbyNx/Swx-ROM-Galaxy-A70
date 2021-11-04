.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStack$YAQEcQUrLqR06xiJJApMvOPIxhg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$YAQEcQUrLqR06xiJJApMvOPIxhg;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$YAQEcQUrLqR06xiJJApMvOPIxhg;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$ActivityStack$YAQEcQUrLqR06xiJJApMvOPIxhg;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$YAQEcQUrLqR06xiJJApMvOPIxhg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$YAQEcQUrLqR06xiJJApMvOPIxhg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/server/wm/Task;

    check-cast p2, Landroid/os/IBinder;

    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityStack;->lambda$YAQEcQUrLqR06xiJJApMvOPIxhg(Lcom/android/server/wm/Task;Landroid/os/IBinder;)V

    return-void
.end method
