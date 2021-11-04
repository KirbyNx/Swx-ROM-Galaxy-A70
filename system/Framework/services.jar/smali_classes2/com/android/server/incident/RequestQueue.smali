.class Lcom/android/server/incident/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/incident/RequestQueue$Rec;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mPending:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/incident/RequestQueue$Rec;",
            ">;"
        }
    .end annotation
.end field

.field private mStarted:Z

.field private final mWorker:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Lcom/android/server/incident/RequestQueue$1;

    invoke-direct {v0, p0}, Lcom/android/server/incident/RequestQueue$1;-><init>(Lcom/android/server/incident/RequestQueue;)V

    iput-object v0, p0, Lcom/android/server/incident/RequestQueue;->mWorker:Ljava/lang/Runnable;

    .line 106
    iput-object p1, p0, Lcom/android/server/incident/RequestQueue;->mHandler:Landroid/os/Handler;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/incident/RequestQueue;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/incident/RequestQueue;

    .line 28
    iget-object v0, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public enqueue(Landroid/os/IBinder;ZLjava/lang/Runnable;)V
    .registers 9
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "value"    # Z
    .param p3, "runnable"    # Ljava/lang/Runnable;

    .line 131
    iget-object v0, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    monitor-enter v0

    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, "skip":Z
    if-nez p2, :cond_2c

    .line 134
    :try_start_6
    iget-object v2, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_e
    if-ltz v2, :cond_2c

    .line 135
    iget-object v3, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/incident/RequestQueue$Rec;

    .line 136
    .local v3, "r":Lcom/android/server/incident/RequestQueue$Rec;
    iget-object v4, v3, Lcom/android/server/incident/RequestQueue$Rec;->key:Landroid/os/IBinder;

    if-ne v4, p1, :cond_27

    .line 137
    iget-boolean v4, v3, Lcom/android/server/incident/RequestQueue$Rec;->value:Z

    if-eqz v4, :cond_27

    .line 138
    const/4 v1, 0x1

    .line 139
    iget-object v4, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 140
    goto :goto_2c

    .line 134
    .end local v3    # "r":Lcom/android/server/incident/RequestQueue$Rec;
    :cond_27
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 152
    .end local v1    # "skip":Z
    .end local v2    # "i":I
    :catchall_2a
    move-exception v1

    goto :goto_45

    .line 145
    .restart local v1    # "skip":Z
    :cond_2c
    :goto_2c
    if-nez v1, :cond_38

    .line 146
    iget-object v2, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/incident/RequestQueue$Rec;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/server/incident/RequestQueue$Rec;-><init>(Lcom/android/server/incident/RequestQueue;Landroid/os/IBinder;ZLjava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_38
    iget-boolean v2, p0, Lcom/android/server/incident/RequestQueue;->mStarted:Z

    if-eqz v2, :cond_43

    .line 150
    iget-object v2, p0, Lcom/android/server/incident/RequestQueue;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/incident/RequestQueue;->mWorker:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    .end local v1    # "skip":Z
    :cond_43
    monitor-exit v0

    .line 153
    return-void

    .line 152
    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_6 .. :try_end_46} :catchall_2a

    throw v1
.end method

.method public start()V
    .registers 4

    .line 113
    iget-object v0, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    monitor-enter v0

    .line 114
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/incident/RequestQueue;->mStarted:Z

    if-nez v1, :cond_19

    .line 115
    iget-object v1, p0, Lcom/android/server/incident/RequestQueue;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_16

    .line 116
    iget-object v1, p0, Lcom/android/server/incident/RequestQueue;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/incident/RequestQueue;->mWorker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    :cond_16
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/incident/RequestQueue;->mStarted:Z

    .line 120
    :cond_19
    monitor-exit v0

    .line 121
    return-void

    .line 120
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method
