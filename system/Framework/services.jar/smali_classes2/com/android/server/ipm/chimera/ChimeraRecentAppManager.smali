.class Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;
.super Ljava/lang/Object;
.source "ChimeraRecentAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$RecentAppHandler;,
        Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$ResourceUsageInfo;
    }
.end annotation


# static fields
.field private static final MAX_RECENT_APP_NUM:I = 0xa

.field private static final MSG_CHECK_APP_USAGE_END:I = 0x2

.field private static final MSG_CHECK_APP_USAGE_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ChimeraRecentAppManager"


# instance fields
.field private mHandler:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$RecentAppHandler;

.field final mProcessObserver:Lcom/android/server/ipm/chimera/SystemRepository$ChimeraProcessObserver;

.field mPsiFullTotalList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mPsiListLock:Ljava/lang/Object;

.field mPsiSomeTotalList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mRecentAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$ResourceUsageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecentAppLock:Ljava/lang/Object;

.field private final mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

.field private final mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/chimera/SystemRepository;Lcom/android/server/ipm/chimera/SettingRepository;Landroid/os/Looper;)V
    .registers 5
    .param p1, "systemRepository"    # Lcom/android/server/ipm/chimera/SystemRepository;
    .param p2, "settingRepository"    # Lcom/android/server/ipm/chimera/SettingRepository;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mRecentAppLock:Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mPsiListLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mRecentAppList:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mPsiSomeTotalList:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mPsiFullTotalList:Ljava/util/Map;

    .line 45
    new-instance v0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$1;-><init>(Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;)V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mProcessObserver:Lcom/android/server/ipm/chimera/SystemRepository$ChimeraProcessObserver;

    .line 71
    iput-object p1, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    .line 72
    iput-object p2, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    .line 73
    new-instance v0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$RecentAppHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$RecentAppHandler;-><init>(Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mHandler:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$RecentAppHandler;

    .line 74
    invoke-direct {p0}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->registerProcessObserver()V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;)Lcom/android/server/ipm/chimera/SettingRepository;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;

    .line 24
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;)Lcom/android/server/ipm/chimera/SystemRepository;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;

    .line 24
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;)Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$RecentAppHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;

    .line 24
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mHandler:Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$RecentAppHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;
    .param p1, "x1"    # I

    .line 24
    invoke-direct {p0, p1}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->isRecentAppExist(I)Z

    move-result v0

    return v0
.end method

