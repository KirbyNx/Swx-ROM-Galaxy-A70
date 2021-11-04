.class public final synthetic Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$p0gP0392VjOA5eM3WUBCZoCPli8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$p0gP0392VjOA5eM3WUBCZoCPli8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$p0gP0392VjOA5eM3WUBCZoCPli8;

    invoke-direct {v0}, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$p0gP0392VjOA5eM3WUBCZoCPli8;-><init>()V

    sput-object v0, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$p0gP0392VjOA5eM3WUBCZoCPli8;->INSTANCE:Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$p0gP0392VjOA5eM3WUBCZoCPli8;

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

    invoke-static {p1}, Lcom/android/server/am/kpm/ComponentCallCounterDefault;->lambda$countBroadcast$2(Ljava/lang/String;)Lcom/android/server/am/kpm/CallCount;

    move-result-object p1

    return-object p1
.end method
