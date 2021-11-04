.class public Lcom/samsung/android/server/corestate/CoreStateObserverController;
.super Ljava/lang/Object;
.source "CoreStateObserverController.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CoreStateObserverController"


# instance fields
.field private final StateForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mController:Lcom/android/server/wm/CoreStateController;

.field private final mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

.field private final mSystemFeatureObserver:Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

.field private final mTargetClass:Ljava/lang/Class;

.field private final mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/CoreStateController;Lcom/samsung/android/server/corestate/CoreStateSettingObserver;Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;Ljava/lang/Class;)V
    .registers 9
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "controller"    # Lcom/android/server/wm/CoreStateController;
    .param p3, "settingObserver"    # Lcom/samsung/android/server/corestate/CoreStateSettingObserver;
    .param p4, "systemFeatureObserver"    # Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;
    .param p5, "volatileObserver"    # Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;
    .param p6, "targetClass"    # Ljava/lang/Class;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->StateForUser:Landroid/util/SparseArray;

    .line 51
    const-string v0, "CoreStateObserverController"

    const-string v1, "CoreStateController()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 53
    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mController:Lcom/android/server/wm/CoreStateController;

    .line 54
    iput-object p3, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    .line 55
    iput-object p4, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSystemFeatureObserver:Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

    .line 56
    iput-object p5, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    .line 57
    iput-object p6, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mTargetClass:Ljava/lang/Class;

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->setObserverController()V

    .line 60
    return-void
.end method

