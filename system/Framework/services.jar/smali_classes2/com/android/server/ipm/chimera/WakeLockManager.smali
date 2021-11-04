.class public Lcom/android/server/ipm/chimera/WakeLockManager;
.super Ljava/lang/Object;
.source "WakeLockManager.java"


# instance fields
.field private final mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

.field private final mWakeLockPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/ipm/chimera/SystemRepository;)V
    .registers 3
    .param p1, "systemRepository"    # Lcom/android/server/ipm/chimera/SystemRepository;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/WakeLockManager;->mWakeLockPackages:Ljava/util/Set;

    .line 16
    iput-object p1, p0, Lcom/android/server/ipm/chimera/WakeLockManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    .line 17
    return-void
.end method


# virtual methods
.method contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/android/server/ipm/chimera/WakeLockManager;->mWakeLockPackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/ipm/chimera/WakeLockManager;->mWakeLockPackages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 29
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .end local v2    # "packageName":Ljava/lang/String;
    goto :goto_b

    .line 32
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method update()V
    .registers 3

    .line 20
    iget-object v0, p0, Lcom/android/server/ipm/chimera/WakeLockManager;->mWakeLockPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 21
    iget-object v0, p0, Lcom/android/server/ipm/chimera/WakeLockManager;->mWakeLockPackages:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/WakeLockManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-interface {v1}, Lcom/android/server/ipm/chimera/SystemRepository;->getWakeLockPackageList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 22
    return-void
.end method
