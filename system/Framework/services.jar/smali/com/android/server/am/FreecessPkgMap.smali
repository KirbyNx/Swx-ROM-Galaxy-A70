.class public Lcom/android/server/am/FreecessPkgMap;
.super Ljava/lang/Object;
.source "FreecessPkgMap.java"


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
.field final mUidMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field final mUserIdMap:Landroid/util/ArrayMap;
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
    .local p0, "this":Lcom/android/server/am/FreecessPkgMap;, "Lcom/android/server/am/FreecessPkgMap<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 15
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 66
    .local p0, "this":Lcom/android/server/am/FreecessPkgMap;, "Lcom/android/server/am/FreecessPkgMap<TE;>;"
    iget-object v0, p0, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 67
    iget-object v0, p0, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 68
    return-void
.end method

.method public getByUid(I)Ljava/lang/Object;
    .registers 3
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 19
    .local p0, "this":Lcom/android/server/am/FreecessPkgMap;, "Lcom/android/server/am/FreecessPkgMap<TE;>;"
    iget-object v0, p0, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getByUserId(ILjava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .line 23
    .local p0, "this":Lcom/android/server/am/FreecessPkgMap;, "Lcom/android/server/am/FreecessPkgMap<TE;>;"
    iget-object v0, p0, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 24
    .local v0, "userIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    if-nez v0, :cond_c

    const/4 v1, 0x0

    return-object v1

    .line 25
    :cond_c
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getUidMap()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "TE;>;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/android/server/am/FreecessPkgMap;, "Lcom/android/server/am/FreecessPkgMap<TE;>;"
    iget-object v0, p0, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getUserIdMap()Landroid/util/ArrayMap;
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

    .line 62
    .local p0, "this":Lcom/android/server/am/FreecessPkgMap;, "Lcom/android/server/am/FreecessPkgMap<TE;>;"
    iget-object v0, p0, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TE;)TE;"
        }
    .end annotation

    .line 29
    .local p0, "this":Lcom/android/server/am/FreecessPkgMap;, "Lcom/android/server/am/FreecessPkgMap<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 33
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 34
    .local v1, "userIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    if-nez v1, :cond_1f

    .line 35
    new-instance v2, Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    move-object v1, v2

    .line 36
    iget-object v2, p0, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_1f
    invoke-virtual {v1, v0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    return-object p3
.end method

.method public remove(ILjava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lcom/android/server/am/FreecessPkgMap;, "Lcom/android/server/am/FreecessPkgMap<TE;>;"
    iget-object v0, p0, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 45
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 46
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 47
    .local v1, "userIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    if-eqz v1, :cond_23

    .line 48
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v2

    .line 49
    .local v2, "old":Ljava/lang/Object;, "TE;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_22

    .line 50
    iget-object v3, p0, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_22
    return-object v2

    .line 54
    .end local v2    # "old":Ljava/lang/Object;, "TE;"
    :cond_23
    const/4 v2, 0x0

    return-object v2
.end method

.method public size()I
    .registers 2

    .line 76
    .local p0, "this":Lcom/android/server/am/FreecessPkgMap;, "Lcom/android/server/am/FreecessPkgMap<TE;>;"
    iget-object v0, p0, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public sizeByUserId()I
    .registers 2

    .line 71
    .local p0, "this":Lcom/android/server/am/FreecessPkgMap;, "Lcom/android/server/am/FreecessPkgMap<TE;>;"
    iget-object v0, p0, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public totalSize()I
    .registers 6

    .line 80
    .local p0, "this":Lcom/android/server/am/FreecessPkgMap;, "Lcom/android/server/am/FreecessPkgMap<TE;>;"
    const/4 v0, 0x0

    .line 81
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 82
    iget-object v2, p0, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 83
    .local v2, "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_13
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1e

    .line 84
    add-int/lit8 v0, v0, 0x1

    .line 83
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 81
    .end local v2    # "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .end local v3    # "j":I
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 87
    .end local v1    # "i":I
    :cond_21
    return v0
.end method
