.class public final synthetic Lcom/android/server/wm/-$$Lambda$AppTransitionController$MLGcpsl7wG4wujLw_9OublmY0XE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$AppTransitionController$MLGcpsl7wG4wujLw_9OublmY0XE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppTransitionController$MLGcpsl7wG4wujLw_9OublmY0XE;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$AppTransitionController$MLGcpsl7wG4wujLw_9OublmY0XE;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$AppTransitionController$MLGcpsl7wG4wujLw_9OublmY0XE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppTransitionController$MLGcpsl7wG4wujLw_9OublmY0XE;

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

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1}, Lcom/android/server/wm/AppTransitionController;->lambda$findAnimLayoutParamsToken$4(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    return p1
.end method
