.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$Utils$Sgt9xHsyMd4UYcfrFjefbpwpKjc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$Utils$Sgt9xHsyMd4UYcfrFjefbpwpKjc;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$Utils$Sgt9xHsyMd4UYcfrFjefbpwpKjc;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$Utils$Sgt9xHsyMd4UYcfrFjefbpwpKjc;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$Utils$Sgt9xHsyMd4UYcfrFjefbpwpKjc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$Utils$Sgt9xHsyMd4UYcfrFjefbpwpKjc;

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

    invoke-static {p1}, Lcom/android/server/wm/TaskSnapshotController$Utils;->lambda$convertToProtoMap$1(Ljava/util/Map$Entry;)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto$Rect;

    move-result-object p1

    return-object p1
.end method
