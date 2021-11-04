.class Lcom/android/server/ipm/DexPreloader$2;
.super Ljava/lang/Object;
.source "DexPreloader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ipm/DexPreloader;->dump(Ljava/io/PrintWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Lcom/android/server/ipm/DexPreloader$CacheAPP;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/DexPreloader;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/DexPreloader;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/DexPreloader;

    .line 465
    iput-object p1, p0, Lcom/android/server/ipm/DexPreloader$2;->this$0:Lcom/android/server/ipm/DexPreloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 465
    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ipm/DexPreloader$2;->compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/android/server/ipm/DexPreloader$CacheAPP;",
            ">;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/android/server/ipm/DexPreloader$CacheAPP;",
            ">;)I"
        }
    .end annotation

    .line 468
    .local p1, "o1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/ipm/DexPreloader$CacheAPP;>;"
    .local p2, "o2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/ipm/DexPreloader$CacheAPP;>;"
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ipm/DexPreloader$CacheAPP;

    iget-wide v0, v0, Lcom/android/server/ipm/DexPreloader$CacheAPP;->installTime:J

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/DexPreloader$CacheAPP;

    iget-wide v2, v2, Lcom/android/server/ipm/DexPreloader$CacheAPP;->installTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
