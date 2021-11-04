.class public Lcom/android/server/wm/MultiSplitBlockListController;
.super Ljava/lang/Object;
.source "MultiSplitBlockListController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MultiSplitBlockListController$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiSplitBlockListController"


# instance fields
.field private final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mBlocklistPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeferredBlocklistPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private mH:Lcom/android/server/wm/MultiSplitBlockListController$H;

.field private final mLock:Ljava/lang/Object;

.field private final mMultiSplitBlocklistChangedCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/PolicyDataMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mBlocklistPackages:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mDeferredBlocklistPackages:Ljava/util/Set;

    .line 78
    new-instance v0, Lcom/android/server/wm/-$$Lambda$MultiSplitBlockListController$SPelSBylKPNX9ku21qXvHllifXE;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$MultiSplitBlockListController$SPelSBylKPNX9ku21qXvHllifXE;-><init>(Lcom/android/server/wm/MultiSplitBlockListController;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mMultiSplitBlocklistChangedCallback:Ljava/util/function/Consumer;

    .line 62
    iput-object p1, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 63
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/MultiSplitBlockListController;)Lcom/android/server/wm/WindowManagerGlobalLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MultiSplitBlockListController;

    .line 39
    iget-object v0, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/MultiSplitBlockListController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/MultiSplitBlockListController;

    .line 39
    invoke-direct {p0}, Lcom/android/server/wm/MultiSplitBlockListController;->updateDeferredBlockListLocked()V

    return-void
.end method

.method private getFinalBlockListLocked()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mBlocklistPackages:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    .local v1, "finalBlocklistPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2c

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mDeferredBlocklistPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 136
    .local v2, "deferredPackage":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 137
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 139
    :cond_27
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .end local v2    # "deferredPackage":Ljava/lang/String;
    :goto_2a
    goto :goto_11

    .line 142
    :cond_2b
    return-object v1

    .line 133
    .end local v1    # "finalBlocklistPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private updateDeferredBlockListLocked()V
    .registers 6

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mDeferredBlocklistPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 114
    iget-object v0, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRawTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 115
    .local v0, "recentTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 116
    .local v2, "task":Lcom/android/server/wm/Task;
    iget-object v3, v2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mDeferredBlocklistPackages:Ljava/util/Set;

    iget-object v4, v2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 117
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 118
    goto :goto_13

    .line 120
    :cond_32
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isDeferredResizeModeTaskLocked()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 121
    iget-object v3, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mDeferredBlocklistPackages:Ljava/util/Set;

    iget-object v4, v2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_43
    goto :goto_13

    .line 124
    :cond_44
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mDeferredBlocklistPackages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_69

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDeferredBlockListLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mDeferredBlocklistPackages:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiSplitBlockListController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_69
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 184
    const-string v0, "[MultiSplitBlockListController]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mBlocklistPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_43

    .line 188
    const-string v1, "(mBlocklistPackages)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 190
    const/4 v1, 0x0

    .line 191
    .local v1, "numPrint":I
    iget-object v2, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mBlocklistPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 192
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v4, v1, 0x5

    if-nez v4, :cond_3a

    .line 194
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 195
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 197
    :cond_3a
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 198
    .end local v3    # "pkgName":Ljava/lang/String;
    goto :goto_1f

    .line 199
    :cond_40
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 201
    .end local v1    # "numPrint":I
    :cond_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_8 .. :try_end_44} :catchall_80

    .line 203
    iget-object v0, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mDeferredBlocklistPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 204
    const-string v0, "(mDeferredBlocklistPackages)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "numPrint":I
    iget-object v1, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mDeferredBlocklistPackages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 208
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v3, v0, 0x5

    if-nez v3, :cond_76

    .line 210
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 211
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 213
    :cond_76
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 214
    .end local v2    # "pkgName":Ljava/lang/String;
    goto :goto_5b

    .line 215
    :cond_7c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 217
    .end local v0    # "numPrint":I
    :cond_7f
    return-void

    .line 201
    :catchall_80
    move-exception v1

    :try_start_81
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v1
.end method

.method getBlocklistAppList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 157
    invoke-direct {p0}, Lcom/android/server/wm/MultiSplitBlockListController;->getFinalBlockListLocked()Ljava/util/ArrayList;

    move-result-object v1

    .line 158
    .local v1, "finalBlocklistPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 159
    .end local v1    # "finalBlocklistPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getMultiSplitBlocklistChangedCallbackLocked()Ljava/util/function/Consumer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/PolicyDataMap;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mMultiSplitBlocklistChangedCallback:Ljava/util/function/Consumer;

    return-object v0
.end method

.method public initialize()V
    .registers 3

    .line 68
    new-instance v0, Lcom/android/server/wm/MultiSplitBlockListController$H;

    iget-object v1, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MultiSplitBlockListController$H;-><init>(Lcom/android/server/wm/MultiSplitBlockListController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mH:Lcom/android/server/wm/MultiSplitBlockListController$H;

    .line 69
    return-void
.end method

.method isBlocklistApp(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 146
    if-nez p1, :cond_4

    .line 147
    const/4 v0, 0x0

    return v0

    .line 149
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 150
    invoke-direct {p0}, Lcom/android/server/wm/MultiSplitBlockListController;->getFinalBlockListLocked()Ljava/util/ArrayList;

    move-result-object v1

    .line 151
    .local v1, "finalBlocklistPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 152
    .end local v1    # "finalBlocklistPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isMultiSplitBlocklistPackageLocked(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mBlocklistPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 109
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public synthetic lambda$new$0$MultiSplitBlockListController(Lcom/android/server/wm/PolicyDataMap;)V
    .registers 7
    .param p1, "policyDataMap"    # Lcom/android/server/wm/PolicyDataMap;

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mBlocklistPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 81
    invoke-virtual {p1}, Lcom/android/server/wm/PolicyDataMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 82
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "b"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 83
    iget-object v3, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mBlocklistPackages:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_33
    goto :goto_10

    .line 86
    :cond_34
    iget-object v1, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mH:Lcom/android/server/wm/MultiSplitBlockListController$H;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/MultiSplitBlockListController$H;->removeMessages(I)V

    .line 87
    iget-object v1, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mH:Lcom/android/server/wm/MultiSplitBlockListController$H;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/MultiSplitBlockListController$H;->sendEmptyMessage(I)Z

    .line 88
    monitor-exit v0

    .line 89
    return-void

    .line 88
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method

.method removeFromDeferredBlocklistIfNeeedLocked(Lcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 97
    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_5

    .line 98
    return-void

    .line 100
    :cond_5
    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/MultiSplitBlockListController;->mDeferredBlocklistPackages:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 102
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->updateResizeModeFromBlockListLocked()V

    .line 104
    :cond_16
    return-void
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 73
    return-void
.end method
