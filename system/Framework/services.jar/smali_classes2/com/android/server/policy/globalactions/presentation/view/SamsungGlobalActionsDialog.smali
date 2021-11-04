.class public Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;
.super Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;
.source "SamsungGlobalActionsDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SamsungGlobalActionsDialog"


# instance fields
.field private final mOnDismiss:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;
    .param p3, "onDismiss"    # Ljava/lang/Runnable;

    .line 35
    new-instance v0, Lcom/samsung/android/globalactions/presentation/view/DefaultResourceFactory;

    invoke-direct {v0}, Lcom/samsung/android/globalactions/presentation/view/DefaultResourceFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;)V

    .line 37
    iput-object p3, p0, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->mOnDismiss:Ljava/lang/Runnable;

    .line 39
    invoke-direct {p0, p2}, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->initDependencies(Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 40
    return-void
.end method

.method private initDependencies(Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 21
    .param p1, "windowManagerFuncs"    # Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 43
    move-object/from16 v12, p0

    new-instance v0, Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;

    move-object/from16 v13, p1

    invoke-direct {v0, v13}, Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;-><init>(Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    move-object v14, v0

    .line 45
    .local v14, "globalActionsManager":Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;
    new-instance v0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;

    iget-object v1, v12, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v14}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;)V

    move-object v15, v0

    .line 47
    .local v15, "utilFactory":Lcom/samsung/android/globalactions/util/UtilFactory;
    new-instance v0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;

    iget-object v1, v12, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {v15, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/SettingsWrapper;)V

    move-object v11, v0

    .line 49
    .local v11, "features":Lcom/samsung/android/globalactions/presentation/features/Features;
    const-class v0, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v15, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/LogWrapper;

    iput-object v0, v12, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 50
    iget-object v0, v12, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "[Service]"

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/LogWrapper;->setPackageTag(Ljava/lang/String;)V

    .line 52
    const-class v0, Lcom/samsung/android/globalactions/util/HandlerUtil;

    invoke-interface {v15, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/HandlerUtil;

    iput-object v0, v12, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    .line 54
    new-instance v0, Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalyticsImpl;

    invoke-direct {v0}, Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalyticsImpl;-><init>()V

    move-object v10, v0

    .line 56
    .local v10, "samsungGlobalActionsAnalytics":Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;
    new-instance v0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;

    iget-object v1, v12, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v0, v15, v11, v1}, Lcom/samsung/android/globalactions/util/SystemConditionChecker;-><init>(Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/features/Features;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    iput-object v0, v12, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 59
    new-instance v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;

    iget-object v1, v12, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iget-object v2, v12, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v0, v15, v1, v2, v10}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;-><init>(Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;)V

    move-object v9, v0

    .line 62
    .local v9, "viewModelFactory":Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;
    new-instance v7, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;

    iget-object v1, v12, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object v6, v12, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    move-object v0, v7

    move-object/from16 v2, p0

    move-object v3, v15

    move-object v4, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;Lcom/samsung/android/globalactions/presentation/features/Features;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    iput-object v7, v12, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    .line 65
    iget-object v0, v12, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    invoke-virtual {v9, v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->setFeatureFactory(Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;)V

    .line 67
    new-instance v8, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    iget-object v2, v12, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    const-class v0, Lcom/samsung/android/globalactions/util/BroadcastManager;

    .line 68
    invoke-interface {v15, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/globalactions/util/BroadcastManager;

    const-class v0, Lcom/samsung/android/globalactions/util/SystemController;

    invoke-interface {v15, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/samsung/android/globalactions/util/SystemController;

    iget-object v7, v12, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v4, v12, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-class v0, Lcom/samsung/android/globalactions/util/ThemeChecker;

    .line 69
    invoke-interface {v15, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/samsung/android/globalactions/util/ThemeChecker;

    const-class v0, Lcom/samsung/android/globalactions/util/ContentObserverWrapper;

    invoke-interface {v15, v0}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/samsung/android/globalactions/util/ContentObserverWrapper;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v3, v9

    move-object/from16 v18, v4

    move-object v4, v14

    move-object v13, v8

    move-object/from16 v8, v18

    move-object/from16 v18, v9

    .end local v9    # "viewModelFactory":Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;
    .local v18, "viewModelFactory":Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;
    move-object/from16 v9, v16

    move-object/from16 v16, v10

    .end local v10    # "samsungGlobalActionsAnalytics":Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;
    .local v16, "samsungGlobalActionsAnalytics":Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;
    move-object/from16 v10, v17

    move-object/from16 v17, v11

    .end local v11    # "features":Lcom/samsung/android/globalactions/presentation/features/Features;
    .local v17, "features":Lcom/samsung/android/globalactions/presentation/features/Features;
    move-object/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;-><init>(Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;Lcom/samsung/android/globalactions/util/BroadcastManager;Lcom/samsung/android/globalactions/util/SystemController;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/ThemeChecker;Lcom/samsung/android/globalactions/util/ContentObserverWrapper;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;)V

    iput-object v13, v12, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    .line 71
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->mOnDismiss:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 76
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 79
    :cond_b
    invoke-super {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->dismiss()V

    .line 80
    return-void
.end method
