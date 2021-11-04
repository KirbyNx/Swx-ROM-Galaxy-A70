.class public final synthetic Lcom/android/server/am/-$$Lambda$WpKTPy3gWJOee3S1fj8MYLDPbdY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$WpKTPy3gWJOee3S1fj8MYLDPbdY;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$WpKTPy3gWJOee3S1fj8MYLDPbdY;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$WpKTPy3gWJOee3S1fj8MYLDPbdY;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$WpKTPy3gWJOee3S1fj8MYLDPbdY;->INSTANCE:Lcom/android/server/am/-$$Lambda$WpKTPy3gWJOee3S1fj8MYLDPbdY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .registers 4

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
