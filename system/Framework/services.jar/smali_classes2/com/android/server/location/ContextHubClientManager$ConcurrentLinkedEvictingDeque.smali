.class Lcom/android/server/location/ContextHubClientManager$ConcurrentLinkedEvictingDeque;
.super Ljava/util/concurrent/ConcurrentLinkedDeque;
.source "ContextHubClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/ContextHubClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConcurrentLinkedEvictingDeque"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentLinkedDeque<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private mSize:I

.field final synthetic this$0:Lcom/android/server/location/ContextHubClientManager;


# direct methods
.method constructor <init>(Lcom/android/server/location/ContextHubClientManager;I)V
    .registers 3
    .param p2, "size"    # I

    .line 112
    .local p0, "this":Lcom/android/server/location/ContextHubClientManager$ConcurrentLinkedEvictingDeque;, "Lcom/android/server/location/ContextHubClientManager$ConcurrentLinkedEvictingDeque<TE;>;"
    iput-object p1, p0, Lcom/android/server/location/ContextHubClientManager$ConcurrentLinkedEvictingDeque;->this$0:Lcom/android/server/location/ContextHubClientManager;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    .line 113
    iput p2, p0, Lcom/android/server/location/ContextHubClientManager$ConcurrentLinkedEvictingDeque;->mSize:I

    .line 114
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

    .line 118
    .local p0, "this":Lcom/android/server/location/ContextHubClientManager$ConcurrentLinkedEvictingDeque;, "Lcom/android/server/location/ContextHubClientManager$ConcurrentLinkedEvictingDeque<TE;>;"
    .local p1, "elem":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    .line 119
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/location/ContextHubClientManager$ConcurrentLinkedEvictingDeque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/location/ContextHubClientManager$ConcurrentLinkedEvictingDeque;->mSize:I

    if-ne v0, v1, :cond_c

    .line 120
    invoke-virtual {p0}, Lcom/android/server/location/ContextHubClientManager$ConcurrentLinkedEvictingDeque;->poll()Ljava/lang/Object;

    .line 123
    :cond_c
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 124
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method