.method private getPsiInfo(I)Landroid/util/Pair;
    .registers 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mPsiListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mPsiSomeTotalList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 127
    .local v1, "psiSomeTotal":Ljava/lang/Long;
    iget-object v2, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mPsiFullTotalList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 128
    .local v2, "psiFullTotal":Ljava/lang/Long;
    if-eqz v1, :cond_25

    if-eqz v2, :cond_25

    .line 129
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 131
    .end local v1    # "psiSomeTotal":Ljava/lang/Long;
    .end local v2    # "psiFullTotal":Ljava/lang/Long;
    :cond_25
    monitor-exit v0

    .line 132
    const/4 v0, 0x0

    return-object v0

    .line 131
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private isRecentAppExist(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 78
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mPsiSomeTotalList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private registerProcessObserver()V
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mProcessObserver:Lcom/android/server/ipm/chimera/SystemRepository$ChimeraProcessObserver;

    invoke-interface {v0, v1}, Lcom/android/server/ipm/chimera/SystemRepository;->registerProcessObserver(Lcom/android/server/ipm/chimera/SystemRepository$ChimeraProcessObserver;)V

    .line 211
    return-void
.end method


# virtual methods
.method checkAppUsageEnd(I)V
    .registers 29
    .param p1, "uid"    # I

    .line 88
    move-object/from16 v1, p0

    invoke-static/range {p1 .. p1}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->getAllRunningPackagePids(I)Ljava/util/Set;

    move-result-object v2

    .line 89
    .local v2, "pidList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_c3

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_c3

    .line 90
    const-wide/16 v3, 0x0

    .line 91
    .local v3, "pssTotal":J
    const-wide/16 v5, 0x0

    .line 92
    .local v5, "psiSomeTotal":J
    const-wide/16 v7, 0x0

    .line 94
    .local v7, "psiFullTotal":J
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 95
    .local v9, "pid":I
    iget-object v10, v1, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-static {v10, v9}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->getProcPss(Lcom/android/server/ipm/chimera/SystemRepository;I)J

    move-result-wide v10

    .line 96
    .local v10, "pss":J
    add-long/2addr v3, v10

    .line 97
    .end local v9    # "pid":I
    .end local v10    # "pss":J
    goto :goto_18

    .line 99
    :cond_30
    iget-object v0, v1, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-static {v0}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->getAvailableMemoryKb(Lcom/android/server/ipm/chimera/SystemRepository;)J

    move-result-wide v19

    .line 100
    .local v19, "availMem":J
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->getPsiInfo(I)Landroid/util/Pair;

    move-result-object v15

    .line 101
    .local v15, "psiStartInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->updatePsiInfo(I)V

    .line 102
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->getPsiInfo(I)Landroid/util/Pair;

    move-result-object v13

    .line 103
    .local v13, "psiEndInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-eqz v15, :cond_be

    if-eqz v13, :cond_be

    .line 104
    iget-object v0, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v0, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long v21, v9, v11

    .line 105
    .end local v5    # "psiSomeTotal":J
    .local v21, "psiSomeTotal":J
    iget-object v0, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long v23, v5, v9

    .line 110
    .end local v7    # "psiFullTotal":J
    .local v23, "psiFullTotal":J
    iget-object v9, v1, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mPsiListLock:Ljava/lang/Object;

    monitor-enter v9

    .line 111
    :try_start_6c
    iget-object v0, v1, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mPsiSomeTotalList:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, v1, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mPsiFullTotalList:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    monitor-exit v9
    :try_end_7f
    .catchall {:try_start_6c .. :try_end_7f} :catchall_b5

    .line 115
    iget-object v5, v1, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mRecentAppLock:Ljava/lang/Object;

    monitor-enter v5

    .line 116
    :try_start_82
    iget-object v0, v1, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mRecentAppList:Ljava/util/List;

    new-instance v6, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$ResourceUsageInfo;
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_ac

    move-object v9, v6

    move/from16 v10, p1

    move-wide v11, v3

    move-object/from16 v25, v13

    .end local v13    # "psiEndInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v25, "psiEndInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-wide/from16 v13, v19

    move-object/from16 v26, v15

    .end local v15    # "psiStartInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v26, "psiStartInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-wide/from16 v15, v21

    move-wide/from16 v17, v23

    :try_start_94
    invoke-direct/range {v9 .. v18}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$ResourceUsageInfo;-><init>(IJJJJ)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, v1, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mRecentAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v6, 0xa

    if-le v0, v6, :cond_aa

    .line 118
    iget-object v0, v1, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mRecentAppList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 120
    :cond_aa
    monitor-exit v5

    goto :goto_c3

    .end local v25    # "psiEndInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v26    # "psiStartInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v13    # "psiEndInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v15    # "psiStartInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catchall_ac
    move-exception v0

    move-object/from16 v25, v13

    move-object/from16 v26, v15

    .end local v13    # "psiEndInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v15    # "psiStartInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v25    # "psiEndInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v26    # "psiStartInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :goto_b1
    monitor-exit v5
    :try_end_b2
    .catchall {:try_start_94 .. :try_end_b2} :catchall_b3

    throw v0

    :catchall_b3
    move-exception v0

    goto :goto_b1

    .line 113
    .end local v25    # "psiEndInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v26    # "psiStartInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v13    # "psiEndInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v15    # "psiStartInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catchall_b5
    move-exception v0

    move-object/from16 v25, v13

    move-object/from16 v26, v15

    .end local v13    # "psiEndInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v15    # "psiStartInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v25    # "psiEndInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v26    # "psiStartInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :goto_ba
    :try_start_ba
    monitor-exit v9
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_bc

    throw v0

    :catchall_bc
    move-exception v0

    goto :goto_ba

    .line 103
    .end local v21    # "psiSomeTotal":J
    .end local v23    # "psiFullTotal":J
    .end local v25    # "psiEndInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v26    # "psiStartInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v5    # "psiSomeTotal":J
    .restart local v7    # "psiFullTotal":J
    .restart local v13    # "psiEndInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v15    # "psiStartInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_be
    move-object/from16 v25, v13

    move-object/from16 v26, v15

    .line 107
    .end local v13    # "psiEndInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v15    # "psiStartInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v25    # "psiEndInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v26    # "psiStartInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    return-void

    .line 122
    .end local v3    # "pssTotal":J
    .end local v5    # "psiSomeTotal":J
    .end local v7    # "psiFullTotal":J
    .end local v19    # "availMem":J
    .end local v25    # "psiEndInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v26    # "psiStartInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_c3
    :goto_c3
    return-void
.end method

.method checkAppUsageStart(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->updatePsiInfo(I)V

    .line 84
    return-void
.end method

.method getRecentAppInfo()Ljava/util/ArrayList;
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 137
    move-object/from16 v1, p0

    const-wide/16 v2, 0x0

    .line 138
    .local v2, "avgPss":J
    const-wide/16 v4, 0x0

    .line 139
    .local v4, "avgAvaiMem":J
    const-wide/16 v6, 0x0

    .line 140
    .local v6, "avgPsiSomeTotal":J
    const-wide/16 v8, 0x0

    .line 141
    .local v8, "avgPsiFullTotal":J
    const/4 v10, 0x0

    .line 142
    .local v10, "appCnt":I
    const-wide/16 v11, 0x0

    .line 143
    .local v11, "lastpsiSomeTotal":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 145
    .local v13, "recentAppInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v14, v1, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mRecentAppLock:Ljava/lang/Object;

    monitor-enter v14

    .line 146
    :try_start_16
    iget-object v0, v1, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mRecentAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_e5

    if-lez v0, :cond_86

    .line 147
    const-wide/16 v15, 0x0

    .line 148
    .local v15, "totalPss":J
    const-wide/16 v17, 0x0

    .line 149
    .local v17, "totalAvaiMem":J
    const-wide/16 v19, 0x0

    .line 150
    .local v19, "totalPsiSome":J
    const-wide/16 v21, 0x0

    .line 151
    .local v21, "totalPsiFull":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27
    move-wide/from16 v23, v2

    .end local v2    # "avgPss":J
    .local v23, "avgPss":J
    :try_start_29
    iget-object v2, v1, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mRecentAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6e

    .line 152
    iget-object v2, v1, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mRecentAppList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$ResourceUsageInfo;

    .line 153
    .local v2, "appInfo":Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$ResourceUsageInfo;
    invoke-virtual {v2}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->getAppPss()J

    move-result-wide v25

    .line 154
    .local v25, "pss":J
    invoke-virtual {v2}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->getAvailMem()J

    move-result-wide v27

    .line 155
    .local v27, "avaiMem":J
    invoke-virtual {v2}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->getPsiSomeTotal()J

    move-result-wide v29

    .line 156
    .local v29, "psiSomeTotal":J
    invoke-virtual {v2}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->getPsiFullTotal()J

    move-result-wide v31

    .line 157
    .local v31, "total":J
    const-wide/16 v33, 0x0

    cmp-long v3, v25, v33

    if-lez v3, :cond_5d

    cmp-long v3, v27, v33

    if-lez v3, :cond_5d

    .line 158
    add-long v15, v15, v25

    .line 159
    add-long v17, v17, v27

    .line 160
    add-long v19, v19, v29

    .line 161
    add-long v21, v21, v31

    .line 162
    add-int/lit8 v10, v10, 0x1

    .line 165
    :cond_5d
    iget-object v3, v1, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mRecentAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_69

    .line 166
    move-wide/from16 v11, v29

    .line 151
    .end local v2    # "appInfo":Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$ResourceUsageInfo;
    .end local v25    # "pss":J
    .end local v27    # "avaiMem":J
    .end local v29    # "psiSomeTotal":J
    .end local v31    # "total":J
    :cond_69
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v2, v23

    goto :goto_27

    .line 169
    .end local v0    # "i":I
    :cond_6e
    int-to-long v2, v10

    div-long v2, v15, v2

    .line 170
    .end local v23    # "avgPss":J
    .local v2, "avgPss":J
    move-wide/from16 v23, v2

    .end local v2    # "avgPss":J
    .restart local v23    # "avgPss":J
    int-to-long v2, v10

    div-long v2, v17, v2

    move-wide v4, v2

    .line 171
    int-to-long v2, v10

    div-long v2, v19, v2

    move-wide v6, v2

    .line 172
    int-to-long v2, v10

    div-long v2, v21, v2
    :try_end_7e
    .catchall {:try_start_29 .. :try_end_7e} :catchall_82

    move-wide v8, v2

    move-wide/from16 v2, v23

    goto :goto_88

    .line 174
    .end local v15    # "totalPss":J
    .end local v17    # "totalAvaiMem":J
    .end local v19    # "totalPsiSome":J
    .end local v21    # "totalPsiFull":J
    :catchall_82
    move-exception v0

    move-wide/from16 v2, v23

    goto :goto_e8

    .line 146
    .end local v23    # "avgPss":J
    .restart local v2    # "avgPss":J
    :cond_86
    move-wide/from16 v23, v2

    .line 174
    :goto_88
    :try_start_88
    monitor-exit v14
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_ea

    .line 175
    iget-object v0, v1, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getRecentAppInfo(): count:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " pss:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " avaiMem:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " avgPsiSomeTotal:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " avgPsiFullTotal:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ChimeraRecentAppManager"

    invoke-interface {v0, v15, v14}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    return-object v13

    .line 174
    :catchall_e5
    move-exception v0

    move-wide/from16 v23, v2

    :goto_e8
    :try_start_e8
    monitor-exit v14
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_ea

    throw v0

    :catchall_ea
    move-exception v0

    goto :goto_e8
.end method

.method updatePsiInfo(I)V
    .registers 11
    .param p1, "uid"    # I

    .line 189
    const-wide/16 v0, 0x0

    .line 190
    .local v0, "psiSomeTotal":J
    const-wide/16 v2, 0x0

    .line 192
    .local v2, "psiFullTotal":J
    sget-object v4, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;->MEMORY:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;

    sget-object v5, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;->TOTAL:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;

    invoke-static {v4, v5}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->getPsiFile(Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFileType;Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiDataType;)Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;

    move-result-object v4

    .line 195
    .local v4, "psi":Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;
    invoke-virtual {v4}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 196
    iget-object v5, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    const-string v6, "ChimeraRecentAppManager"

    const-string v7, "No permission - psi memory"

    invoke-interface {v5, v6, v7}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 198
    :cond_1c
    invoke-virtual {v4}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;->getPsiSomeTotal()J

    move-result-wide v0

    .line 199
    invoke-virtual {v4}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$PsiFile;->getPsiFullTotal()J

    move-result-wide v2

    .line 201
    :goto_24
    iget-object v5, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " psiSomeTotal:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " psiFullTotal:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ChimeraRecentAppManager"

    invoke-interface {v5, v7, v6}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v5, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mPsiListLock:Ljava/lang/Object;

    monitor-enter v5

    .line 204
    :try_start_50
    iget-object v6, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mPsiSomeTotalList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v6, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;->mPsiFullTotalList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    monitor-exit v5

    .line 207
    return-void

    .line 206
    :catchall_6c
    move-exception v6

    monitor-exit v5
    :try_end_6e
    .catchall {:try_start_50 .. :try_end_6e} :catchall_6c

    throw v6
.end method
