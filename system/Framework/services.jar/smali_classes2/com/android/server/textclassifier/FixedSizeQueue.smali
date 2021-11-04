.class public final Lcom/android/server/textclassifier/FixedSizeQueue;
.super Ljava/lang/Object;
.source "FixedSizeQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/textclassifier/FixedSizeQueue$OnEntryEvictedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mDelegate:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final mMaxSize:I

.field private final mOnEntryEvictedListener:Lcom/android/server/textclassifier/FixedSizeQueue$OnEntryEvictedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/textclassifier/FixedSizeQueue$OnEntryEvictedListener<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/android/server/textclassifier/FixedSizeQueue$OnEntryEvictedListener;)V
    .registers 7
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/textclassifier/FixedSizeQueue$OnEntryEvictedListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/android/server/textclassifier/FixedSizeQueue;, "Lcom/android/server/textclassifier/FixedSizeQueue<TE;>;"
    .local p2, "onEntryEvictedListener":Lcom/android/server/textclassifier/FixedSizeQueue$OnEntryEvictedListener;, "Lcom/android/server/textclassifier/FixedSizeQueue$OnEntryEvictedListener<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const-string/jumbo v1, "maxSize (%s) must > 0"

    invoke-static {v2, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 48
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mDelegate:Ljava/util/Queue;

    .line 49
    iput p1, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mMaxSize:I

    .line 50
    iput-object p2, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mOnEntryEvictedListener:Lcom/android/server/textclassifier/FixedSizeQueue$OnEntryEvictedListener;

    .line 51
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 60
    .local p0, "this":Lcom/android/server/textclassifier/FixedSizeQueue;, "Lcom/android/server/textclassifier/FixedSizeQueue<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Lcom/android/server/textclassifier/FixedSizeQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mMaxSize:I

    if-ne v0, v1, :cond_18

    .line 62
    iget-object v0, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mDelegate:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    .line 63
    .local v0, "removed":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mOnEntryEvictedListener:Lcom/android/server/textclassifier/FixedSizeQueue$OnEntryEvictedListener;

    if-eqz v1, :cond_18

    .line 64
    invoke-interface {v1, v0}, Lcom/android/server/textclassifier/FixedSizeQueue$OnEntryEvictedListener;->onEntryEvicted(Ljava/lang/Object;)V

    .line 67
    .end local v0    # "removed":Ljava/lang/Object;, "TE;"
    :cond_18
    iget-object v0, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mDelegate:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 89
    .local p0, "this":Lcom/android/server/textclassifier/FixedSizeQueue;, "Lcom/android/server/textclassifier/FixedSizeQueue<TE;>;"
    iget-object v0, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mDelegate:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/android/server/textclassifier/FixedSizeQueue;, "Lcom/android/server/textclassifier/FixedSizeQueue<TE;>;"
    iget-object v0, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mDelegate:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 83
    .local p0, "this":Lcom/android/server/textclassifier/FixedSizeQueue;, "Lcom/android/server/textclassifier/FixedSizeQueue<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mDelegate:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .line 55
    .local p0, "this":Lcom/android/server/textclassifier/FixedSizeQueue;, "Lcom/android/server/textclassifier/FixedSizeQueue<TE;>;"
    iget-object v0, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mDelegate:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method
