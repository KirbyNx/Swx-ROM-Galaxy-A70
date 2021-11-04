.class public final synthetic Lcom/android/server/wm/-$$Lambda$PersonaActivityHelper$PersonaActivityHandler$vQ_ewkd_uwUKy9kHZARKDi4R1G8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$PersonaActivityHelper$PersonaActivityHandler$vQ_ewkd_uwUKy9kHZARKDi4R1G8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$PersonaActivityHelper$PersonaActivityHandler$vQ_ewkd_uwUKy9kHZARKDi4R1G8;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$PersonaActivityHelper$PersonaActivityHandler$vQ_ewkd_uwUKy9kHZARKDi4R1G8;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$PersonaActivityHelper$PersonaActivityHandler$vQ_ewkd_uwUKy9kHZARKDi4R1G8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$PersonaActivityHelper$PersonaActivityHandler$vQ_ewkd_uwUKy9kHZARKDi4R1G8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->lambda$handleMessage$0(Lcom/android/server/wm/ActivityRecord;I)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
