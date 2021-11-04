.class public final synthetic Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$LV9JhPNtgT1sszJZ0mF4WE_PR9U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$LV9JhPNtgT1sszJZ0mF4WE_PR9U;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$LV9JhPNtgT1sszJZ0mF4WE_PR9U;

    invoke-direct {v0}, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$LV9JhPNtgT1sszJZ0mF4WE_PR9U;-><init>()V

    sput-object v0, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$LV9JhPNtgT1sszJZ0mF4WE_PR9U;->INSTANCE:Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$LV9JhPNtgT1sszJZ0mF4WE_PR9U;

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

    invoke-static {p1}, Lcom/android/server/am/kpm/ComponentCallCounterDefault;->lambda$countService$4(Ljava/lang/String;)Lcom/android/server/am/kpm/CallCount;

    move-result-object p1

    return-object p1
.end method