.method private populateCoreState(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "populateCoreState(u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoreStateObserverController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->StateForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 158
    .local v0, "state":Landroid/os/Bundle;
    if-nez v0, :cond_37

    .line 159
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 160
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->StateForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSystemFeatureObserver:Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

    if-eqz v1, :cond_37

    .line 162
    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->populateState(Landroid/os/Bundle;I)I

    .line 166
    :cond_37
    const/4 v1, 0x0

    .line 167
    .local v1, "changes":I
    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    if-eqz v2, :cond_41

    .line 168
    invoke-virtual {v2, v0, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->populateState(Landroid/os/Bundle;I)I

    move-result v2

    or-int/2addr v1, v2

    .line 170
    :cond_41
    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    if-eqz v2, :cond_4a

    .line 171
    invoke-virtual {v2, v0, p1}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->populateState(Landroid/os/Bundle;I)I

    move-result v2

    or-int/2addr v1, v2

    .line 173
    :cond_4a
    return v1
.end method

.method private sendCoreState(ZI)V
    .registers 4
    .param p1, "fromInitialize"    # Z
    .param p2, "userId"    # I

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->sendCoreState(ZILjava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method private sendCoreState(ZILjava/lang/Runnable;)V
    .registers 11
    .param p1, "fromInitialize"    # Z
    .param p2, "userId"    # I
    .param p3, "postRunnable"    # Ljava/lang/Runnable;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCoreState(u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoreStateObserverController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->populateCoreState(I)I

    move-result v0

    .line 138
    .local v0, "changed":I
    if-eqz p1, :cond_2a

    .line 140
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mController:Lcom/android/server/wm/CoreStateController;

    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mTargetClass:Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p3}, Lcom/android/server/wm/CoreStateController;->onCoreStateChanged(Ljava/lang/Class;IZLjava/lang/Runnable;)V

    goto :goto_66

    .line 141
    :cond_2a
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_59

    .line 142
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getStartedUserIdsLocked()Ljava/util/ArrayList;

    move-result-object v1

    .line 143
    .local v1, "startedUserIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 144
    .local v4, "startedUserId":I
    if-eq v4, p2, :cond_50

    .line 145
    invoke-direct {p0, v4}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->populateCoreState(I)I

    .line 147
    :cond_50
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mController:Lcom/android/server/wm/CoreStateController;

    iget-object v6, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mTargetClass:Ljava/lang/Class;

    invoke-virtual {v5, v6, v4, v2, p3}, Lcom/android/server/wm/CoreStateController;->onCoreStateChanged(Ljava/lang/Class;IZLjava/lang/Runnable;)V

    .line 148
    .end local v4    # "startedUserId":I
    goto :goto_3b

    .line 143
    .end local v1    # "startedUserIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_58
    goto :goto_65

    .line 149
    :cond_59
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_65

    .line 150
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mController:Lcom/android/server/wm/CoreStateController;

    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mTargetClass:Ljava/lang/Class;

    invoke-virtual {v1, v3, p2, v2, p3}, Lcom/android/server/wm/CoreStateController;->onCoreStateChanged(Ljava/lang/Class;IZLjava/lang/Runnable;)V

    goto :goto_66

    .line 149
    :cond_65
    :goto_65
    nop

    .line 152
    :goto_66
    return-void
.end method

.method private setObserverController()V
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    if-eqz v0, :cond_7

    .line 64
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->setObserverController(Lcom/samsung/android/server/corestate/CoreStateObserverController;)V

    .line 66
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    if-eqz v0, :cond_e

    .line 67
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->setObserverController(Lcom/samsung/android/server/corestate/CoreStateObserverController;)V

    .line 69
    :cond_e
    return-void
.end method


# virtual methods
.method public getCoreStateLocked(I)Landroid/os/Bundle;
    .registers 4
    .param p1, "userId"    # I

    .line 125
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->StateForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 126
    .local v0, "states":Landroid/os/Bundle;
    if-nez v0, :cond_10

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_16

    :cond_10
    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    :goto_16
    return-object v1
.end method

.method public getTargetClass()Ljava/lang/Class;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mTargetClass:Ljava/lang/Class;

    return-object v0
.end method

.method public init()V
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSystemFeatureObserver:Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

    if-eqz v0, :cond_7

    .line 73
    invoke-virtual {v0}, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->init()V

    .line 75
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    if-eqz v0, :cond_e

    .line 76
    invoke-virtual {v0}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->beginObserveCoreStateSettings()V

    .line 78
    :cond_e
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->sendCoreState(ZI)V

    .line 79
    return-void
.end method

.method public onCoreStateChanged(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->onCoreStateChanged(ILjava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method public onCoreStateChanged(ILjava/lang/Runnable;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "postRunnable"    # Ljava/lang/Runnable;

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->sendCoreState(ZILjava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method public setVolatileState(Ljava/lang/String;Ljava/lang/Object;IZZLjava/lang/Runnable;)V
    .registers 14
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "userId"    # I
    .param p4, "notify"    # Z
    .param p5, "notifyImmediately"    # Z
    .param p6, "postRunnable"    # Ljava/lang/Runnable;

    .line 111
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    if-eqz v0, :cond_d

    .line 112
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->setState(Ljava/lang/String;Ljava/lang/Object;IZZLjava/lang/Runnable;)V

    .line 114
    :cond_d
    return-void
.end method

.method public startUserLocked(IZZ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z
    .param p3, "needStart"    # Z

    .line 82
    if-eqz p3, :cond_9

    .line 83
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    if-eqz v0, :cond_9

    .line 84
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->beginObserveCoreStateSettingsForSingleUser(I)V

    .line 88
    :cond_9
    if-nez p3, :cond_d

    if-eqz p2, :cond_11

    .line 91
    :cond_d
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->sendCoreState(ZI)V

    .line 93
    :cond_11
    return-void
.end method

.method public stopUserLocked(Ljava/util/ArrayList;IZ)V
    .registers 5
    .param p2, "userId"    # I
    .param p3, "willBeRemoved"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    .line 96
    .local p1, "startedUserIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    if-eqz v0, :cond_7

    .line 97
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->endObserveCoreStateSettingsForSingleUser(Ljava/util/ArrayList;I)V

    .line 99
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->StateForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 102
    if-eqz p3, :cond_15

    .line 103
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    if-eqz v0, :cond_15

    .line 104
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->removeStatesForUser(I)V

    .line 107
    :cond_15
    return-void
.end method
