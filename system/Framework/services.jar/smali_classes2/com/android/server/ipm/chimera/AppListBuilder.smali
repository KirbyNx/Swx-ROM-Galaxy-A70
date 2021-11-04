.class Lcom/android/server/ipm/chimera/AppListBuilder;
.super Ljava/lang/Object;
.source "AppListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/chimera/AppListBuilder$ImportantAdjWithSystemUidCriteria;,
        Lcom/android/server/ipm/chimera/AppListBuilder$CachedProcessCriteria;,
        Lcom/android/server/ipm/chimera/AppListBuilder$RecycledPidCriteria;,
        Lcom/android/server/ipm/chimera/AppListBuilder$OnScreenWindowCriteria;,
        Lcom/android/server/ipm/chimera/AppListBuilder$HasActivityCriteria;,
        Lcom/android/server/ipm/chimera/AppListBuilder$NoHomePackageCriteria;,
        Lcom/android/server/ipm/chimera/AppListBuilder$ProcessStateHomeCachedCriteria;,
        Lcom/android/server/ipm/chimera/AppListBuilder$ProcessStateNoHomeCachedCriteria;,
        Lcom/android/server/ipm/chimera/AppListBuilder$NoPersistentCriteria;,
        Lcom/android/server/ipm/chimera/AppListBuilder$PreconditionCriteria;,
        Lcom/android/server/ipm/chimera/AppListBuilder$ChimeraAppInfoCriteria;,
        Lcom/android/server/ipm/chimera/AppListBuilder$RunningAppProcessInfoCriteria;
    }
.end annotation


# static fields
.field private static final DEFAULT_WEIGHT_LRU:F = 0.3f

.field private static final DEFAULT_WEIGHT_MEM:F = 0.4f

.field private static final DEFAULT_WEIGHT_STANDBY_BUCKET:F = 0.3f

.field private static final TAG:Ljava/lang/String; = "AppListBuilder"


# instance fields
.field mChimeraAppClassifier:Lcom/android/server/ipm/chimera/ChimeraAppClassifier;

.field mChimeraAppInfoCriteriaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/ipm/chimera/AppListBuilder$ChimeraAppInfoCriteria;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field mChimeraAppManager:Lcom/android/server/ipm/chimera/ChimeraAppManager;

.field mRunningAppProcessInfoCriteriaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/ipm/chimera/AppListBuilder$RunningAppProcessInfoCriteria;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

.field private mWeightLru:F

.field private mWeightMem:F

.field private mWeightStandbyBucket:F


# direct methods
.method public constructor <init>(Lcom/android/server/ipm/chimera/SystemRepository;Lcom/android/server/ipm/chimera/ChimeraAppClassifier;Lcom/android/server/ipm/chimera/ChimeraAppManager;)V
    .registers 6
    .param p1, "systemRepository"    # Lcom/android/server/ipm/chimera/SystemRepository;
    .param p2, "appClassifier"    # Lcom/android/server/ipm/chimera/ChimeraAppClassifier;
    .param p3, "appManager"    # Lcom/android/server/ipm/chimera/ChimeraAppManager;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/AppListBuilder;->mRunningAppProcessInfoCriteriaList:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/AppListBuilder;->mChimeraAppInfoCriteriaList:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/android/server/ipm/chimera/AppListBuilder;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    .line 37
    iput-object p2, p0, Lcom/android/server/ipm/chimera/AppListBuilder;->mChimeraAppClassifier:Lcom/android/server/ipm/chimera/ChimeraAppClassifier;

    .line 38
    iput-object p3, p0, Lcom/android/server/ipm/chimera/AppListBuilder;->mChimeraAppManager:Lcom/android/server/ipm/chimera/ChimeraAppManager;

    .line 40
    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/AppListBuilder;->setWeightLru(F)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/AppListBuilder;->setWeightStandbyBucket(F)V

    .line 42
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/AppListBuilder;->setWeightMem(F)V

    .line 44
    new-instance v0, Lcom/android/server/ipm/chimera/AppListBuilder$PreconditionCriteria;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/ipm/chimera/AppListBuilder$PreconditionCriteria;-><init>(Lcom/android/server/ipm/chimera/AppListBuilder$1;)V

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/AppListBuilder;->addCriteria(Lcom/android/server/ipm/chimera/AppListBuilder$RunningAppProcessInfoCriteria;)Lcom/android/server/ipm/chimera/AppListBuilder;

    .line 45
    return-void
.end method

