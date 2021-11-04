.class Lcom/android/server/wm/TaskSnapshotController$Utils;
.super Ljava/lang/Object;
.source "TaskSnapshotController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Utils"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertToOriginMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto$Rect;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 860
    .local p0, "protoSnapBounds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto$Rect;>;"
    move-object v0, p0

    .line 861
    .local v0, "snapBounds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto$Rect;>;"
    if-eqz v0, :cond_1a

    .line 862
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/wm/-$$Lambda$htemI6hNv3kq1UVGrXpRlPIVXRU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$htemI6hNv3kq1UVGrXpRlPIVXRU;

    sget-object v3, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$Utils$2WqjJOgiOTewZqzKHxa3eBiDcyo;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$Utils$2WqjJOgiOTewZqzKHxa3eBiDcyo;

    .line 863
    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v2

    .line 862
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    return-object v1

    .line 865
    :cond_1a
    const/4 v1, 0x0

    return-object v1
.end method

.method static convertToProtoMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto$Rect;",
            ">;"
        }
    .end annotation

    .line 874
    .local p0, "snapshotBounds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/graphics/Rect;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/-$$Lambda$htemI6hNv3kq1UVGrXpRlPIVXRU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$htemI6hNv3kq1UVGrXpRlPIVXRU;

    sget-object v2, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$Utils$Sgt9xHsyMd4UYcfrFjefbpwpKjc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$Utils$Sgt9xHsyMd4UYcfrFjefbpwpKjc;

    .line 875
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 874
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private static convertToProtoRect(Landroid/graphics/Rect;)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto$Rect;
    .registers 3
    .param p0, "bounds"    # Landroid/graphics/Rect;

    .line 879
    new-instance v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto$Rect;

    invoke-direct {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto$Rect;-><init>()V

    .line 881
    .local v0, "rect":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto$Rect;
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto$Rect;->left:I

    .line 882
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto$Rect;->top:I

    .line 883
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto$Rect;->right:I

    .line 884
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto$Rect;->bottom:I

    .line 885
    return-object v0
.end method

.method private static convertToRect(Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto$Rect;)Landroid/graphics/Rect;
    .registers 6
    .param p0, "value"    # Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto$Rect;

    .line 869
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto$Rect;->left:I

    iget v2, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto$Rect;->top:I

    iget v3, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto$Rect;->right:I

    iget v4, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto$Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method static synthetic lambda$convertToOriginMap$0(Ljava/util/Map$Entry;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "e"    # Ljava/util/Map$Entry;

    .line 863
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto$Rect;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotController$Utils;->convertToRect(Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto$Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$convertToProtoMap$1(Ljava/util/Map$Entry;)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto$Rect;
    .registers 2
    .param p0, "e"    # Ljava/util/Map$Entry;

    .line 875
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotController$Utils;->convertToProtoRect(Landroid/graphics/Rect;)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto$Rect;

    move-result-object v0

    return-object v0
.end method
