.class Lcom/android/server/incident/RequestQueue$1;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/incident/RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/incident/RequestQueue;


# direct methods
.method constructor <init>(Lcom/android/server/incident/RequestQueue;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/incident/RequestQueue;

    .line 81
    iput-object p1, p0, Lcom/android/server/incident/RequestQueue$1;->this$0:Lcom/android/server/incident/RequestQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/incident/RequestQueue$Rec;>;"
    iget-object v1, p0, Lcom/android/server/incident/RequestQueue$1;->this$0:Lcom/android/server/incident/RequestQueue;

    # getter for: Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/incident/RequestQueue;->access$000(Lcom/android/server/incident/RequestQueue;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 86
    :try_start_8
    iget-object v2, p0, Lcom/android/server/incident/RequestQueue$1;->this$0:Lcom/android/server/incident/RequestQueue;

    # getter for: Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/incident/RequestQueue;->access$000(Lcom/android/server/incident/RequestQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_29

    .line 87
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/incident/RequestQueue$1;->this$0:Lcom/android/server/incident/RequestQueue;

    # getter for: Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/incident/RequestQueue;->access$000(Lcom/android/server/incident/RequestQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    .line 88
    iget-object v2, p0, Lcom/android/server/incident/RequestQueue$1;->this$0:Lcom/android/server/incident/RequestQueue;

    # getter for: Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/incident/RequestQueue;->access$000(Lcom/android/server/incident/RequestQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 90
    :cond_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_42

    .line 91
    if-eqz v0, :cond_41

    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 93
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_31
    if-ge v2, v1, :cond_41

    .line 94
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/incident/RequestQueue$Rec;

    iget-object v3, v3, Lcom/android/server/incident/RequestQueue$Rec;->runnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 97
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_41
    return-void

    .line 90
    :catchall_42
    move-exception v2

    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v2
.end method
