.class public final Lcom/android/server/wm/CoreStateController;
.super Ljava/lang/Object;
.source "CoreStateController.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CoreStateController"

.field private static final sCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Lcom/samsung/android/server/corestate/CoreStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final sObserverControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/corestate/CoreStateObserverController;",
            ">;"
        }
    .end annotation
.end field

.field private static final sObserverControllersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Lcom/samsung/android/server/corestate/CoreStateObserverController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mInitialized:Z

.field private final mStatesForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/CoreStateController;->sObserverControllers:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wm/CoreStateController;->sObserverControllersMap:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wm/CoreStateController;->sCallbacks:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 4
    .param p1, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    .line 58
    const-string v0, "CoreStateController"

    const-string v1, "CoreStateController()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iput-object p1, p0, Lcom/android/server/wm/CoreStateController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 60
    return-void
.end method

.method private notifyCoreStatesChangedLocked(ILjava/lang/Runnable;)V
    .registers 15
    .param p1, "userId"    # I
    .param p2, "postRunnable"    # Ljava/lang/Runnable;

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 175
    .local v0, "states":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/server/wm/CoreStateController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    const/4 v2, 0x1

    if-ne v1, p1, :cond_13

    move v1, v2

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 177
    .local v1, "isCurrentUser":Z
    :goto_14
    const/4 v3, 0x0

    .line 178
    .local v3, "coreStateChanges":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_55

    iget-object v4, p0, Lcom/android/server/wm/CoreStateController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    if-eqz v4, :cond_55

    .line 179
    iget-object v4, p0, Lcom/android/server/wm/CoreStateController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual {v4, v0}, Landroid/app/ActivityThread;->onCoreStatesChange(Landroid/os/Bundle;)Ljava/util/HashMap;

    move-result-object v3

    .line 180
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 181
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class;Ljava/lang/Integer;>;"
    sget-object v6, Lcom/android/server/wm/CoreStateController;->sCallbacks:Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/corestate/CoreStateCallback;

    .line 182
    .local v6, "callback":Lcom/samsung/android/server/corestate/CoreStateCallback;
    if-eqz v6, :cond_54

    .line 183
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/samsung/android/server/corestate/CoreStateCallback;->onCoreStateChanged(I)V

    .line 185
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class;Ljava/lang/Integer;>;"
    .end local v6    # "callback":Lcom/samsung/android/server/corestate/CoreStateCallback;
    :cond_54
    goto :goto_2d

    .line 188
    :cond_55
    iget-object v4, p0, Lcom/android/server/wm/CoreStateController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessControllerMap;->getPidMap()Landroid/util/SparseArray;

    move-result-object v4

    .line 189
    .local v4, "pidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v2

    .local v5, "i":I
    :goto_62
    if-ltz v5, :cond_ce

    .line 190
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 191
    .local v2, "pid":I
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowProcessController;

    .line 193
    .local v6, "app":Lcom/android/server/wm/WindowProcessController;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v7

    sget v8, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const-string v9, "CoreStateController"

    if-eq v7, v8, :cond_7c

    iget v7, v6, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    if-eq v7, p1, :cond_92

    .line 194
    :cond_7c
    if-eqz v1, :cond_cb

    iget v7, v6, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    if-nez v7, :cond_cb

    iget-object v7, v6, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 196
    const-string v8, "com.android.systemui"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cb

    .line 199
    const-string/jumbo v7, "update systemUI\'s states with current user\'s."

    invoke-static {v9, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_92
    :try_start_92
    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    .line 207
    .local v7, "thread":Landroid/app/IApplicationThread;
    if-eqz v7, :cond_c6

    .line 209
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notifyCoreStatesChangedLocked: schedule CoreStateChangeItem, pid="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v9

    .line 213
    .local v9, "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-static {v0}, Landroid/app/servertransaction/CoreStatesChangeItem;->obtain(Landroid/os/Bundle;)Landroid/app/servertransaction/CoreStatesChangeItem;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 214
    iget-object v10, p0, Lcom/android/server/wm/CoreStateController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v10

    .line 215
    invoke-static {v0}, Landroid/app/servertransaction/CoreStatesChangeItem;->obtain(Landroid/os/Bundle;)Landroid/app/servertransaction/CoreStatesChangeItem;

    move-result-object v11

    .line 214
    invoke-virtual {v10, v7, v8, v11}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_c6} :catch_c7

    .line 219
    .end local v7    # "thread":Landroid/app/IApplicationThread;
    .end local v9    # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    :cond_c6
    goto :goto_cb

    .line 217
    :catch_c7
    move-exception v7

    .line 218
    .local v7, "re":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 189
    .end local v2    # "pid":I
    .end local v6    # "app":Lcom/android/server/wm/WindowProcessController;
    .end local v7    # "re":Landroid/os/RemoteException;
    :cond_cb
    :goto_cb
    add-int/lit8 v5, v5, -0x1

    goto :goto_62

    .line 222
    .end local v5    # "i":I
    :cond_ce
    if-eqz v3, :cond_100

    .line 223
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_100

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 224
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class;Ljava/lang/Integer;>;"
    sget-object v6, Lcom/android/server/wm/CoreStateController;->sCallbacks:Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/corestate/CoreStateCallback;

    .line 225
    .local v6, "callback":Lcom/samsung/android/server/corestate/CoreStateCallback;
    if-eqz v6, :cond_ff

    .line 226
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/samsung/android/server/corestate/CoreStateCallback;->onPostCoreStateChanged(I)V

    .line 228
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class;Ljava/lang/Integer;>;"
    .end local v6    # "callback":Lcom/samsung/android/server/corestate/CoreStateCallback;
    :cond_ff
    goto :goto_d8

    .line 231
    :cond_100
    if-eqz p2, :cond_105

    .line 232
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 234
    :cond_105
    return-void
