.class Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;
.super Landroid/widget/FrameLayout;
.source "AppContinuityGuideConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppContinuityGuideConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClingWindowView"
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xfa

.field private static final BGCOLOR:I = -0x80000000

.field private static final FRONT_SCREEN_APPS_SETTINGS:Ljava/lang/String; = "com.samsung.settings.FRONT_SCREEN_APPS_SETTINGS"

.field private static final OFFSET_DP:I = 0x60

.field private static final SETTINGS_FRAGMENT_ARGS_KEY:Ljava/lang/String; = ":settings:fragment_args_key"

.field private static final SETTINGS_SHOW_FRAGMENT_ARGS:Ljava/lang/String; = ":settings:show_fragment_args"


# instance fields
.field private mButtonLayout:Landroid/widget/LinearLayout;

.field private mButtonMoveToSetting:Landroid/widget/Button;

.field private mButtonOk:Landroid/widget/Button;

.field private mClingHandler:Landroid/os/Handler;

.field private mClingLayout:Landroid/view/ViewGroup;

.field private final mColor:Landroid/graphics/drawable/ColorDrawable;

.field private mColorAnim:Landroid/animation/ValueAnimator;

.field private final mConfirm:Ljava/lang/Runnable;

.field private mCurrentTask:Lcom/android/server/wm/Task;

.field private mDim:Landroid/widget/ImageView;

.field private mGuideTextView:Landroid/widget/TextView;

.field private mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsMainScreen:Z

.field private mRotation:I

.field final synthetic this$0:Lcom/android/server/wm/AppContinuityGuideConfirmation;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppContinuityGuideConfirmation;Landroid/content/Context;Ljava/lang/Runnable;ZLcom/android/server/wm/Task;)V
    .registers 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "confirm"    # Ljava/lang/Runnable;
    .param p4, "isMainScreen"    # Z
    .param p5, "currentTask"    # Lcom/android/server/wm/Task;

    .line 308
    iput-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmation;

    .line 309
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 277
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    .line 288
    new-instance p1, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView$1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView$1;-><init>(Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;)V

    iput-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 377
    iput v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mRotation:I

    .line 379
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mClingHandler:Landroid/os/Handler;

    .line 310
    iput-object p3, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    .line 311
    iput-boolean p4, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mIsMainScreen:Z

    .line 312
    iput-object p5, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mCurrentTask:Lcom/android/server/wm/Task;

    .line 313
    iget-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 314
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->setImportantForAccessibility(I)V

    .line 315
    iget-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    .line 316
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 317
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;

    .line 271
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;)Landroid/graphics/drawable/ColorDrawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;

    .line 271
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method private handleContinueToUseButton()V
    .registers 3

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmation;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/wm/AppContinuityGuideConfirmation;->mUserUsedAppContinuitySetting:Z
    invoke-static {v0, v1}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->access$302(Lcom/android/server/wm/AppContinuityGuideConfirmation;Z)Z

    .line 387
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmation;

    # getter for: Lcom/android/server/wm/AppContinuityGuideConfirmation;->mHandler:Lcom/android/server/wm/AppContinuityGuideConfirmation$H;
    invoke-static {v0}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->access$400(Lcom/android/server/wm/AppContinuityGuideConfirmation;)Lcom/android/server/wm/AppContinuityGuideConfirmation$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppContinuityGuideConfirmation$H;->removeMessages(I)V

    .line 388
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmation;

    # getter for: Lcom/android/server/wm/AppContinuityGuideConfirmation;->mHandler:Lcom/android/server/wm/AppContinuityGuideConfirmation$H;
    invoke-static {v0}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->access$400(Lcom/android/server/wm/AppContinuityGuideConfirmation;)Lcom/android/server/wm/AppContinuityGuideConfirmation$H;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppContinuityGuideConfirmation$H;->sendEmptyMessage(I)Z

    .line 389
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmation;

    # getter for: Lcom/android/server/wm/AppContinuityGuideConfirmation;->mHandler:Lcom/android/server/wm/AppContinuityGuideConfirmation$H;
    invoke-static {v0}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->access$400(Lcom/android/server/wm/AppContinuityGuideConfirmation;)Lcom/android/server/wm/AppContinuityGuideConfirmation$H;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$$Lambda$AppContinuityGuideConfirmation$ClingWindowView$CvtnKB9UalF50-Yh-zL2_cQChfM;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$AppContinuityGuideConfirmation$ClingWindowView$CvtnKB9UalF50-Yh-zL2_cQChfM;-><init>(Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppContinuityGuideConfirmation$H;->post(Ljava/lang/Runnable;)Z

    .line 390
    return-void
.end method

.method private startSettingActivity()V
    .registers 20

    .line 398
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mCurrentTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_8f

    .line 399
    iget-object v0, v1, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmation;

    # getter for: Lcom/android/server/wm/AppContinuityGuideConfirmation;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->access$500(Lcom/android/server/wm/AppContinuityGuideConfirmation;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 400
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.settings.FRONT_SCREEN_APPS_SETTINGS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    .local v0, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 402
    .local v3, "bundle":Landroid/os/Bundle;
    iget-object v4, v1, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mCurrentTask:Lcom/android/server/wm/Task;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v5}, Lcom/android/server/wm/Task;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_39

    .line 403
    const-string v4, ":settings:fragment_args_key"

    iget-object v6, v1, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mCurrentTask:Lcom/android/server/wm/Task;

    .line 404
    invoke-virtual {v6, v5, v5}, Lcom/android/server/wm/Task;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 403
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v4, ":settings:show_fragment_args"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 408
    :cond_39
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    move-object v15, v4

    .line 409
    .local v15, "options":Landroid/app/ActivityOptions;
    iget-object v4, v1, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mCurrentTask:Lcom/android/server/wm/Task;

    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v15, v4}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 410
    invoke-virtual {v15, v5, v5}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 412
    iget-object v4, v1, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmation;

    # getter for: Lcom/android/server/wm/AppContinuityGuideConfirmation;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v4}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->access$500(Lcom/android/server/wm/AppContinuityGuideConfirmation;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    .line 413
    invoke-virtual {v5}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mCurrentTask:Lcom/android/server/wm/Task;

    iget-object v6, v6, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, v1, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    .line 417
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 421
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v13

    const/4 v14, 0x0

    .line 423
    invoke-virtual {v15}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v16

    iget-object v8, v1, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmation;

    .line 424
    # getter for: Lcom/android/server/wm/AppContinuityGuideConfirmation;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v8}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->access$500(Lcom/android/server/wm/AppContinuityGuideConfirmation;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v17

    .line 412
    move-object v8, v0

    move-object/from16 v18, v15

    .end local v15    # "options":Landroid/app/ActivityOptions;
    .local v18, "options":Landroid/app/ActivityOptions;
    move-object/from16 v15, v16

    move/from16 v16, v17

    invoke-virtual/range {v4 .. v16}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    .line 425
    nop

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v18    # "options":Landroid/app/ActivityOptions;
    monitor-exit v2
    :try_end_85
    .catchall {:try_start_f .. :try_end_85} :catchall_89

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_8f

    :catchall_89
    move-exception v0

    :try_start_8a
    monitor-exit v2
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 427
    :cond_8f
    :goto_8f
    return-void
