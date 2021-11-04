.class public final synthetic Lcom/android/server/power/-$$Lambda$mJs78oyYBMDErllGe4sx87OZns8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/power/PowerManagerService$Clock;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/power/-$$Lambda$mJs78oyYBMDErllGe4sx87OZns8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/power/-$$Lambda$mJs78oyYBMDErllGe4sx87OZns8;

    invoke-direct {v0}, Lcom/android/server/power/-$$Lambda$mJs78oyYBMDErllGe4sx87OZns8;-><init>()V

    sput-object v0, Lcom/android/server/power/-$$Lambda$mJs78oyYBMDErllGe4sx87OZns8;->INSTANCE:Lcom/android/server/power/-$$Lambda$mJs78oyYBMDErllGe4sx87OZns8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uptimeMillis()J
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
