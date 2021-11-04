.class public final synthetic Lcom/android/server/asks/-$$Lambda$ADPOperation$qwzPpiQxrmnDKxWPcAMFM9Wvw-w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/asks/-$$Lambda$ADPOperation$qwzPpiQxrmnDKxWPcAMFM9Wvw-w;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/asks/-$$Lambda$ADPOperation$qwzPpiQxrmnDKxWPcAMFM9Wvw-w;

    invoke-direct {v0}, Lcom/android/server/asks/-$$Lambda$ADPOperation$qwzPpiQxrmnDKxWPcAMFM9Wvw-w;-><init>()V

    sput-object v0, Lcom/android/server/asks/-$$Lambda$ADPOperation$qwzPpiQxrmnDKxWPcAMFM9Wvw-w;->INSTANCE:Lcom/android/server/asks/-$$Lambda$ADPOperation$qwzPpiQxrmnDKxWPcAMFM9Wvw-w;

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

    check-cast p1, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    invoke-static {p1}, Lcom/android/server/asks/ADPOperation;->lambda$filterADPPolicy$2(Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z

    move-result p1

    return p1
.end method