.method private applyChimeraAppInfoCriteria(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/ChimeraAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 74
    .local p1, "chimeraAppInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, "removeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 76
    .local v2, "appInfo":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    iget-object v3, p0, Lcom/android/server/ipm/chimera/AppListBuilder;->mChimeraAppInfoCriteriaList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 77
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/ipm/chimera/AppListBuilder$ChimeraAppInfoCriteria;Ljava/lang/Boolean;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/ipm/chimera/AppListBuilder$ChimeraAppInfoCriteria;

    invoke-interface {v5, v2}, Lcom/android/server/ipm/chimera/AppListBuilder$ChimeraAppInfoCriteria;->check(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Z

    move-result v5

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eq v5, v6, :cond_3d

    .line 78
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    goto :goto_3e

    .line 81
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/ipm/chimera/AppListBuilder$ChimeraAppInfoCriteria;Ljava/lang/Boolean;>;"
    :cond_3d
    goto :goto_1b

    .line 82
    .end local v2    # "appInfo":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    :cond_3e
    :goto_3e
    goto :goto_9

    .line 83
    :cond_3f
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 84
    return-void
.end method

.method private applyRunningAppProcessInfoCriteria(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;",
            ">;)V"
        }
    .end annotation

    .line 165
    .local p1, "runningAppProcessInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v0, "removeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;

    .line 167
    .local v2, "info":Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;
    iget-object v3, p0, Lcom/android/server/ipm/chimera/AppListBuilder;->mRunningAppProcessInfoCriteriaList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 168
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/ipm/chimera/AppListBuilder$RunningAppProcessInfoCriteria;Ljava/lang/Boolean;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/ipm/chimera/AppListBuilder$RunningAppProcessInfoCriteria;

    invoke-interface {v5, v2}, Lcom/android/server/ipm/chimera/AppListBuilder$RunningAppProcessInfoCriteria;->check(Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;)Z

    move-result v5

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eq v5, v6, :cond_3d

    .line 169
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    goto :goto_3e

    .line 172
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/ipm/chimera/AppListBuilder$RunningAppProcessInfoCriteria;Ljava/lang/Boolean;>;"
    :cond_3d
    goto :goto_1b

    .line 173
    .end local v2    # "info":Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;
    :cond_3e
    :goto_3e
    goto :goto_9

    .line 174
    :cond_3f
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 175
    return-void
.end method

.method private buildChimeraAppInfoList(Ljava/util/List;)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/ChimeraAppInfo;",
            ">;"
        }
    .end annotation

    .line 87
    .local p1, "runningAppProcessInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;>;"
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v1, "chimeraAppInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v2, "chimeraAppInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;

    .line 91
    .local v4, "appProcessInfo":Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;
    iget-object v5, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    .line 92
    .local v5, "packageName":Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 93
    .local v6, "chimeraAppInfo":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    if-nez v6, :cond_47

    .line 94
    new-instance v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    iget v8, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-direct {v7, v8, v5}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;-><init>(ILjava/lang/String;)V

    move-object v6, v7

    .line 95
    iget v7, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->lru:I

    iput v7, v6, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->lruIdx:I

    .line 96
    iget-object v7, v0, Lcom/android/server/ipm/chimera/AppListBuilder;->mChimeraAppManager:Lcom/android/server/ipm/chimera/ChimeraAppManager;

    invoke-virtual {v7, v6}, Lcom/android/server/ipm/chimera/ChimeraAppManager;->getAppStandbyBucket(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)V

    .line 97
    iget-object v7, v0, Lcom/android/server/ipm/chimera/AppListBuilder;->mChimeraAppManager:Lcom/android/server/ipm/chimera/ChimeraAppManager;

    iget v8, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-virtual {v7, v5, v8}, Lcom/android/server/ipm/chimera/ChimeraAppManager;->getAppStandbyBucket(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->curStandbyBucket:I

    .line 98
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_47
    iget-wide v7, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    .line 102
    .local v7, "pss":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gtz v9, :cond_5a

    .line 103
    iget-object v9, v0, Lcom/android/server/ipm/chimera/AppListBuilder;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget v10, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v9, v10}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->getProcPss(Lcom/android/server/ipm/chimera/SystemRepository;I)J

    move-result-wide v7

    move-wide/from16 v17, v7

    goto :goto_5c

    .line 102
    :cond_5a
    move-wide/from16 v17, v7

    .line 105
    .end local v7    # "pss":J
    .local v17, "pss":J
    :goto_5c
    iget v9, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    iget-object v10, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-wide v13, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->initialIdlePss:J

    iget-wide v11, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->avgPss:J

    move-object v8, v6

    move-wide v15, v11

    move-wide/from16 v11, v17

    invoke-virtual/range {v8 .. v16}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->addProcess(ILjava/lang/String;JJJ)V

    .line 108
    iget v7, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-lez v7, :cond_78

    .line 109
    iget v7, v6, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType:I

    const/high16 v8, 0x20000

    or-int/2addr v7, v8

    iput v7, v6, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType:I

    .line 112
    :cond_78
    iget v7, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-lez v7, :cond_85

    .line 113
    iget v7, v6, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType:I

    const/high16 v8, 0x1000000

    or-int/2addr v7, v8

    iput v7, v6, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType:I

    .line 115
    .end local v4    # "appProcessInfo":Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "chimeraAppInfo":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    .end local v17    # "pss":J
    :cond_85
    goto :goto_10

    .line 117
    :cond_86
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 118
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    goto :goto_8e

    .line 121
    :cond_a4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v3, "pkgsForMars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_ad
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 123
    .local v5, "appInfo":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    iget-object v6, v0, Lcom/android/server/ipm/chimera/AppListBuilder;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget v7, v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {v6, v7}, Lcom/android/server/ipm/chimera/SystemRepository;->getUserId(I)I

    move-result v6

    .line 124
    .local v6, "userId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v5    # "appInfo":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    .end local v6    # "userId":I
    goto :goto_ad

    .line 127
    :cond_e3
    iget-object v4, v0, Lcom/android/server/ipm/chimera/AppListBuilder;->mChimeraAppClassifier:Lcom/android/server/ipm/chimera/ChimeraAppClassifier;

    sget-object v5, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v4, v5}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->prepare(Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 128
    iget-object v4, v0, Lcom/android/server/ipm/chimera/AppListBuilder;->mChimeraAppClassifier:Lcom/android/server/ipm/chimera/ChimeraAppClassifier;

    invoke-virtual {v4, v3}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->updatePackagesType(Ljava/util/List;)V

    .line 130
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_123

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 131
    .restart local v5    # "appInfo":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    iget-object v6, v0, Lcom/android/server/ipm/chimera/AppListBuilder;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget v7, v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {v6, v7}, Lcom/android/server/ipm/chimera/SystemRepository;->getUserId(I)I

    move-result v6

    .line 132
    .restart local v6    # "userId":I
    iget v7, v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType:I

    iget-object v8, v0, Lcom/android/server/ipm/chimera/AppListBuilder;->mChimeraAppClassifier:Lcom/android/server/ipm/chimera/ChimeraAppClassifier;

    iget-object v9, v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 133
    invoke-virtual {v5}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    move-result-object v10

    iget v11, v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->uid:I

    .line 132
    invoke-virtual {v8, v9, v6, v10, v11}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->getPackageType(Ljava/lang/String;ILjava/util/Set;I)I

    move-result v8

    or-int/2addr v7, v8

    iput v7, v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType:I

    .line 134
    iget v7, v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType:I

    invoke-static {v7}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType2group(I)I

    move-result v7

    iput v7, v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->group:I

    .line 135
    .end local v5    # "appInfo":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    .end local v6    # "userId":I
    goto :goto_f3

    .line 137
    :cond_123
    return-object v1
.end method

.method private calcAppScores(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/ChimeraAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 142
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    const-wide/16 v0, 0x0

    .line 143
    .local v0, "maxPss":J
    const/4 v2, 0x1

    .line 145
    .local v2, "maxLru":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 146
    .local v4, "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    iget-wide v5, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->pss:J

    cmp-long v5, v5, v0

    if-lez v5, :cond_1b

    .line 147
    iget-wide v0, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->pss:J

    .line 150
    :cond_1b
    iget v5, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->lruIdx:I

    if-le v5, v2, :cond_21

    .line 151
    iget v2, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->lruIdx:I

    .line 153
    .end local v4    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    :cond_21
    goto :goto_7

    .line 155
    :cond_22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 157
    .restart local v4    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    iget v5, p0, Lcom/android/server/ipm/chimera/AppListBuilder;->mWeightLru:F

    iget v6, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->lruIdx:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    int-to-float v6, v2

    div-float/2addr v5, v6

    iget v6, p0, Lcom/android/server/ipm/chimera/AppListBuilder;->mWeightStandbyBucket:F

    iget v7, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    const/high16 v7, 0x42480000    # 50.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/android/server/ipm/chimera/AppListBuilder;->mWeightMem:F

    iget-wide v7, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->pss:J

    long-to-float v7, v7

    mul-float/2addr v6, v7

    long-to-float v7, v0

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->score:F

    .line 160
    iget v5, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->group:I

    rsub-int/lit8 v5, v5, 0x4

    int-to-float v5, v5

    mul-float/2addr v5, v6

    iget v6, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->score:F

    add-float/2addr v5, v6

    iput v5, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->finalScore:F

    .line 161
    .end local v4    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    goto :goto_26

    .line 162
    :cond_5e
    return-void
.end method


# virtual methods
.method addCriteria(Lcom/android/server/ipm/chimera/AppListBuilder$ChimeraAppInfoCriteria;)Lcom/android/server/ipm/chimera/AppListBuilder;
    .registers 5
    .param p1, "criteria"    # Lcom/android/server/ipm/chimera/AppListBuilder$ChimeraAppInfoCriteria;

    .line 188
    iget-object v0, p0, Lcom/android/server/ipm/chimera/AppListBuilder;->mChimeraAppInfoCriteriaList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    return-object p0
.end method

.method addCriteria(Lcom/android/server/ipm/chimera/AppListBuilder$ChimeraAppInfoCriteria;Z)Lcom/android/server/ipm/chimera/AppListBuilder;
    .registers 6
    .param p1, "criteria"    # Lcom/android/server/ipm/chimera/AppListBuilder$ChimeraAppInfoCriteria;
    .param p2, "expected"    # Z

    .line 193
    iget-object v0, p0, Lcom/android/server/ipm/chimera/AppListBuilder;->mChimeraAppInfoCriteriaList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    return-object p0
.end method

.method addCriteria(Lcom/android/server/ipm/chimera/AppListBuilder$RunningAppProcessInfoCriteria;)Lcom/android/server/ipm/chimera/AppListBuilder;
    .registers 5
    .param p1, "criteria"    # Lcom/android/server/ipm/chimera/AppListBuilder$RunningAppProcessInfoCriteria;

    .line 178
    iget-object v0, p0, Lcom/android/server/ipm/chimera/AppListBuilder;->mRunningAppProcessInfoCriteriaList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    return-object p0
.end method

.method addCriteria(Lcom/android/server/ipm/chimera/AppListBuilder$RunningAppProcessInfoCriteria;Z)Lcom/android/server/ipm/chimera/AppListBuilder;
    .registers 6
    .param p1, "criteria"    # Lcom/android/server/ipm/chimera/AppListBuilder$RunningAppProcessInfoCriteria;
    .param p2, "expected"    # Z

    .line 183
    iget-object v0, p0, Lcom/android/server/ipm/chimera/AppListBuilder;->mRunningAppProcessInfoCriteriaList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    return-object p0
.end method

.method public build()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/ChimeraAppInfo;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/android/server/ipm/chimera/AppListBuilder;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-interface {v0}, Lcom/android/server/ipm/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 62
    .local v0, "runningAppProcessInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;>;"
    invoke-direct {p0, v0}, Lcom/android/server/ipm/chimera/AppListBuilder;->applyRunningAppProcessInfoCriteria(Ljava/util/List;)V

    .line 64
    invoke-direct {p0, v0}, Lcom/android/server/ipm/chimera/AppListBuilder;->buildChimeraAppInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 66
    .local v1, "chimeraAppInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    invoke-direct {p0, v1}, Lcom/android/server/ipm/chimera/AppListBuilder;->calcAppScores(Ljava/util/List;)V

    .line 68
    invoke-direct {p0, v1}, Lcom/android/server/ipm/chimera/AppListBuilder;->applyChimeraAppInfoCriteria(Ljava/util/List;)V

    .line 70
    return-object v1
.end method

.method public setWeightLru(F)V
    .registers 2
    .param p1, "weightLru"    # F

    .line 48
    iput p1, p0, Lcom/android/server/ipm/chimera/AppListBuilder;->mWeightLru:F

    .line 49
    return-void
.end method

.method public setWeightMem(F)V
    .registers 2
    .param p1, "weightMem"    # F

    .line 56
    iput p1, p0, Lcom/android/server/ipm/chimera/AppListBuilder;->mWeightMem:F

    .line 57
    return-void
.end method

.method public setWeightStandbyBucket(F)V
    .registers 2
    .param p1, "weightStandbyBucket"    # F

    .line 52
    iput p1, p0, Lcom/android/server/ipm/chimera/AppListBuilder;->mWeightStandbyBucket:F

    .line 53
    return-void
.end method
