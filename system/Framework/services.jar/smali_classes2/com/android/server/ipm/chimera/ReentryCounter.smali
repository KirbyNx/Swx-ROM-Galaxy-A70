.class Lcom/android/server/ipm/chimera/ReentryCounter;
.super Ljava/lang/Object;
.source "ReentryCounter.java"

# interfaces
.implements Lcom/android/server/ipm/chimera/SystemRepository$ChimeraProcessObserver;
.implements Lcom/android/server/ipm/chimera/SystemRepository$ChimeraUidObserver;


# static fields
.field private static final REENTRY_BUFFER_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "ReentryCounter"


# instance fields
.field private mEnableReentry:Z

.field private mLaunchedAppCnt:I

.field private mPkgReentryBuffer:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPkgReentryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

.field private mTargetReentryCount:F


# direct methods
.method constructor <init>(Lcom/android/server/ipm/chimera/SystemRepository;)V
    .registers 5
    .param p1, "systemRepository"    # Lcom/android/server/ipm/chimera/SystemRepository;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mPkgReentryMap:Ljava/util/Map;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mLaunchedAppCnt:I

    .line 17
    iput-boolean v0, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mEnableReentry:Z

    .line 20
    iput-object p1, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    .line 21
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Ljava/lang/Integer;

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mPkgReentryBuffer:Lcom/android/internal/util/RingBuffer;

    .line 22
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-interface {v0, p0}, Lcom/android/server/ipm/chimera/SystemRepository;->registerProcessObserver(Lcom/android/server/ipm/chimera/SystemRepository$ChimeraProcessObserver;)V

    .line 23
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-interface {v0, p0}, Lcom/android/server/ipm/chimera/SystemRepository;->registerUidObserver(Lcom/android/server/ipm/chimera/SystemRepository$ChimeraUidObserver;)V

    .line 24
    return-void
.end method


# virtual methods
.method getReentry()F
    .registers 8

    .line 37
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mPkgReentryBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v0

    .line 38
    .local v0, "listSize":I
    if-gtz v0, :cond_a

    .line 39
    const/4 v1, 0x0

    return v1

    .line 41
    :cond_a
    const/4 v1, 0x0

    .line 42
    .local v1, "reentry_count":I
    iget-object v2, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mPkgReentryBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_21

    aget-object v5, v2, v4

    .line 43
    .local v5, "reentry":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v1, v6

    .line 42
    .end local v5    # "reentry":Ljava/lang/Integer;
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 45
    :cond_21
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    return v2
.end method

.method isReentryEnabled()Z
    .registers 2

    .line 33
    iget-boolean v0, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mEnableReentry:Z

    return v0
.end method

.method public onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V
    .registers 13
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z
    .param p4, "userId"    # I
    .param p5, "packages"    # [Ljava/lang/String;
    .param p6, "isHomePackage"    # Z

    .line 66
    if-eqz p3, :cond_66

    if-eqz p6, :cond_5

    goto :goto_66

    .line 70
    :cond_5
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    const/4 v1, 0x0

    aget-object v2, p5, v1

    invoke-interface {v0, v2, p4}, Lcom/android/server/ipm/chimera/SystemRepository;->hasPkgIcon(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 71
    array-length v0, p5

    move v2, v1

    :goto_12
    if-ge v2, v0, :cond_2a

    aget-object v3, p5, v2

    .line 72
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mPkgReentryMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 73
    iget-object v4, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mPkgReentryMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 78
    :cond_2a
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mPkgReentryMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mPkgReentryMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .end local v1    # "packageName":Ljava/lang/String;
    goto :goto_34

    .line 82
    :cond_56
    iget v0, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mLaunchedAppCnt:I

    int-to-float v1, v0

    iget v3, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mTargetReentryCount:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_62

    .line 83
    iput-boolean v2, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mEnableReentry:Z

    goto :goto_65

    .line 85
    :cond_62
    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mLaunchedAppCnt:I

    .line 87
    :goto_65
    return-void

    .line 67
    :cond_66
    :goto_66
    return-void
.end method

.method onUidGone(ILjava/lang/String;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mPkgReentryMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 51
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-interface {v0, p1, p2}, Lcom/android/server/ipm/chimera/SystemRepository;->isKilledByRecentTask(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 52
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mPkgReentryMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    .line 54
    :cond_16
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app reentry info: app name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  reentry count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mPkgReentryMap:Ljava/util/Map;

    .line 55
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    const-string v2, "ReentryCounter"

    invoke-interface {v0, v2, v1}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mPkgReentryBuffer:Lcom/android/internal/util/RingBuffer;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mPkgReentryMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mPkgReentryMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_4e
    :goto_4e
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 91
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-interface {v0, p1}, Lcom/android/server/ipm/chimera/SystemRepository;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 92
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-interface {v0, p1}, Lcom/android/server/ipm/chimera/SystemRepository;->getPackageNameFromUid(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    .line 93
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lcom/android/server/ipm/chimera/ReentryCounter;->onUidGone(ILjava/lang/String;)V

    .line 92
    .end local v3    # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 96
    :cond_1a
    return-void
.end method

.method setTargetReentryCount(F)V
    .registers 2
    .param p1, "count"    # F

    .line 29
    iput p1, p0, Lcom/android/server/ipm/chimera/ReentryCounter;->mTargetReentryCount:F

    .line 30
    return-void
.end method