.end method


# virtual methods
.method public createObserverController(Lcom/samsung/android/server/corestate/CoreStateSettingObserver;Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;Ljava/lang/Class;)Lcom/samsung/android/server/corestate/CoreStateObserverController;
    .registers 13
    .param p1, "settingObserver"    # Lcom/samsung/android/server/corestate/CoreStateSettingObserver;
    .param p2, "systemFeatureObserver"    # Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;
    .param p3, "volatileObserver"    # Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;
    .param p4, "targetClazz"    # Ljava/lang/Class;

    .line 66
    new-instance v7, Lcom/samsung/android/server/corestate/CoreStateObserverController;

    iget-object v1, p0, Lcom/android/server/wm/CoreStateController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object v0, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/corestate/CoreStateObserverController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/CoreStateController;Lcom/samsung/android/server/corestate/CoreStateSettingObserver;Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;Ljava/lang/Class;)V

    return-object v7
.end method

.method public getCoreStates(I)Landroid/os/Bundle;
    .registers 5
    .param p1, "userId"    # I

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 148
    iget-object v1, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 149
    .local v1, "states":Landroid/os/Bundle;
    if-nez v1, :cond_18

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto :goto_1e

    :cond_18
    invoke-virtual {v1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 150
    .end local v1    # "states":Landroid/os/Bundle;
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method initializeLocked()V
    .registers 5

    .line 83
    const-string v0, "CoreStateController"

    const-string/jumbo v1, "initializeLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    :cond_1b
    sget-object v0, Lcom/android/server/wm/CoreStateController;->sObserverControllers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 88
    :try_start_1e
    sget-object v2, Lcom/android/server/wm/CoreStateController;->sObserverControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/corestate/CoreStateObserverController;

    .line 89
    .local v3, "controller":Lcom/samsung/android/server/corestate/CoreStateObserverController;
    invoke-virtual {v3}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->init()V

    .line 90
    .end local v3    # "controller":Lcom/samsung/android/server/corestate/CoreStateObserverController;
    goto :goto_24

    .line 91
    :cond_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_1e .. :try_end_35} :catchall_3d

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/CoreStateController;->notifyCoreStatesChangedLocked(ILjava/lang/Runnable;)V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/CoreStateController;->mInitialized:Z

    .line 94
    return-void

    .line 91
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public onCoreStateChanged(Ljava/lang/Class;IZLjava/lang/Runnable;)V
    .registers 11
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "userId"    # I
    .param p3, "notifyToApp"    # Z
    .param p4, "postRunnable"    # Ljava/lang/Runnable;

    .line 154
    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 155
    sget-object v1, Lcom/android/server/wm/CoreStateController;->sObserverControllersMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/corestate/CoreStateObserverController;

    invoke-virtual {v1, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->getCoreStateLocked(I)Landroid/os/Bundle;

    move-result-object v1

    .line 156
    .local v1, "state":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 157
    .local v2, "states":Landroid/os/Bundle;
    if-nez v2, :cond_3f

    .line 158
    const-string v3, "CoreStateController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " doesn\'t have states onCoreStateChanged()."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_7b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 161
    :cond_3f
    :try_start_3f
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 164
    const-string v3, "CoreStateController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCoreStateChanged() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", [u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    if-eqz p3, :cond_76

    .line 168
    invoke-direct {p0, p2, p4}, Lcom/android/server/wm/CoreStateController;->notifyCoreStatesChangedLocked(ILjava/lang/Runnable;)V

    .line 170
    .end local v1    # "state":Landroid/os/Bundle;
    .end local v2    # "states":Landroid/os/Bundle;
    :cond_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_3f .. :try_end_77} :catchall_7b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 171
    return-void

    .line 170
    :catchall_7b
    move-exception v1

    :try_start_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method registerObserverControllerLocked(Lcom/samsung/android/server/corestate/CoreStateObserverController;Lcom/samsung/android/server/corestate/CoreStateCallback;)V
    .registers 5
    .param p1, "controller"    # Lcom/samsung/android/server/corestate/CoreStateObserverController;
    .param p2, "callback"    # Lcom/samsung/android/server/corestate/CoreStateCallback;

    .line 72
    iget-boolean v0, p0, Lcom/android/server/wm/CoreStateController;->mInitialized:Z

    if-nez v0, :cond_1e

    .line 75
    sget-object v0, Lcom/android/server/wm/CoreStateController;->sObserverControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/server/wm/CoreStateController;->sObserverControllersMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->getTargetClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    if-eqz p2, :cond_1d

    .line 78
    sget-object v0, Lcom/android/server/wm/CoreStateController;->sCallbacks:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->getTargetClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_1d
    return-void

    .line 73
    :cond_1e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Try to registerObserverControllerLocked after initialized!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSharedPreferenceEdited(Ljava/lang/Class;I)V
    .registers 5
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "userId"    # I

    .line 138
    sget-object v0, Lcom/android/server/wm/CoreStateController;->sObserverControllers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 139
    :try_start_3
    sget-object v1, Lcom/android/server/wm/CoreStateController;->sObserverControllersMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/corestate/CoreStateObserverController;

    .line 140
    .local v1, "controller":Lcom/samsung/android/server/corestate/CoreStateObserverController;
    if-eqz v1, :cond_10

    .line 141
    invoke-virtual {v1, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->onCoreStateChanged(I)V

    .line 143
    .end local v1    # "controller":Lcom/samsung/android/server/corestate/CoreStateObserverController;
    :cond_10
    monitor-exit v0

    .line 144
    return-void

    .line 143
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public setVolatileState(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;IZZ)V
    .registers 15
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "userId"    # I
    .param p5, "notify"    # Z
    .param p6, "notifyImmediately"    # Z

    .line 126
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/CoreStateController;->setVolatileState(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;IZZLjava/lang/Runnable;)V

    .line 127
    return-void
.end method

.method public setVolatileState(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;IZZLjava/lang/Runnable;)V
    .registers 16
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "userId"    # I
    .param p5, "notify"    # Z
    .param p6, "notifyImmediately"    # Z
    .param p7, "postRunnable"    # Ljava/lang/Runnable;

    .line 131
    sget-object v0, Lcom/android/server/wm/CoreStateController;->sObserverControllersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;

    .line 132
    .local v0, "controller":Lcom/samsung/android/server/corestate/CoreStateObserverController;
    if-eqz v0, :cond_14

    .line 133
    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->setVolatileState(Ljava/lang/String;Ljava/lang/Object;IZZLjava/lang/Runnable;)V

    .line 135
    :cond_14
    return-void
.end method

.method public startUserLocked(IZZ)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z
    .param p3, "needStart"    # Z

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    :cond_12
    sget-object v0, Lcom/android/server/wm/CoreStateController;->sObserverControllers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 102
    :try_start_15
    const-string v1, "CoreStateController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startUserLocked(u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v1, Lcom/android/server/wm/CoreStateController;->sObserverControllers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/corestate/CoreStateObserverController;

    .line 105
    .local v2, "controller":Lcom/samsung/android/server/corestate/CoreStateObserverController;
    invoke-virtual {v2, p1, p2, p3}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->startUserLocked(IZZ)V

    .line 106
    .end local v2    # "controller":Lcom/samsung/android/server/corestate/CoreStateObserverController;
    goto :goto_42

    .line 107
    :cond_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_15 .. :try_end_53} :catchall_58

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/CoreStateController;->notifyCoreStatesChangedLocked(ILjava/lang/Runnable;)V

    .line 109
    return-void

    .line 107
    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method public stopUserLocked(IZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "willBeRemoved"    # Z

    .line 112
    sget-object v0, Lcom/android/server/wm/CoreStateController;->sObserverControllers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 113
    :try_start_3
    const-string v1, "CoreStateController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopUserLocked(u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v1, p0, Lcom/android/server/wm/CoreStateController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getStartedUserIdsLocked()Ljava/util/ArrayList;

    move-result-object v1

    .line 115
    .local v1, "startedUserIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v2, Lcom/android/server/wm/CoreStateController;->sObserverControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/corestate/CoreStateObserverController;

    .line 116
    .local v3, "observerController":Lcom/samsung/android/server/corestate/CoreStateObserverController;
    invoke-virtual {v3, v1, p1, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->stopUserLocked(Ljava/util/ArrayList;IZ)V

    .line 117
    .end local v3    # "observerController":Lcom/samsung/android/server/corestate/CoreStateObserverController;
    goto :goto_2d

    .line 118
    .end local v1    # "startedUserIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_4c

    .line 119
    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 122
    :cond_4b
    return-void

    .line 118
    :catchall_4c
    move-exception v1

    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v1
.end method
