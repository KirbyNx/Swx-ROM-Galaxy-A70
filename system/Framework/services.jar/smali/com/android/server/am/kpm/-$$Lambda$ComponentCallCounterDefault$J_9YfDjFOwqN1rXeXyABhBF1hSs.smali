.class public final synthetic Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$J_9YfDjFOwqN1rXeXyABhBF1hSs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$J_9YfDjFOwqN1rXeXyABhBF1hSs;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$J_9YfDjFOwqN1rXeXyABhBF1hSs;

    invoke-direct {v0}, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$J_9YfDjFOwqN1rXeXyABhBF1hSs;-><init>()V

    sput-object v0, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$J_9YfDjFOwqN1rXeXyABhBF1hSs;->INSTANCE:Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$J_9YfDjFOwqN1rXeXyABhBF1hSs;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/am/kpm/ComponentCallCounterDefault;->lambda$countContentProvider$5(Ljava/lang/String;)Lcom/android/server/am/kpm/CallCount;

    move-result-object p1

    return-object p1
.end method
