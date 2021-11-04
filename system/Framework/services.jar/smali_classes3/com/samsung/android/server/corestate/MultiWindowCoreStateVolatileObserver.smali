.class public Lcom/samsung/android/server/corestate/MultiWindowCoreStateVolatileObserver;
.super Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;
.source "MultiWindowCoreStateVolatileObserver.java"


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;-><init>(Landroid/os/Handler;)V

    .line 30
    return-void
.end method


# virtual methods
.method public registerObservingItems()V
    .registers 5

    .line 35
    iget-object v0, p0, Lcom/samsung/android/server/corestate/MultiWindowCoreStateVolatileObserver;->mVolatileStatesToTypeMapForUser:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "mw_enabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/corestate/MultiWindowCoreStateVolatileObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/samsung/android/server/corestate/MultiWindowCoreStateVolatileObserver;->mVolatileStatesToTypeMapForUser:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "custom_density"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/samsung/android/server/corestate/MultiWindowCoreStateVolatileObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    .line 42
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 41
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/samsung/android/server/corestate/MultiWindowCoreStateVolatileObserver;->mVolatileStatesToTypeMapForUser:Ljava/util/Map;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "stay_focus_activity"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/samsung/android/server/corestate/MultiWindowCoreStateVolatileObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    .line 48
    nop

    .line 47
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/samsung/android/server/corestate/MultiWindowCoreStateVolatileObserver;->mVolatileStatesToTypeMapForUser:Ljava/util/Map;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "mw_immersive_mode"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/samsung/android/server/corestate/MultiWindowCoreStateVolatileObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/samsung/android/server/corestate/MultiWindowCoreStateVolatileObserver;->mVolatileStatesToTypeMapForUser:Ljava/util/Map;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "mw_navibar_immersive_mode"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/samsung/android/server/corestate/MultiWindowCoreStateVolatileObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/samsung/android/server/corestate/MultiWindowCoreStateVolatileObserver;->mVolatileStatesToTypeMapForUser:Ljava/util/Map;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "mw_blocked_minimized_freeform"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/samsung/android/server/corestate/MultiWindowCoreStateVolatileObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    .line 60
    nop

    .line 59
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method
