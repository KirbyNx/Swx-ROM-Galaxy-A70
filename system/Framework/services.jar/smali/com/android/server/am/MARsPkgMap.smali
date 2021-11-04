.class public Lcom/android/server/am/MARsPkgMap;
.super Ljava/lang/Object;
.source "MARsPkgMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    .local p0, "this":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 53
    .local p0, "this":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<TE;>;"
    iget-object v0, p0, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 54
    return-void
.end method

.method public get(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TE;"
        }
    .end annotation

    .line 17
    .local p0, "this":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<TE;>;"
    iget-object v0, p0, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 18
    .local v0, "userIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    if-nez v0, :cond_c

    const/4 v1, 0x0

    return-object v1

    .line 19
    :cond_c
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getMap()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "TE;>;>;"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<TE;>;"
    iget-object v0, p0, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ITE;)TE;"
        }
    .end annotation

    .line 23
    .local p0, "this":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 24
    .local v0, "userIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    if-nez v0, :cond_16

    .line 25
    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    move-object v0, v1

    .line 26
    iget-object v1, p0, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_16
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    return-object p3
.end method

.method public remove(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TE;"
        }
    .end annotation

    .line 33
    .local p0, "this":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<TE;>;"
    iget-object v0, p0, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 34
    .local v0, "userIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    if-eqz v0, :cond_1a

    .line 35
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    .line 36
    .local v1, "old":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_19

    .line 37
    iget-object v2, p0, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_19
    return-object v1

    .line 41
    .end local v1    # "old":Ljava/lang/Object;, "TE;"
    :cond_1a
    const/4 v1, 0x0

    return-object v1
.end method

.method public size()I
    .registers 2

    .line 49
    .local p0, "this":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<TE;>;"
    iget-object v0, p0, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public totalSize()I
    .registers 6

    .line 57
    .local p0, "this":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<TE;>;"
    const/4 v0, 0x0

    .line 58
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 59
    iget-object v2, p0, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 60
    .local v2, "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_13
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1e

    .line 61
    add-int/lit8 v0, v0, 0x1

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 58
    .end local v2    # "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .end local v3    # "j":I
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 64
    .end local v1    # "i":I
    :cond_21
    return v0
.end method
