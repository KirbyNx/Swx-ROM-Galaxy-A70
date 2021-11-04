.class Lcom/android/server/ipm/chimera/RestartImmediatePackages;
.super Ljava/lang/Object;
.source "RestartImmediatePackages.java"


# static fields
.field private static INSTANCE:Lcom/android/server/ipm/chimera/RestartImmediatePackages;


# instance fields
.field private final sPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ipm/chimera/RestartImmediatePackages;->sPackages:Ljava/util/Set;

    .line 15
    return-void
.end method

.method static declared-synchronized getInstance()Lcom/android/server/ipm/chimera/RestartImmediatePackages;
    .registers 2

    const-class v0, Lcom/android/server/ipm/chimera/RestartImmediatePackages;

    monitor-enter v0

    .line 18
    :try_start_3
    sget-object v1, Lcom/android/server/ipm/chimera/RestartImmediatePackages;->INSTANCE:Lcom/android/server/ipm/chimera/RestartImmediatePackages;

    if-nez v1, :cond_e

    .line 19
    new-instance v1, Lcom/android/server/ipm/chimera/RestartImmediatePackages;

    invoke-direct {v1}, Lcom/android/server/ipm/chimera/RestartImmediatePackages;-><init>()V

    sput-object v1, Lcom/android/server/ipm/chimera/RestartImmediatePackages;->INSTANCE:Lcom/android/server/ipm/chimera/RestartImmediatePackages;

    .line 21
    :cond_e
    sget-object v1, Lcom/android/server/ipm/chimera/RestartImmediatePackages;->INSTANCE:Lcom/android/server/ipm/chimera/RestartImmediatePackages;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 17
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method addPackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 25
    if-nez p1, :cond_3

    .line 26
    return-void

    .line 29
    :cond_3
    iget-object v0, p0, Lcom/android/server/ipm/chimera/RestartImmediatePackages;->sPackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method clearAll()V
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/android/server/ipm/chimera/RestartImmediatePackages;->sPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 34
    return-void
.end method

.method hasPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 37
    if-nez p1, :cond_4

    .line 38
    const/4 v0, 0x0

    return v0

    .line 41
    :cond_4
    iget-object v0, p0, Lcom/android/server/ipm/chimera/RestartImmediatePackages;->sPackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
