.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$Utils$2WqjJOgiOTewZqzKHxa3eBiDcyo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$Utils$2WqjJOgiOTewZqzKHxa3eBiDcyo;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$Utils$2WqjJOgiOTewZqzKHxa3eBiDcyo;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$Utils$2WqjJOgiOTewZqzKHxa3eBiDcyo;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$Utils$2WqjJOgiOTewZqzKHxa3eBiDcyo;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$Utils$2WqjJOgiOTewZqzKHxa3eBiDcyo;

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

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/android/server/wm/TaskSnapshotController$Utils;->lambda$convertToOriginMap$0(Ljava/util/Map$Entry;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method
