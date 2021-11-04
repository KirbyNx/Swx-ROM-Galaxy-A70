.class public final synthetic Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$wbI7_lB6D4jM1wCAkHi_MRoZ--w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$wbI7_lB6D4jM1wCAkHi_MRoZ--w;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$wbI7_lB6D4jM1wCAkHi_MRoZ--w;

    invoke-direct {v0}, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$wbI7_lB6D4jM1wCAkHi_MRoZ--w;-><init>()V

    sput-object v0, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$wbI7_lB6D4jM1wCAkHi_MRoZ--w;->INSTANCE:Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$wbI7_lB6D4jM1wCAkHi_MRoZ--w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-static {p1, p2}, Lcom/android/server/am/kpm/ComponentCallCounterDefault;->lambda$dump$6(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p1

    return p1
.end method
