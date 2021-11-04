.class Lcom/android/server/wm/SplashScreenStartingData;
.super Lcom/android/server/wm/StartingData;
.source "SplashScreenStartingData.java"


# instance fields
.field private final mCompatInfo:Landroid/content/res/CompatibilityInfo;

.field private final mIcon:I

.field private final mLabelRes:I

.field private final mLogo:I

.field private final mMergedOverrideConfiguration:Landroid/content/res/Configuration;

.field private final mNonLocalizedLabel:Ljava/lang/CharSequence;

.field private final mPkg:Ljava/lang/String;

.field private final mTheme:I

.field private final mWindowFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;)V
    .registers 11
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "theme"    # I
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p6, "labelRes"    # I
    .param p7, "icon"    # I
    .param p8, "logo"    # I
    .param p9, "windowFlags"    # I
    .param p10, "mergedOverrideConfiguration"    # Landroid/content/res/Configuration;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/wm/StartingData;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 48
    iput-object p2, p0, Lcom/android/server/wm/SplashScreenStartingData;->mPkg:Ljava/lang/String;

    .line 49
    iput p3, p0, Lcom/android/server/wm/SplashScreenStartingData;->mTheme:I

    .line 50
    iput-object p4, p0, Lcom/android/server/wm/SplashScreenStartingData;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 51
    iput-object p5, p0, Lcom/android/server/wm/SplashScreenStartingData;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 52
    iput p6, p0, Lcom/android/server/wm/SplashScreenStartingData;->mLabelRes:I

    .line 53
    iput p7, p0, Lcom/android/server/wm/SplashScreenStartingData;->mIcon:I

    .line 54
    iput p8, p0, Lcom/android/server/wm/SplashScreenStartingData;->mLogo:I

    .line 55
    iput p9, p0, Lcom/android/server/wm/SplashScreenStartingData;->mWindowFlags:I

    .line 56
    iput-object p10, p0, Lcom/android/server/wm/SplashScreenStartingData;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 57
    return-void
.end method


# virtual methods
.method createStartingSurface(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    .registers 27
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 62
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 63
    .local v3, "customImageBitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 70
    .local v4, "customLayoutResId":I
    iget-object v0, v1, Lcom/android/server/wm/SplashScreenStartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mCustomStartingWindowController:Lcom/android/server/wm/CustomStartingWindowController;

    .line 73
    .local v5, "customStartingWindowController":Lcom/android/server/wm/CustomStartingWindowController;
    iget-object v0, v1, Lcom/android/server/wm/SplashScreenStartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v6

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    .line 75
    .local v0, "rotation":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    iget v7, v7, Lcom/android/server/wm/Task;->mUserId:I

    .line 76
    .local v7, "userId":I
    nop

    .line 77
    invoke-virtual {v5, v2}, Lcom/android/server/wm/CustomStartingWindowController;->canAddCustomStartingWindowLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    .line 78
    .local v8, "canAddCustomStartingWindow":Z
    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->mCustomStartingWindowKey:Ljava/lang/String;

    .line 79
    .local v9, "customStartingWindowKey":Ljava/lang/String;
    monitor-exit v6
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_74

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 81
    if-eqz v8, :cond_3d

    if-eqz v9, :cond_3d

    .line 83
    nop

    .line 84
    invoke-virtual {v5, v9, v0, v7}, Lcom/android/server/wm/CustomStartingWindowController;->loadCustomImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 86
    if-nez v3, :cond_3d

    .line 87
    nop

    .line 88
    invoke-virtual {v5, v9, v7}, Lcom/android/server/wm/CustomStartingWindowController;->getCustomLayoutResId(Ljava/lang/String;I)I

    move-result v4

    .line 94
    .end local v0    # "rotation":I
    .end local v5    # "customStartingWindowController":Lcom/android/server/wm/CustomStartingWindowController;
    .end local v7    # "userId":I
    .end local v8    # "canAddCustomStartingWindow":Z
    .end local v9    # "customStartingWindowKey":Ljava/lang/String;
    :cond_3d
    iget-object v0, v1, Lcom/android/server/wm/SplashScreenStartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v11, v2, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    iget v12, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v13, v1, Lcom/android/server/wm/SplashScreenStartingData;->mPkg:Ljava/lang/String;

    iget v14, v1, Lcom/android/server/wm/SplashScreenStartingData;->mTheme:I

    iget-object v15, v1, Lcom/android/server/wm/SplashScreenStartingData;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v0, v1, Lcom/android/server/wm/SplashScreenStartingData;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    iget v5, v1, Lcom/android/server/wm/SplashScreenStartingData;->mLabelRes:I

    iget v6, v1, Lcom/android/server/wm/SplashScreenStartingData;->mIcon:I

    iget v7, v1, Lcom/android/server/wm/SplashScreenStartingData;->mLogo:I

    iget v8, v1, Lcom/android/server/wm/SplashScreenStartingData;->mWindowFlags:I

    iget-object v9, v1, Lcom/android/server/wm/SplashScreenStartingData;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v22

    .line 94
    move-object/from16 v16, v0

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v23, v3

    move/from16 v24, v4

    invoke-interface/range {v10 .. v24}, Lcom/android/server/policy/WindowManagerPolicy;->addSplashScreen(Landroid/os/IBinder;ILjava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;ILandroid/graphics/Bitmap;I)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    move-result-object v0

    return-object v0

    .line 79
    .restart local v5    # "customStartingWindowController":Lcom/android/server/wm/CustomStartingWindowController;
    :catchall_74
    move-exception v0

    :try_start_75
    monitor-exit v6
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method
