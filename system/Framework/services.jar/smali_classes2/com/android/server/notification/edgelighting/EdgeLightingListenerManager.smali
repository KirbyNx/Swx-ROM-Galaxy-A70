.class Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;
.super Ljava/lang/Object;
.source "EdgeLightingListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsRunning:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const-class v0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;

    .line 25
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mLooper:Landroid/os/Looper;

    .line 35
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    .line 22
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .line 22
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    .line 22
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800()Z
    .registers 1

    .line 22
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->DEBUG:Z

    return v0
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 128
    const-string v0, "-ListenerManager start"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 130
    :try_start_8
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    .line 131
    .local v2, "listener":Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 132
    .end local v2    # "listener":Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
    goto :goto_e

    .line 133
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_25

    .line 134
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    return-void

    .line 133
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method isRunning()Z
    .registers 2

    .line 124
    iget-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mIsRunning:Z

    return v0
.end method

.method register(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 12
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;>;"
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 40
    :try_start_8
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v2, :cond_10

    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->DEBUG:Z

    if-eqz v2, :cond_39

    .line 41
    :cond_10
    sget-object v2, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "register : pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mListeners = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_39
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_97

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    .line 44
    .local v3, "listener":Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
    if-eqz v3, :cond_96

    .line 45
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->access$000(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 46
    sget-object v2, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "register : already registered"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    monitor-exit v1

    return-void

    .line 49
    :cond_61
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->component:Landroid/content/ComponentName;
    invoke-static {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->access$100(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_96

    .line 50
    sget-boolean v4, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v4, :cond_73

    sget-boolean v4, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->DEBUG:Z

    if-eqz v4, :cond_93

    .line 51
    :cond_73
    sget-object v4, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "register : pkg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " unregister because of same component"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_93
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .end local v3    # "listener":Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
    :cond_96
    goto :goto_3f

    .line 57
    :cond_97
    new-instance v2, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;Landroid/os/IBinder;Landroid/content/ComponentName;II)V

    .line 58
    .local v2, "listener":Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "R listener."

    invoke-virtual {v3, v4, v5}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateListenerHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .end local v2    # "listener":Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
    monitor-exit v1
    :try_end_bb
    .catchall {:try_start_8 .. :try_end_bb} :catchall_f9

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_bf
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    .line 63
    .restart local v2    # "listener":Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->access$000(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_f7

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->component:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->access$100(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_f7

    .line 64
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->access$000(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Landroid/os/IBinder;

    move-result-object v3

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->component:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->access$100(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->unregister(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v3

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->component:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->access$100(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UR listener by same component"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateListenerHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .end local v2    # "listener":Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
    :cond_f7
    goto :goto_bf

    .line 68
    :cond_f8
    return-void

    .line 60
    :catchall_f9
    move-exception v2

    :try_start_fa
    monitor-exit v1
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    throw v2
.end method

.method startEdgeLighting()V
    .registers 6

    .line 96
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 97
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_e

    .line 98
    monitor-exit v0

    return-void

    .line 100
    :cond_e
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    .line 101
    .local v3, "listener":Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
    if-eqz v3, :cond_2e

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->isEdgeLighting:Z
    invoke-static {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->access$200(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 102
    # setter for: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->isEdgeLighting:Z
    invoke-static {v3, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->access$202(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;Z)Z

    .line 103
    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->onEdgeLightingStarted()V

    .line 105
    .end local v3    # "listener":Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
    :cond_2e
    goto :goto_14

    .line 106
    :cond_2f
    monitor-exit v0

    .line 107
    return-void

    .line 106
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method stopEdgeLighting()V
    .registers 5

    .line 110
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 111
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_e

    .line 112
    monitor-exit v0

    return-void

    .line 114
    :cond_e
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    .line 115
    .local v2, "listener":Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
    if-eqz v2, :cond_2f

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->isEdgeLighting:Z
    invoke-static {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->access$200(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 116
    const/4 v3, 0x0

    # setter for: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->isEdgeLighting:Z
    invoke-static {v2, v3}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->access$202(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;Z)Z

    .line 117
    invoke-virtual {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->onEdgeLightingStopped()V

    .line 119
    .end local v2    # "listener":Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
    :cond_2f
    goto :goto_14

    .line 120
    :cond_30
    monitor-exit v0

    .line 121
    return-void

    .line 120
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method unregister(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 8
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 72
    :try_start_3
    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_b

    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->DEBUG:Z

    if-eqz v1, :cond_30

    .line 73
    :cond_b
    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregister : pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mListeners = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_30
    const/4 v1, 0x0

    .line 76
    .local v1, "listener":Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    .line 77
    .local v3, "temp":Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
    if-eqz v3, :cond_50

    .line 78
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->access$000(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 79
    move-object v1, v3

    .line 82
    .end local v3    # "temp":Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
    :cond_50
    goto :goto_37

    .line 83
    :cond_51
    if-nez v1, :cond_5d

    .line 84
    sget-object v2, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unregister : cannot find the matched host"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    monitor-exit v0

    return-void

    .line 87
    :cond_5d
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_73

    .line 88
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 89
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v2

    const-string v3, "UR listener"

    invoke-virtual {v2, p2, v3}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateListenerHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_73
    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 92
    nop

    .end local v1    # "listener":Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
    monitor-exit v0

    .line 93
    return-void

    .line 92
    :catchall_7a
    move-exception v1

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_3 .. :try_end_7c} :catchall_7a

    throw v1
.end method