.end method

.method private updateLayout()V
    .registers 11

    .line 430
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 433
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 434
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmation;

    # invokes: Lcom/android/server/wm/AppContinuityGuideConfirmation;->getWindowManager()Landroid/view/WindowManager;
    invoke-static {v2}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->access$100(Lcom/android/server/wm/AppContinuityGuideConfirmation;)Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 435
    iget-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mGuideTextView:Landroid/widget/TextView;

    iget v3, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setWidth(I)V

    .line 437
    iget v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-double v2, v2

    const-wide v4, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 438
    .local v2, "textViewTopMargin":I
    iget-object v3, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mGuideTextView:Landroid/widget/TextView;

    .line 439
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 440
    .local v3, "textViewLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 442
    iget-boolean v4, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mIsMainScreen:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_66

    .line 443
    const v4, 0x104017e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 444
    .local v4, "guideText":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mButtonMoveToSetting:Landroid/widget/Button;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 445
    iget-object v6, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mButtonOk:Landroid/widget/Button;

    const v7, 0x104017c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 446
    iget-object v6, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mButtonOk:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10800e8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_85

    .line 449
    .end local v4    # "guideText":Ljava/lang/String;
    :cond_66
    const v4, 0x104017d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 450
    .restart local v4    # "guideText":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mButtonMoveToSetting:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 451
    iget-object v6, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mButtonOk:Landroid/widget/Button;

    const v7, 0x104017b

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 452
    iget-object v6, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mButtonOk:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 454
    :goto_85
    iget-object v6, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mGuideTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v6, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mButtonLayout:Landroid/widget/LinearLayout;

    .line 457
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 459
    .local v6, "buttonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->getDisplay()Landroid/view/Display;

    move-result-object v7

    if-eqz v7, :cond_da

    .line 460
    invoke-virtual {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->getDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    iput v7, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mRotation:I

    .line 462
    const/4 v8, 0x1

    if-eq v7, v8, :cond_c2

    const/4 v9, 0x3

    if-ne v7, v9, :cond_a9

    goto :goto_c2

    .line 470
    :cond_a9
    iget-boolean v5, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mIsMainScreen:Z

    if-nez v5, :cond_b2

    .line 471
    iget-object v5, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 473
    :cond_b2
    iget-object v5, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x105029c

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_da

    .line 464
    :cond_c2
    :goto_c2
    iget-boolean v7, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mIsMainScreen:Z

    if-nez v7, :cond_cb

    .line 465
    iget-object v7, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 467
    :cond_cb
    iget-object v5, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x105029b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 477
    :cond_da
    :goto_da
    invoke-virtual {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->requestLayout()V

    .line 478
    return-void
.end method


# virtual methods
.method public synthetic lambda$handleContinueToUseButton$3$AppContinuityGuideConfirmation$ClingWindowView()V
    .registers 1

    .line 389
    invoke-direct {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->startSettingActivity()V

    return-void
.end method

.method public synthetic lambda$onAttachedToWindow$0$AppContinuityGuideConfirmation$ClingWindowView(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 340
    invoke-direct {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->handleContinueToUseButton()V

    return-void
.end method

.method public synthetic lambda$onAttachedToWindow$1$AppContinuityGuideConfirmation$ClingWindowView(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 341
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public synthetic lambda$onAttachedToWindow$2$AppContinuityGuideConfirmation$ClingWindowView(Landroid/view/View;)V
    .registers 8
    .param p1, "cling"    # Landroid/view/View;

    .line 352
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 353
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 354
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 355
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 356
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 360
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/high16 v4, -0x80000000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    .line 361
    new-instance v3, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView$2;

    invoke-direct {v3, p0}, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView$2;-><init>(Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 368
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 369
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 370
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 371
    return-void
.end method

.method public synthetic lambda$onConfigurationChanged$4$AppContinuityGuideConfirmation$ClingWindowView()V
    .registers 1

    .line 485
    invoke-direct {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->updateLayout()V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 6

    .line 321
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 323
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 324
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmation;

    # invokes: Lcom/android/server/wm/AppContinuityGuideConfirmation;->getWindowManager()Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->access$100(Lcom/android/server/wm/AppContinuityGuideConfirmation;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 325
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 327
    .local v1, "density":F
    invoke-virtual {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 330
    nop

    .line 331
    invoke-virtual {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090038

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    .line 332
    const v3, 0x10201e0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mDim:Landroid/widget/ImageView;

    .line 333
    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 334
    iget-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x10201df

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mGuideTextView:Landroid/widget/TextView;

    .line 335
    iget-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x10201dc

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mButtonLayout:Landroid/widget/LinearLayout;

    .line 337
    iget-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x10201dd

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mButtonMoveToSetting:Landroid/widget/Button;

    .line 339
    iget-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x10201de

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mButtonOk:Landroid/widget/Button;

    .line 340
    iget-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mButtonMoveToSetting:Landroid/widget/Button;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$AppContinuityGuideConfirmation$ClingWindowView$iTnC0yDeDUT8BhoSw94RctJBi1U;

    invoke-direct {v3, p0}, Lcom/android/server/wm/-$$Lambda$AppContinuityGuideConfirmation$ClingWindowView$iTnC0yDeDUT8BhoSw94RctJBi1U;-><init>(Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mButtonOk:Landroid/widget/Button;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$AppContinuityGuideConfirmation$ClingWindowView$5f6stKNhQVkKNUj3cpM-qnhAm5M;

    invoke-direct {v3, p0}, Lcom/android/server/wm/-$$Lambda$AppContinuityGuideConfirmation$ClingWindowView$5f6stKNhQVkKNUj3cpM-qnhAm5M;-><init>(Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    invoke-direct {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->updateLayout()V

    .line 344
    iget-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmation;

    # invokes: Lcom/android/server/wm/AppContinuityGuideConfirmation;->getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v3}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->access$200(Lcom/android/server/wm/AppContinuityGuideConfirmation;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 347
    iget-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    .line 348
    .local v2, "cling":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 349
    const/high16 v3, -0x3d400000    # -96.0f

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 351
    new-instance v3, Lcom/android/server/wm/-$$Lambda$AppContinuityGuideConfirmation$ClingWindowView$6JMrclEmqqCMfAhhlrmt4GiNLhM;

    invoke-direct {v3, p0, v2}, Lcom/android/server/wm/-$$Lambda$AppContinuityGuideConfirmation$ClingWindowView$6JMrclEmqqCMfAhhlrmt4GiNLhM;-><init>(Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 372
    .end local v2    # "cling":Landroid/view/View;
    goto :goto_ba

    .line 373
    :cond_b3
    iget-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 375
    :goto_ba
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 482
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 484
    invoke-virtual {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mRotation:I

    invoke-virtual {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eq v0, v1, :cond_1f

    .line 485
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mClingHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$AppContinuityGuideConfirmation$ClingWindowView$5LlGAOPiv84TeiuLkdOH3Nlwhqk;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$AppContinuityGuideConfirmation$ClingWindowView$5LlGAOPiv84TeiuLkdOH3Nlwhqk;-><init>(Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 487
    :cond_1f
    return-void
.end method
