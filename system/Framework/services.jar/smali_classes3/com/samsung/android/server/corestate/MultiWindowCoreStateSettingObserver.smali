.class public Lcom/samsung/android/server/corestate/MultiWindowCoreStateSettingObserver;
.super Lcom/samsung/android/server/corestate/CoreStateSettingObserver;
.source "MultiWindowCoreStateSettingObserver.java"


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "ctx"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 34
    return-void
.end method


# virtual methods
.method public registerObservingItems()V
    .registers 4

    .line 38
    iget-object v0, p0, Lcom/samsung/android/server/corestate/MultiWindowCoreStateSettingObserver;->mSharedPrefIntegerKeyMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "mw_default_launch_mode_freeform"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/samsung/android/server/corestate/MultiWindowCoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "freeform_handler_help_popup_count"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/samsung/android/server/corestate/MultiWindowCoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "multi_split_quick_options_help_count"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/corestate/MultiWindowCoreStateSettingObserver;->mSharedPrefIntegerKeyMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "corner_gesture"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/samsung/android/server/corestate/MultiWindowCoreStateSettingObserver;->mSharedPrefIntegerKeyMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "divider_panel_first_auto_open_disabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method
