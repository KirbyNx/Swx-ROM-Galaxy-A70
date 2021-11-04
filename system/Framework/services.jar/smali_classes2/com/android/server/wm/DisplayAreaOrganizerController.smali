.class public Lcom/android/server/wm/DisplayAreaOrganizerController;
.super Landroid/window/IDisplayAreaOrganizerController$Stub;
.source "DisplayAreaOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayAreaOrganizerController"


# instance fields
.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private final mOrganizersByFeatureIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/window/IDisplayAreaOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 58
    invoke-direct {p0}, Landroid/window/IDisplayAreaOrganizerController$Stub;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    .line 59
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 60
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DisplayAreaOrganizerController;)Lcom/android/server/wm/WindowManagerGlobalLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 30
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/DisplayAreaOrganizerController;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 30
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    return-object v0
.end method

.method private enforceStackPermission(Ljava/lang/String;)V
    .registers 4
    .param p1, "func"    # Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method static synthetic lambda$registerOrganizer$0(ILandroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .registers 4
    .param p0, "feature"    # I
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "da"    # Lcom/android/server/wm/DisplayArea;

    .line 85
    iget v0, p2, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    if-eq v0, p0, :cond_5

    return-void

    .line 86
    :cond_5
    invoke-virtual {p2, p1}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    .line 87
    return-void
.end method

.method static synthetic lambda$unregisterOrganizer$1(Landroid/window/IDisplayAreaOrganizer;Ljava/util/Map$Entry;)Z
    .registers 4
    .param p0, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p1, "entry"    # Ljava/util/Map$Entry;

    .line 103
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/IDisplayAreaOrganizer;

    invoke-interface {v0}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p0}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method static synthetic lambda$unregisterOrganizer$2(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .registers 3
    .param p0, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p1, "da"    # Lcom/android/server/wm/DisplayArea;

    .line 106
    iget-object v0, p1, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-eq v0, p0, :cond_5

    return-void

    .line 107
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    .line 108
    return-void
.end method


# virtual methods
.method onDisplayAreaAppeared(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .registers 6
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "da"    # Lcom/android/server/wm/DisplayArea;

    .line 117
    :try_start_0
    new-instance v0, Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    const-string v2, "DisplayAreaOrganizerController.onDisplayAreaAppeared"

    invoke-direct {v0, v1, v2}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 119
    .local v0, "outSurfaceControl":Landroid/view/SurfaceControl;
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/window/IDisplayAreaOrganizer;->onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    .line 122
    .end local v0    # "outSurfaceControl":Landroid/view/SurfaceControl;
    goto :goto_14

    .line 120
    :catch_13
    move-exception v0

    .line 123
    :goto_14
    return-void
.end method

.method onDisplayAreaInfoChanged(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .registers 4
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "da"    # Lcom/android/server/wm/DisplayArea;

    .line 135
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/window/IDisplayAreaOrganizer;->onDisplayAreaInfoChanged(Landroid/window/DisplayAreaInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 138
    goto :goto_9

    .line 136
    :catch_8
    move-exception v0

    .line 139
    :goto_9
    return-void
.end method

.method onDisplayAreaVanished(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V
    .registers 4
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "da"    # Lcom/android/server/wm/DisplayArea;

    .line 127
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/window/IDisplayAreaOrganizer;->onDisplayAreaVanished(Landroid/window/DisplayAreaInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 130
    goto :goto_9

    .line 128
    :catch_8
    move-exception v0

    .line 131
    :goto_9
    return-void
.end method

.method public registerOrganizer(Landroid/window/IDisplayAreaOrganizer;I)V
    .registers 9
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "feature"    # I

    .line 69
    const-string/jumbo v0, "registerOrganizer()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 72
    .local v0, "origId":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_58

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 73
    iget-object v3, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4a

    .line 78
    new-instance v3, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;Landroid/window/IDisplayAreaOrganizer;I)V
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_52

    .line 80
    .local v3, "dr":Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;
    :try_start_21
    invoke-interface {p1}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_29} :catch_2a
    .catchall {:try_start_21 .. :try_end_29} :catchall_52

    .line 83
    goto :goto_2b

    .line 81
    :catch_2a
    move-exception v4

    .line 84
    :goto_2b
    :try_start_2b
    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v5, Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$mx6kBh7YI0Ihvd4RL7NvMLiVdwc;

    invoke-direct {v5, p2, p1}, Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$mx6kBh7YI0Ihvd4RL7NvMLiVdwc;-><init>(ILandroid/window/IDisplayAreaOrganizer;)V

    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    .line 89
    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    nop

    .end local v3    # "dr":Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_2b .. :try_end_42} :catchall_52

    :try_start_42
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_58

    .line 92
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    nop

    .line 94
    return-void

    .line 74
    :cond_4a
    :try_start_4a
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Replacing existing organizer currently unsupported"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .end local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .end local p2    # "feature":I
    throw v3

    .line 90
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .restart local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .restart local p2    # "feature":I
    :catchall_52
    move-exception v3

    monitor-exit v2
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_52

    :try_start_54
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .end local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .end local p2    # "feature":I
    throw v3
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_58

    .line 92
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .restart local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    .restart local p2    # "feature":I
    :catchall_58
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    throw v2
.end method

.method public unregisterOrganizer(Landroid/window/IDisplayAreaOrganizer;)V
    .registers 7
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;

    .line 98
    const-string/jumbo v0, "unregisterTaskOrganizer()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 101
    .local v0, "origId":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_39

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 102
    iget-object v3, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$nRbzpv86yu_hPtn9WaGp64X2Pt0;

    invoke-direct {v4, p1}, Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$nRbzpv86yu_hPtn9WaGp64X2Pt0;-><init>(Landroid/window/IDisplayAreaOrganizer;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 105
    iget-object v3, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$PjbOQsmTo9SsqYA5W_I1Ng23PYc;

    invoke-direct {v4, p1}, Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$PjbOQsmTo9SsqYA5W_I1Ng23PYc;-><init>(Landroid/window/IDisplayAreaOrganizer;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    .line 109
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_33

    :try_start_2b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_39

    .line 111
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 112
    nop

    .line 113
    return-void

    .line 109
    :catchall_33
    move-exception v3

    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .end local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    throw v3
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_39

    .line 111
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/DisplayAreaOrganizerController;
    .restart local p1    # "organizer":Landroid/window/IDisplayAreaOrganizer;
    :catchall_39
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 112
    throw v2
.end method
