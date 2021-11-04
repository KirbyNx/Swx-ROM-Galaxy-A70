.class Lcom/android/server/wm/ActivityStack;
.super Lcom/android/server/wm/Task;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;,
        Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;,
        Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;,
        Lcom/android/server/wm/ActivityStack$ActivityStackHandler;,
        Lcom/android/server/wm/ActivityStack$ActivityState;,
        Lcom/android/server/wm/ActivityStack$StackVisibility;
    }
.end annotation


# static fields
.field private static final SHOW_APP_STARTING_PREVIEW:Z = true

.field static final STACK_VISIBILITY_INVISIBLE:I = 0x2

.field static final STACK_VISIBILITY_VISIBLE:I = 0x0

.field static final STACK_VISIBILITY_VISIBLE_BEHIND_TRANSLUCENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_APP:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_CLEANUP:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RELEASE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SPEG:Ljava/lang/String; = "SPEG"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_TRANSITION:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_VISIBILITY:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TRANSLUCENT_CONVERSION_TIMEOUT:J = 0x7d0L

.field private static final TRANSLUCENT_TIMEOUT_MSG:I = 0x65

.field private static final sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;


# instance fields
.field private final mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

.field mBoostStackLayerForAppTransition:Z

.field private mBoundsAnimating:Z

.field private mBoundsAnimatingRequested:Z

.field private mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

.field private mBoundsAnimationTarget:Landroid/graphics/Rect;

.field private final mCheckBehindFullscreenActivityHelper:Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;

.field mConfigWillChange:Z

.field mCurrentUser:I

.field private final mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

.field private final mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;

.field mFullyDrawnStartTime:J

.field private final mHandler:Landroid/os/Handler;

.field mInResumeTopActivity:Z

.field mLaunchStartTime:J

.field mPreAnimationBounds:Landroid/graphics/Rect;

.field private mPrevPairPackageNames:Ljava/lang/String;

.field private final mRemoveHistoryRecordsForApp:Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;

.field private mTopActivityOccludesKeyguard:Z

.field private mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

.field mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

.field mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 332
    new-instance v0, Lcom/android/server/wm/ResetTargetTaskHelper;

    invoke-direct {v0}, Lcom/android/server/wm/ResetTargetTaskHelper;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityStack;->sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;IILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)V
    .registers 16
    .param p1, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "id"    # I
    .param p3, "activityType"    # I
    .param p4, "info"    # Landroid/content/pm/ActivityInfo;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "createdByOrganizer"    # Z

    .line 578
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/ActivityStack;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/app/ActivityManager$TaskDescription;Lcom/android/server/wm/ActivityStack;)V

    .line 580
    iput-boolean p6, p0, Lcom/android/server/wm/ActivityStack;->mCreatedByOrganizer:Z

    .line 581
    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityStack;->setActivityType(I)V

    .line 582
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;IILandroid/content/pm/ActivityInfo;Landroid/content/Intent;ZZ)V
    .registers 44
    .param p1, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "id"    # I
    .param p3, "activityType"    # I
    .param p4, "info"    # Landroid/content/pm/ActivityInfo;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "createdByOrganizer"    # Z
    .param p7, "createdByRecent"    # Z

    move-object/from16 v14, p0

    move-object/from16 v13, p4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v19, p2

    move/from16 v2, p2

    move-object/from16 v32, p4

    move-object/from16 v3, p5

    .line 635
    iget-object v4, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 638
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 639
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    new-instance v4, Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v18, v4

    invoke-direct {v4}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iget-object v4, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v23, v4

    iget-object v4, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v4

    iget v4, v13, Landroid/content/pm/ActivityInfo;->resizeMode:I

    move/from16 v26, v4

    .line 643
    invoke-virtual/range {p4 .. p4}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v27

    .line 635
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move/from16 v13, v17

    const/16 v17, 0x0

    move-object/from16 v14, v17

    const/16 v17, 0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, -0x1

    const/16 v31, -0x1

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v0 .. v35}, Lcom/android/server/wm/Task;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Lcom/android/server/wm/ActivityStack;)V

    .line 262
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 263
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 274
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    .line 277
    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/android/server/wm/ActivityStack;->mLaunchStartTime:J

    .line 278
    iput-wide v3, v1, Lcom/android/server/wm/ActivityStack;->mFullyDrawnStartTime:J

    .line 284
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect:Landroid/graphics/Rect;

    .line 285
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 290
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityStack;->mBoundsAnimating:Z

    .line 293
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityStack;->mBoundsAnimatingRequested:Z

    .line 294
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ActivityStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    .line 295
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ActivityStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    .line 297
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ActivityStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    .line 299
    new-instance v3, Lcom/android/server/wm/AnimatingActivityRegistry;

    invoke-direct {v3}, Lcom/android/server/wm/AnimatingActivityRegistry;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/ActivityStack;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    .line 333
    new-instance v3, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    invoke-direct {v3, v1}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;-><init>(Lcom/android/server/wm/ActivityStack;)V

    iput-object v3, v1, Lcom/android/server/wm/ActivityStack;->mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    .line 335
    new-instance v3, Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;

    invoke-direct {v3, v1, v0}, Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;-><init>(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack$1;)V

    iput-object v3, v1, Lcom/android/server/wm/ActivityStack;->mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;

    .line 374
    new-instance v3, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;

    invoke-direct {v3, v1, v0}, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;-><init>(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack$1;)V

    iput-object v3, v1, Lcom/android/server/wm/ActivityStack;->mCheckBehindFullscreenActivityHelper:Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;

    .line 450
    new-instance v3, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;

    invoke-direct {v3, v1, v0}, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;-><init>(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack$1;)V

    iput-object v3, v1, Lcom/android/server/wm/ActivityStack;->mRemoveHistoryRecordsForApp:Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;

    .line 4173
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityStack;->mBoostStackLayerForAppTransition:Z

    .line 647
    move/from16 v2, p6

    iput-boolean v2, v1, Lcom/android/server/wm/ActivityStack;->mCreatedByOrganizer:Z

    .line 648
    iput-object v0, v1, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    .line 649
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Lcom/android/server/wm/ActivityStack;)V
    .registers 41
    .param p1, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "id"    # I
    .param p3, "_intent"    # Landroid/content/Intent;
    .param p4, "_affinityIntent"    # Landroid/content/Intent;
    .param p5, "_affinity"    # Ljava/lang/String;
    .param p6, "_rootAffinity"    # Ljava/lang/String;
    .param p7, "_realActivity"    # Landroid/content/ComponentName;
    .param p8, "_origActivity"    # Landroid/content/ComponentName;
    .param p9, "_rootWasReset"    # Z
    .param p10, "_autoRemoveRecents"    # Z
    .param p11, "_askedCompatMode"    # Z
    .param p12, "_userId"    # I
    .param p13, "_effectiveUid"    # I
    .param p14, "_lastDescription"    # Ljava/lang/String;
    .param p15, "lastTimeMoved"    # J
    .param p17, "neverRelinquishIdentity"    # Z
    .param p18, "_lastTaskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p19, "taskAffiliation"    # I
    .param p20, "prevTaskId"    # I
    .param p21, "nextTaskId"    # I
    .param p22, "taskAffiliationColor"    # I
    .param p23, "callingUid"    # I
    .param p24, "callingPackage"    # Ljava/lang/String;
    .param p25, "callingFeatureId"    # Ljava/lang/String;
    .param p26, "resizeMode"    # I
    .param p27, "supportsPictureInPicture"    # Z
    .param p28, "_realActivitySuspended"    # Z
    .param p29, "userSetupComplete"    # Z
    .param p30, "minWidth"    # I
    .param p31, "minHeight"    # I
    .param p32, "info"    # Landroid/content/pm/ActivityInfo;
    .param p33, "_voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p34, "_voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p35, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 613
    move-object v0, p0

    invoke-direct/range {p0 .. p35}, Lcom/android/server/wm/Task;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Lcom/android/server/wm/ActivityStack;)V

    .line 262
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 263
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 274
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    .line 277
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/server/wm/ActivityStack;->mLaunchStartTime:J

    .line 278
    iput-wide v3, v0, Lcom/android/server/wm/ActivityStack;->mFullyDrawnStartTime:J

    .line 284
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/ActivityStack;->mTmpRect:Landroid/graphics/Rect;

    .line 285
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 290
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimating:Z

    .line 293
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimatingRequested:Z

    .line 294
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    .line 295
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    .line 297
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/ActivityStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    .line 299
    new-instance v3, Lcom/android/server/wm/AnimatingActivityRegistry;

    invoke-direct {v3}, Lcom/android/server/wm/AnimatingActivityRegistry;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/ActivityStack;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    .line 333
    new-instance v3, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    invoke-direct {v3, p0}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;-><init>(Lcom/android/server/wm/ActivityStack;)V

    iput-object v3, v0, Lcom/android/server/wm/ActivityStack;->mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    .line 335
    new-instance v3, Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;

    invoke-direct {v3, p0, v1}, Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;-><init>(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack$1;)V

    iput-object v3, v0, Lcom/android/server/wm/ActivityStack;->mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;

    .line 374
    new-instance v3, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;

    invoke-direct {v3, p0, v1}, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;-><init>(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack$1;)V

    iput-object v3, v0, Lcom/android/server/wm/ActivityStack;->mCheckBehindFullscreenActivityHelper:Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;

    .line 450
    new-instance v3, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;

    invoke-direct {v3, p0, v1}, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;-><init>(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack$1;)V

    iput-object v3, v0, Lcom/android/server/wm/ActivityStack;->mRemoveHistoryRecordsForApp:Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;

    .line 4173
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityStack;->mBoostStackLayerForAppTransition:Z

    .line 621
    invoke-static {p2}, Lcom/android/server/wm/EventLogTags;->writeWmStackCreated(I)V

    .line 622
    new-instance v1, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;-><init>(Lcom/android/server/wm/ActivityStack;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    .line 623
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/ActivityStack;->mCurrentUser:I

    .line 627
    new-instance v1, Lcom/android/server/wm/WindowContainer$DimAnimInfo;

    invoke-direct {v1, p0, p0}, Lcom/android/server/wm/WindowContainer$DimAnimInfo;-><init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mDimAnimInfo:Lcom/android/server/wm/WindowContainer$DimAnimInfo;

    .line 630
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/app/ActivityManager$TaskDescription;Lcom/android/server/wm/ActivityStack;)V
    .registers 45
    .param p1, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "id"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "_voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p7, "_taskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p8, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 587
    move-object/from16 v15, p3

    iget-object v0, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 590
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 591
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 593
    if-eqz p7, :cond_13

    move-object/from16 v32, p7

    goto :goto_1a

    :cond_13
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    move-object/from16 v32, v0

    :goto_1a
    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, 0x0

    iget-object v0, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v23, v0

    iget-object v0, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget v0, v15, Landroid/content/pm/ActivityInfo;->resizeMode:I

    move/from16 v26, v0

    .line 596
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, -0x1

    const/16 v31, -0x1

    .line 587
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move-wide/from16 v15, v18

    move-object/from16 v18, v32

    move/from16 v19, p2

    move-object/from16 v32, p3

    move-object/from16 v33, p5

    move-object/from16 v34, p6

    move-object/from16 v35, p8

    invoke-direct/range {v0 .. v35}, Lcom/android/server/wm/ActivityStack;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Lcom/android/server/wm/ActivityStack;)V

    .line 599
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/ActivityStack;
    .param p1, "x1"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "x2"    # Z

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void
.end method

.method private addChild(Lcom/android/server/wm/WindowContainer;IZ)V
    .registers 5
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "position"    # I
    .param p3, "moveParents"    # Z

    .line 3798
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 3801
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wm/ActivityStack;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3802
    return-void
.end method

.method private canEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 8
    .param p1, "pipCandidate"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "toFrontTask"    # Lcom/android/server/wm/Task;
    .param p3, "toFrontActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "opts"    # Landroid/app/ActivityOptions;

    .line 2655
    const/4 v0, 0x0

    if-eqz p4, :cond_a

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->disallowEnterPictureInPictureWhileLaunching()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2657
    return v0

    .line 2659
    :cond_a
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_29

    .line 2663
    :cond_13
    if-eqz p2, :cond_1a

    .line 2664
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    goto :goto_1e

    :cond_1a
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2665
    .local v1, "targetStack":Lcom/android/server/wm/ActivityStack;
    :goto_1e
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeAssistant()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2667
    return v0

    .line 2669
    :cond_27
    const/4 v0, 0x1

    return v0

    .line 2661
    .end local v1    # "targetStack":Lcom/android/server/wm/ActivityStack;
    :cond_29
    :goto_29
    return v0
.end method

.method private clearLaunchTime(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1253
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1254
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeIdleTimeoutForActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 1255
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleTimeout(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_1f

    .line 1258
    :cond_15
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v0, :cond_1f

    .line 1259
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/android/server/wm/ActivityRecord;->fullyDrawnStartTime:J

    iput-wide v0, p1, Lcom/android/server/wm/ActivityRecord;->displayStartTime:J

    .line 1263
    :cond_1f
    :goto_1f
    return-void
.end method

.method private containsActivityFromStack(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 1345
    .local p1, "rs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1346
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-ne v2, p0, :cond_18

    .line 1347
    const/4 v0, 0x1

    return v0

    .line 1349
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_18
    goto :goto_4

    .line 1350
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private dumpActivities(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/Runnable;)Z
    .registers 21
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;
    .param p6, "needSep"    # Z
    .param p7, "header"    # Ljava/lang/Runnable;

    .line 3431
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->hasChild()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3432
    return v1

    .line 3434
    :cond_8
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 3435
    .local v5, "printedHeader":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 3436
    .local v4, "printed":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$LX4dmPYqwx6s2o0jarKdUI25Vfw;

    move-object v2, v0

    move-object v3, p0

    move/from16 v6, p6

    move-object v7, p2

    move-object/from16 v8, p7

    move-object/from16 v9, p5

    move-object v10, p1

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-direct/range {v2 .. v12}, Lcom/android/server/wm/-$$Lambda$ActivityStack$LX4dmPYqwx6s2o0jarKdUI25Vfw;-><init>(Lcom/android/server/wm/ActivityStack;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Ljava/lang/String;Ljava/io/FileDescriptor;ZZ)V

    const/4 v1, 0x1

    move-object v2, p0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityStack;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 3475
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private static finishIfVoiceActivity(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z
    .registers 5
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 2779
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p1, :cond_d

    goto :goto_25

    .line 2781
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearVoiceSessionLocked()V

    .line 2783
    :try_start_10
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_1d

    .line 2786
    goto :goto_1e

    .line 2784
    :catch_1d
    move-exception v0

    .line 2787
    :goto_1e
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->finishRunningVoiceLocked()V

    .line 2788
    const/4 v0, 0x1

    return v0

    .line 2779
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return v0
.end method

.method private static finishIfVoiceTask(Lcom/android/server/wm/Task;Landroid/os/IBinder;)V
    .registers 4
    .param p0, "tr"    # Lcom/android/server/wm/Task;
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 2762
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_15

    .line 2763
    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$QXzU7AoFo9nS3Kwyw_e1uIenjk0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$ActivityStack$QXzU7AoFo9nS3Kwyw_e1uIenjk0;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_27

    .line 2770
    :cond_15
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$N2PfGF62p6Y1TYGt9lvFtsW9LmQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$N2PfGF62p6Y1TYGt9lvFtsW9LmQ;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 2771
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 2770
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Ljava/util/function/BiFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v0

    .line 2773
    .local v0, "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    .line 2774
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 2776
    .end local v0    # "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    :goto_27
    return-void
.end method

.method private getOccludingActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 3333
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$AXNc-RXYBO_4RmK-wntPIZnu2BU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$AXNc-RXYBO_4RmK-wntPIZnu2BU;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/wm/ActivityStack;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3335
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    if-eq v0, p1, :cond_b

    move-object v1, v0

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method private getRawBounds()Landroid/graphics/Rect;
    .registers 2

    .line 3756
    invoke-super {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private inFrontOfStandardStack()Z
    .registers 5

    .line 2805
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 2806
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2807
    return v1

    .line 2809
    :cond_8
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v2

    .line 2810
    .local v2, "index":I
    if-nez v2, :cond_f

    .line 2811
    return v1

    .line 2813
    :cond_f
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 2814
    .local v1, "stackBehind":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandard()Z

    move-result v3

    return v3
.end method

.method private isClosingSplitApp(Lcom/android/server/wm/Task;)Z
    .registers 4
    .param p1, "tr"    # Lcom/android/server/wm/Task;

    .line 4141
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 4142
    .local v0, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_12

    :cond_10
    const/4 v1, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v1, 0x1

    :goto_13
    return v1
.end method

.method private isTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "topFocusedActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 2673
    if-eqz p2, :cond_e

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static synthetic lambda$N2PfGF62p6Y1TYGt9lvFtsW9LmQ(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityStack;->finishIfVoiceActivity(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$QjNtYzBoevRHPhQzwu5fh58MK0E(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityStack;->processTaskResizeBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic lambda$VIuWlCdKwIo4qqRlevMLniedZ7o(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityStack;->setTaskBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic lambda$YAQEcQUrLqR06xiJJApMvOPIxhg(Lcom/android/server/wm/Task;Landroid/os/IBinder;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityStack;->finishIfVoiceTask(Lcom/android/server/wm/Task;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic lambda$awakeFromSleepingLocked$3(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1267
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setSleeping(Z)V

    return-void
.end method

.method static synthetic lambda$finishAllActivitiesImmediately$7(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishAllActivitiesImmediatelyLocked: finishing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    const-string v0, "finishAllActivitiesImmediately"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    .line 2800
    return-void
.end method

.method static synthetic lambda$finishIfVoiceTask$6(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p0, "tr"    # Lcom/android/server/wm/Task;
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2764
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_5

    return-void

    .line 2765
    :cond_5
    const/4 v0, 0x0

    const-string v1, "finish-voice"

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 2766
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 2767
    return-void
.end method

.method static synthetic lambda$getDumpActivitiesLocked$14(Lcom/android/server/am/ActivityManagerService$ItemMatcher;Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p0, "matcher"    # Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    .param p1, "activities"    # Ljava/util/ArrayList;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3493
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3494
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3496
    :cond_f
    return-void
.end method

.method static synthetic lambda$getOccludingActivityAbove$10(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 3333
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$goToSleep$4(Lcom/android/server/wm/ActivityRecord;)V
    .registers 8
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1333
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->STARTED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1334
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setSleeping(Z)V

    .line 1336
    :cond_17
    return-void
.end method

.method static synthetic lambda$navigateUpTo$8(Landroid/content/ComponentName;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p0, "dest"    # Landroid/content/ComponentName;
    .param p1, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 2869
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2870
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 2869
    :goto_1f
    return v0
.end method

.method static synthetic lambda$navigateUpTo$9(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/ActivityRecord;)Ljava/lang/Boolean;
    .registers 12
    .param p0, "finalParent"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "resultCodeHolder"    # [I
    .param p2, "resultDataHolder"    # [Landroid/content/Intent;
    .param p3, "resultGrantsHolder"    # [Lcom/android/server/uri/NeededUriGrants;
    .param p4, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 2908
    if-ne p4, p0, :cond_8

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2910
    :cond_8
    const/4 v0, 0x0

    aget v2, p1, v0

    aget-object v3, p2, v0

    aget-object v4, p3, v0

    const/4 v6, 0x1

    const-string/jumbo v5, "navigate-up"

    move-object v1, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    .line 2913
    aput v0, p1, v0

    .line 2914
    const/4 v1, 0x0

    aput-object v1, p2, v0

    .line 2915
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$xHrv17CG5tAkxdutHyfCFt4-Iec(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->restartPackage(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    return-void
.end method

.method private notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "timeout"    # Z

    .line 1791
    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 1792
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 1793
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1796
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 1797
    .local v0, "waitingActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 1798
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1799
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1801
    if-eqz v0, :cond_4a

    .line 1802
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaqueLocked(Landroid/os/IBinder;Z)V

    .line 1803
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1805
    :try_start_33
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    if-eqz p1, :cond_3e

    const/4 v3, 0x1

    :cond_3e
    invoke-interface {v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_41} :catch_42

    .line 1808
    goto :goto_43

    .line 1807
    :catch_42
    move-exception v1

    .line 1811
    :cond_43
    :goto_43
    if-eqz p2, :cond_4a

    .line 1812
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 1817
    .end local v0    # "waitingActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_4a
    return-void
.end method

.method private static processTaskResizeBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 3
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "displayedBounds"    # Landroid/graphics/Rect;

    .line 3308
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 3310
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 3311
    return-void
.end method

.method private static restartPackage(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 4
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3517
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    .line 3519
    if-eqz p1, :cond_1a

    if-ne p0, p1, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_1a

    .line 3520
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(I)V

    .line 3523
    :cond_1a
    return-void
.end method

.method private resumeNextFocusableActivityWhenStackIsEmpty(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 7
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 2480
    const-string/jumbo v0, "noMoreActivities"

    .line 2482
    .local v0, "reason":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    const-string/jumbo v2, "noMoreActivities"

    if-nez v1, :cond_1a

    .line 2483
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityStack;->adjustFocusToNextFocusableTask(Ljava/lang/String;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2484
    .local v1, "nextFocusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_1a

    .line 2488
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p1, v3}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v2

    return v2

    .line 2495
    .end local v1    # "nextFocusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_1a
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2496
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_29

    const-string v1, "ActivityTaskManager"

    const-string/jumbo v3, "resumeNextFocusableActivityWhenStackIsEmpty: noMoreActivities, go home"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    :cond_29
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v1

    return v1
.end method

.method private resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 30
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 1957
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, ": "

    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_1a

    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1959
    return v5

    .line 1965
    :cond_1a
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityStack;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 1967
    .local v7, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v7, :cond_23

    move v0, v6

    goto :goto_24

    :cond_23
    move v0, v5

    :goto_24
    move v8, v0

    .line 1970
    .local v8, "hasRunningActivity":Z
    if-eqz v8, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1971
    return v5

    .line 1974
    :cond_2e
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->cancelInitializingActivities()V

    .line 1978
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 1979
    .local v0, "userLeaving":Z
    iget-object v9, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-boolean v5, v9, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 1981
    if-nez v8, :cond_42

    .line 1983
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wm/ActivityStack;->resumeNextFocusableActivityWhenStackIsEmpty(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v4

    return v4

    .line 1986
    :cond_42
    iput-boolean v5, v7, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 1987
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v9

    .line 1990
    .local v9, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    iget-object v10, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v11, "ActivityTaskManager"

    if-ne v10, v7, :cond_79

    sget-object v10, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v7, v10}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v10

    if-eqz v10, :cond_79

    .line 1991
    invoke-virtual {v9}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result v10

    if-eqz v10, :cond_79

    .line 1994
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 1995
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_78

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resumeTopActivityLocked: Top activity resumed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    :cond_78
    return v5

    .line 2000
    :cond_79
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    move-result v10

    if-nez v10, :cond_80

    .line 2001
    return v5

    .line 2005
    :cond_80
    iget-object v10, v1, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v10}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    move-result v10

    .line 2006
    .local v10, "allPausedComplete":Z
    const-string/jumbo v12, "resumeTopActivityLocked: Skip resume: some activity pausing."

    if-nez v10, :cond_9b

    .line 2007
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v4, :cond_97

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-nez v4, :cond_97

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_9a

    .line 2008
    :cond_97
    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    :cond_9a
    return v5

    .line 2024
    :cond_9b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_f9

    iget-object v13, v1, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v13, v7, :cond_f9

    iget-object v13, v1, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2026
    invoke-virtual {v13}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    move-result v13

    if-eqz v13, :cond_f9

    .line 2029
    const/4 v13, 0x1

    .line 2030
    .local v13, "nothingToResume":Z
    iget-object v15, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v15, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-nez v15, :cond_e9

    .line 2031
    iget-boolean v15, v1, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    if-nez v15, :cond_c1

    .line 2032
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v15

    if-eqz v15, :cond_c1

    move v15, v6

    goto :goto_c2

    :cond_c1
    move v15, v5

    .line 2033
    .local v15, "canShowWhenLocked":Z
    :goto_c2
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v6, v7, :cond_ce

    .line 2034
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    move-result v6

    if-eqz v6, :cond_ce

    const/4 v6, 0x1

    goto :goto_cf

    :cond_ce
    move v6, v5

    .line 2036
    .local v6, "mayDismissKeyguard":Z
    :goto_cf
    if-nez v15, :cond_e2

    if-eqz v6, :cond_d4

    goto :goto_e2

    .line 2040
    :cond_d4
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->currentLaunchCanTurnScreenOn()Z

    move-result v17

    if-eqz v17, :cond_e9

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v17

    if-eqz v17, :cond_e9

    .line 2041
    const/4 v13, 0x0

    goto :goto_e9

    .line 2037
    :cond_e2
    :goto_e2
    invoke-virtual {v1, v14, v5, v5}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2039
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v13

    .line 2044
    .end local v6    # "mayDismissKeyguard":Z
    .end local v15    # "canShowWhenLocked":Z
    :cond_e9
    :goto_e9
    if-eqz v13, :cond_f9

    .line 2047
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 2048
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_f8

    const-string/jumbo v4, "resumeTopActivityLocked: Going to sleep and all paused"

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    :cond_f8
    return v5

    .line 2057
    .end local v13    # "nothingToResume":Z
    :cond_f9
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v13, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v6, v13}, Landroid/app/ActivityManagerInternal;->hasStartedUserState(I)Z

    move-result v6

    if-nez v6, :cond_129

    .line 2058
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping resume of top activity "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": user "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is stopped"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    return v5

    .line 2065
    :cond_129
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2066
    invoke-virtual {v7, v5}, Lcom/android/server/wm/ActivityRecord;->setSleeping(Z)V

    .line 2068
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v6, :cond_14b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Resuming "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    :cond_14b
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    move-result v6

    if-nez v6, :cond_163

    .line 2072
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v4, :cond_15f

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-nez v4, :cond_15f

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_162

    :cond_15f
    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    :cond_162
    return v5

    .line 2078
    :cond_163
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v12, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v12}, Lcom/android/server/wm/ActivityStackSupervisor;->setLaunchSource(I)V

    .line 2080
    const/4 v6, 0x0

    .line 2081
    .local v6, "lastResumed":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v9}, Lcom/android/server/wm/TaskDisplayArea;->getLastFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    .line 2082
    .local v12, "lastFocusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v12, :cond_1a8

    if-eq v12, v1, :cond_1a8

    .line 2085
    iget-object v6, v12, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2086
    if-eqz v0, :cond_1a8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v13

    if-eqz v13, :cond_1a8

    invoke-virtual {v12, v7}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v13

    if-eqz v13, :cond_1a8

    .line 2089
    sget-boolean v13, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v13, :cond_1a7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Overriding userLeaving to false next="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " lastResumed="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    :cond_1a7
    const/4 v0, 0x0

    .line 2095
    :cond_1a8
    if-eqz v0, :cond_1b7

    iget-object v13, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    .line 2097
    invoke-virtual {v13}, Lcom/android/server/wm/AppPairController;->isLaunchingPairActivitiesLocked()Z

    move-result v13

    if-eqz v13, :cond_1b7

    .line 2098
    const/4 v0, 0x0

    move v13, v0

    goto :goto_1b8

    .line 2101
    :cond_1b7
    move v13, v0

    .end local v0    # "userLeaving":Z
    .local v13, "userLeaving":Z
    :goto_1b8
    invoke-virtual {v9, v13, v7}, Lcom/android/server/wm/TaskDisplayArea;->pauseBackStacks(ZLcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    .line 2102
    .local v0, "pausing":Z
    iget-object v15, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string/jumbo v14, "resumeTopActivityInnerLocked"

    if-eqz v15, :cond_1e4

    .line 2103
    sget-boolean v15, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v15, :cond_1de

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resumeTopActivityLocked: Pausing "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    :cond_1de
    const/4 v5, 0x0

    invoke-virtual {v1, v13, v5, v7, v14}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v15

    or-int/2addr v0, v15

    .line 2111
    :cond_1e4
    nop

    .line 2112
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_200

    .line 2113
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isForceResumeWhilePause()Z

    move-result v5

    if-eqz v5, :cond_200

    .line 2114
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Lcom/android/server/wm/Task;->setForceResumeWhilePause(Z)V

    .line 2115
    const/4 v0, 0x0

    move v5, v0

    goto :goto_201

    .line 2118
    :cond_200
    move v5, v0

    .end local v0    # "pausing":Z
    .local v5, "pausing":Z
    :goto_201
    if-eqz v5, :cond_272

    .line 2119
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_20b

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_211

    :cond_20b
    const-string/jumbo v0, "resumeTopActivityLocked: Skip resume: need to start pausing"

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    :cond_211
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_21f

    .line 2126
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/4 v4, 0x1

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v4, v11, v11}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZZ)V

    goto :goto_23d

    .line 2129
    :cond_21f
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    move-result v0

    if-nez v0, :cond_23d

    .line 2133
    invoke-virtual {v9}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne v1, v0, :cond_22d

    const/4 v0, 0x1

    goto :goto_22e

    :cond_22d
    const/4 v0, 0x0

    .line 2134
    .local v0, "isTop":Z
    :goto_22e
    iget-object v4, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2135
    if-eqz v0, :cond_236

    const-string/jumbo v11, "pre-top-activity"

    goto :goto_239

    :cond_236
    const-string/jumbo v11, "pre-activity"

    .line 2134
    :goto_239
    const/4 v14, 0x0

    invoke-virtual {v4, v7, v14, v0, v11}, Lcom/android/server/wm/ActivityTaskManagerService;->startProcessAsync(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    .line 2137
    .end local v0    # "isTop":Z
    :cond_23d
    :goto_23d
    if-eqz v6, :cond_270

    .line 2139
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v0

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v0, v4, :cond_26b

    .line 2140
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->inSplitScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_253

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_25f

    .line 2141
    :cond_253
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v4

    if-eq v0, v4, :cond_25f

    const/4 v4, 0x1

    goto :goto_271

    .line 2144
    :cond_25f
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_269

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v0

    :cond_269
    const/4 v4, 0x1

    goto :goto_271

    .line 2150
    :cond_26b
    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Lcom/android/server/wm/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    goto :goto_271

    .line 2137
    :cond_270
    const/4 v4, 0x1

    .line 2153
    :goto_271
    return v4

    .line 2154
    :cond_272
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, v7, :cond_2a2

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v7, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_2a2

    .line 2155
    invoke-virtual {v9}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result v0

    if-eqz v0, :cond_2a2

    .line 2161
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 2162
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_2a0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resumeTopActivityLocked: Top activity resumed (dontWaitForPause) "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    :cond_2a0
    const/4 v4, 0x1

    return v4

    .line 2169
    :cond_2a2
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v15, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v15, :cond_2b1

    iget-object v15, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v15, v15, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    move-object/from16 v19, v15

    goto :goto_2b3

    :cond_2b1
    const/16 v19, 0x0

    :goto_2b3
    iget-object v15, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v22

    move/from16 v25, v5

    .end local v5    # "pausing":Z
    .local v25, "pausing":Z
    iget-object v5, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v26, v6

    .end local v6    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .local v26, "lastResumed":Lcom/android/server/wm/ActivityRecord;
    iget v6, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    move-object/from16 v18, v0

    move-object/from16 v20, v15

    move-object/from16 v21, v3

    move-object/from16 v23, v5

    move/from16 v24, v6

    invoke-virtual/range {v18 .. v24}, Landroid/app/ActivityManagerInternal;->onPackageResumedFG(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;I)V

    .line 2175
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v0, :cond_2dd

    .line 2176
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityManagerPerformance;->onActivityResumeLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2184
    :cond_2dd
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_322

    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_322

    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_322

    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, v7, :cond_322

    .line 2187
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_311

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no-history finish of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " on new resume"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    :cond_311
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    const-string/jumbo v3, "resume-no-history"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 2190
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2192
    iget-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_322

    return v5

    .line 2196
    :cond_322
    if-eqz v2, :cond_375

    if-eq v2, v7, :cond_375

    iget-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_375

    .line 2206
    iget-boolean v0, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const-string v3, ", nowVisible="

    if-eqz v0, :cond_355

    .line 2207
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 2208
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_375

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not waiting for visible to hide: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v7, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_375

    .line 2212
    :cond_355
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_375

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Previous already visible but still waiting to hide: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v7, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    :cond_375
    :goto_375
    :try_start_375
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v5, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v6, 0x0

    invoke-interface {v0, v3, v6, v5}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_383
    .catch Landroid/os/RemoteException; {:try_start_375 .. :try_end_383} :catch_3a2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_375 .. :try_end_383} :catch_384

    goto :goto_3a3

    .line 2225
    :catch_384
    move-exception v0

    .line 2226
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed trying to unstop package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a4

    .line 2224
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3a2
    move-exception v0

    .line 2228
    :goto_3a3
    nop

    .line 2233
    :goto_3a4
    const/4 v0, 0x1

    .line 2234
    .local v0, "anim":Z
    iget-object v3, v9, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2235
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v5, 0x6

    if-eqz v2, :cond_434

    .line 2236
    iget-boolean v6, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_3f0

    .line 2237
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v5, :cond_3c6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Prepare close transition: prev="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    :cond_3c6
    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d7

    .line 2240
    const/4 v0, 0x0

    .line 2241
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    move v6, v5

    goto :goto_3eb

    .line 2243
    :cond_3d7
    nop

    .line 2244
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-ne v5, v6, :cond_3e4

    const/4 v5, 0x7

    goto :goto_3e6

    .line 2245
    :cond_3e4
    const/16 v5, 0x9

    :goto_3e6
    nop

    .line 2243
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 2247
    :goto_3eb
    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    move v5, v0

    goto :goto_453

    .line 2249
    :cond_3f0
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v6, :cond_408

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Prepare open transition: prev="

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    :cond_408
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_419

    .line 2252
    const/4 v0, 0x0

    .line 2253
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    move v5, v0

    goto :goto_453

    .line 2255
    :cond_419
    nop

    .line 2256
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v15

    if-ne v6, v15, :cond_425

    goto :goto_42e

    .line 2257
    :cond_425
    iget-boolean v5, v7, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v5, :cond_42c

    const/16 v5, 0x10

    goto :goto_42e

    .line 2258
    :cond_42c
    const/16 v5, 0x8

    :goto_42e
    nop

    .line 2255
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    goto :goto_452

    .line 2262
    :cond_434
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v6, :cond_43d

    const-string v6, "Prepare open transition: no previous"

    invoke-static {v11, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    :cond_43d
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44e

    .line 2264
    const/4 v0, 0x0

    .line 2265
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    move v5, v0

    goto :goto_453

    .line 2267
    :cond_44e
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 2271
    :goto_452
    move v5, v0

    .end local v0    # "anim":Z
    .local v5, "anim":Z
    :goto_453
    if-eqz v5, :cond_459

    .line 2272
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->applyOptionsLocked()V

    goto :goto_45c

    .line 2274
    :cond_459
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked()V

    .line 2277
    :goto_45c
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2279
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_6b0

    .line 2280
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_495

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resume running: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " stopped="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v7, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " visibleRequested="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v7, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    :cond_495
    if-eqz v12, :cond_4ab

    .line 2292
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_4a9

    iget-object v0, v12, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_4ab

    iget-object v0, v12, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2294
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-nez v0, :cond_4ab

    :cond_4a9
    const/4 v0, 0x1

    goto :goto_4ac

    :cond_4ab
    const/4 v0, 0x0

    :goto_4ac
    move v6, v0

    .line 2297
    .local v6, "lastActivityTranslucent":Z
    iget-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_4b7

    iget-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez v0, :cond_4b7

    if-eqz v6, :cond_4bb

    .line 2298
    :cond_4b7
    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 2302
    :cond_4bb
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->startLaunchTickingLocked()V

    .line 2305
    if-nez v12, :cond_4c2

    const/4 v0, 0x0

    goto :goto_4c4

    :cond_4c2
    iget-object v0, v12, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    :goto_4c4
    move-object v15, v0

    .line 2306
    .local v15, "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v2

    .line 2308
    .local v2, "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateCpuStats()V

    .line 2310
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_4ee

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v5

    .end local v5    # "anim":Z
    .local v18, "anim":Z
    const-string v5, "Moving to RESUMED: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (in existing)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f0

    .end local v18    # "anim":Z
    .restart local v5    # "anim":Z
    :cond_4ee
    move/from16 v18, v5

    .line 2313
    .end local v5    # "anim":Z
    .restart local v18    # "anim":Z
    :goto_4f0
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v7, v0, v14}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 2315
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    move/from16 v19, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    .end local v6    # "lastActivityTranslucent":Z
    .local v19, "lastActivityTranslucent":Z
    invoke-virtual {v0, v6, v5, v5, v5}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZZ)V

    .line 2321
    invoke-static {v7}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyCurTopAct(Lcom/android/server/wm/ActivityRecord;)V

    .line 2327
    const/4 v0, 0x1

    .line 2331
    .local v0, "notUpdated":Z
    invoke-virtual {v1, v7}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v16

    if-eqz v16, :cond_51a

    .line 2340
    move/from16 v20, v0

    .end local v0    # "notUpdated":Z
    .local v20, "notUpdated":Z
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move/from16 v21, v8

    .end local v8    # "hasRunningActivity":Z
    .local v21, "hasRunningActivity":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v8

    invoke-virtual {v0, v7, v8, v5, v6}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    move-result v0

    xor-int/2addr v0, v5

    move/from16 v20, v0

    .end local v20    # "notUpdated":Z
    .restart local v0    # "notUpdated":Z
    goto :goto_51e

    .line 2331
    .end local v21    # "hasRunningActivity":Z
    .restart local v8    # "hasRunningActivity":Z
    :cond_51a
    move/from16 v20, v0

    move/from16 v21, v8

    .line 2344
    .end local v0    # "notUpdated":Z
    .end local v8    # "hasRunningActivity":Z
    .restart local v20    # "notUpdated":Z
    .restart local v21    # "hasRunningActivity":Z
    :goto_51e
    if-eqz v20, :cond_562

    .line 2350
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2351
    .local v0, "nextNext":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v4, :cond_52c

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_548

    :cond_52c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity config changed during resume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", new next: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    :cond_548
    if-eq v0, v7, :cond_54f

    .line 2356
    iget-object v4, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 2358
    :cond_54f
    iget-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v4, :cond_55a

    iget-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-eqz v4, :cond_558

    goto :goto_55a

    :cond_558
    const/4 v4, 0x1

    goto :goto_55e

    .line 2359
    :cond_55a
    :goto_55a
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 2361
    :goto_55e
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    .line 2362
    return v4

    .line 2366
    .end local v0    # "nextNext":Lcom/android/server/wm/ActivityRecord;
    :cond_562
    :try_start_562
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 2367
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v5, v7, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {v0, v5}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 2369
    .local v0, "transaction":Landroid/app/servertransaction/ClientTransaction;
    iget-object v5, v7, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;
    :try_end_570
    .catch Ljava/lang/Exception; {:try_start_562 .. :try_end_570} :catch_650

    .line 2370
    .local v5, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    if-eqz v5, :cond_5af

    .line 2371
    :try_start_572
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2372
    .local v6, "N":I
    iget-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v8, :cond_5a7

    if-lez v6, :cond_5a7

    .line 2373
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v8, :cond_59d

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v6

    .end local v6    # "N":I
    .local v22, "N":I
    const-string v6, "Delivering results to "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59f

    .end local v22    # "N":I
    .restart local v6    # "N":I
    :cond_59d
    move/from16 v22, v6

    .line 2375
    .end local v6    # "N":I
    .restart local v22    # "N":I
    :goto_59f
    invoke-static {v5}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_5a6
    .catch Ljava/lang/Exception; {:try_start_572 .. :try_end_5a6} :catch_5aa

    goto :goto_5af

    .line 2372
    .end local v22    # "N":I
    .restart local v6    # "N":I
    :cond_5a7
    move/from16 v22, v6

    .end local v6    # "N":I
    .restart local v22    # "N":I
    goto :goto_5af

    .line 2408
    .end local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v5    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .end local v22    # "N":I
    :catch_5aa
    move-exception v0

    move-object/from16 v23, v9

    goto/16 :goto_653

    .line 2379
    .restart local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .restart local v5    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :cond_5af
    :goto_5af
    :try_start_5af
    iget-object v6, v7, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;
    :try_end_5b1
    .catch Ljava/lang/Exception; {:try_start_5af .. :try_end_5b1} :catch_650

    if-eqz v6, :cond_5bd

    .line 2380
    :try_start_5b3
    iget-object v6, v7, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 2381
    const/4 v8, 0x1

    invoke-static {v6, v8}, Landroid/app/servertransaction/NewIntentItem;->obtain(Ljava/util/List;Z)Landroid/app/servertransaction/NewIntentItem;

    move-result-object v6

    .line 2380
    invoke-virtual {v0, v6}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_5bd
    .catch Ljava/lang/Exception; {:try_start_5b3 .. :try_end_5bd} :catch_5aa

    .line 2386
    :cond_5bd
    :try_start_5bd
    iget-boolean v6, v7, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    invoke-virtual {v7, v6}, Lcom/android/server/wm/ActivityRecord;->notifyAppResumed(Z)V

    .line 2388
    iget v6, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    .line 2389
    move-object/from16 v22, v5

    .end local v5    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .local v22, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I
    :try_end_5d0
    .catch Ljava/lang/Exception; {:try_start_5bd .. :try_end_5d0} :catch_650

    move-object/from16 v23, v9

    .end local v9    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v23, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :try_start_5d2
    iget-object v9, v7, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 2388
    invoke-static {v6, v8, v5, v9}, Lcom/android/server/wm/EventLogTags;->writeWmResumeActivity(IIILjava/lang/String;)V

    .line 2393
    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->boostPriority(Lcom/android/server/wm/ActivityRecord;)V

    .line 2397
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Lcom/android/server/wm/ActivityRecord;->setSleeping(Z)V

    .line 2398
    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/server/wm/AppWarnings;->onResumeActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 2399
    iget-object v5, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowProcessController;->setPendingUiCleanAndForceProcessStateUpTo(I)V

    .line 2400
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked()V

    .line 2401
    iget-object v5, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 2402
    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->getReportedProcState()I

    move-result v5

    .line 2403
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v6

    .line 2402
    invoke-static {v5, v6}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(IZ)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v5

    .line 2401
    invoke-virtual {v0, v5}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 2404
    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 2406
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v5, :cond_628

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resumeTopActivityLocked: Resumed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_628
    .catch Ljava/lang/Exception; {:try_start_5d2 .. :try_end_628} :catch_64e

    .line 2429
    .end local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v22    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :cond_628
    nop

    .line 2434
    :try_start_629
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V
    :try_end_62c
    .catch Ljava/lang/Exception; {:try_start_629 .. :try_end_62c} :catch_62f

    .line 2441
    nop

    .line 2442
    .end local v2    # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    .end local v15    # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v19    # "lastActivityTranslucent":Z
    .end local v20    # "notUpdated":Z
    goto/16 :goto_6fa

    .line 2435
    .restart local v2    # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    .restart local v15    # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v19    # "lastActivityTranslucent":Z
    .restart local v20    # "notUpdated":Z
    :catch_62f
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 2438
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown during resume of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2439
    const-string/jumbo v4, "resume-exception"

    const/4 v5, 0x1

    invoke-virtual {v7, v4, v5}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 2440
    return v5

    .line 2408
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_64e
    move-exception v0

    goto :goto_653

    .end local v23    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v9    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :catch_650
    move-exception v0

    move-object/from16 v23, v9

    .line 2410
    .end local v9    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v23    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :goto_653
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v5, :cond_671

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resume failed; resetting state to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    :cond_671
    invoke-virtual {v7, v2, v14}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 2415
    if-eqz v15, :cond_67b

    .line 2416
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v15, v4, v14}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 2419
    :cond_67b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restarting because process died: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    iget-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    if-nez v4, :cond_698

    .line 2421
    const/4 v4, 0x1

    iput-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    const/4 v5, 0x0

    goto :goto_6a9

    .line 2422
    :cond_698
    if-eqz v12, :cond_6a8

    .line 2423
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->isTopStackInDisplayArea()Z

    move-result v4

    if-eqz v4, :cond_6a6

    .line 2424
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v7, v4, v5, v5}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    goto :goto_6a9

    .line 2423
    :cond_6a6
    const/4 v5, 0x0

    goto :goto_6a9

    .line 2422
    :cond_6a8
    const/4 v5, 0x0

    .line 2427
    :goto_6a9
    iget-object v4, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v6, 0x1

    invoke-virtual {v4, v7, v6, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 2428
    return v6

    .line 2444
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    .end local v15    # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v18    # "anim":Z
    .end local v19    # "lastActivityTranslucent":Z
    .end local v20    # "notUpdated":Z
    .end local v21    # "hasRunningActivity":Z
    .end local v23    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v5, "anim":Z
    .restart local v8    # "hasRunningActivity":Z
    .restart local v9    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_6b0
    move/from16 v18, v5

    move/from16 v21, v8

    move-object/from16 v23, v9

    const/4 v5, 0x0

    const/4 v6, 0x1

    .end local v5    # "anim":Z
    .end local v8    # "hasRunningActivity":Z
    .end local v9    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v18    # "anim":Z
    .restart local v21    # "hasRunningActivity":Z
    .restart local v23    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    iget-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    if-nez v0, :cond_6bf

    .line 2445
    iput-boolean v6, v7, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    goto :goto_6db

    .line 2448
    :cond_6bf
    const/4 v2, 0x0

    invoke-virtual {v7, v2, v5, v5}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 2451
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_6db

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restarting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    :cond_6db
    :goto_6db
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_6f4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeTopActivityLocked: Restarting "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    :cond_6f4
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v2, 0x1

    invoke-virtual {v0, v7, v2, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 2457
    :goto_6fa
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MNO_TMO_DEVICE_REPORTING:Z

    if-eqz v0, :cond_712

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    move-result v0

    if-eqz v0, :cond_712

    .line 2458
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->mObjHandler:Landroid/os/Handler;

    if-eqz v0, :cond_712

    .line 2459
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->mObjHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$ActivityStack$qJ1gOSo4Msu3B7m8J1GdtsDRd94;

    invoke-direct {v2, v1, v7}, Lcom/android/server/wm/-$$Lambda$ActivityStack$qJ1gOSo4Msu3B7m8J1GdtsDRd94;-><init>(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2468
    :cond_712
    const/4 v2, 0x1

    return v2
.end method

.method private setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 4
    .param p1, "existing"    # Landroid/graphics/Rect;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 3737
    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityStack;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3738
    const/4 v0, 0x0

    return v0

    .line 3741
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    move-object v0, p2

    :goto_11
    invoke-super {p0, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 3743
    .local v0, "result":I
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->updateSurfaceBounds()V

    .line 3744
    return v0
.end method

.method private setLaunchTime(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1236
    iget-wide v0, p1, Lcom/android/server/wm/ActivityRecord;->displayStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_25

    .line 1237
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/wm/ActivityRecord;->displayStartTime:J

    iput-wide v0, p1, Lcom/android/server/wm/ActivityRecord;->fullyDrawnStartTime:J

    .line 1238
    iget-wide v0, p0, Lcom/android/server/wm/ActivityStack;->mLaunchStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    .line 1239
    iget-wide v0, p1, Lcom/android/server/wm/ActivityRecord;->displayStartTime:J

    iput-wide v0, p0, Lcom/android/server/wm/ActivityStack;->mFullyDrawnStartTime:J

    iput-wide v0, p0, Lcom/android/server/wm/ActivityStack;->mLaunchStartTime:J

    .line 1241
    :cond_1c
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/wm/SluggishInfo;->addStartLaunchLog(Ljava/lang/String;)V

    .line 1242
    invoke-static {p1}, Lcom/android/server/wm/SluggishDetector;->setLaunch(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_3b

    .line 1243
    :cond_25
    iget-wide v0, p0, Lcom/android/server/wm/ActivityStack;->mLaunchStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3b

    .line 1244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityStack;->mFullyDrawnStartTime:J

    iput-wide v0, p0, Lcom/android/server/wm/ActivityStack;->mLaunchStartTime:J

    .line 1245
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/wm/SluggishInfo;->addStartLaunchLog(Ljava/lang/String;)V

    .line 1246
    invoke-static {p1}, Lcom/android/server/wm/SluggishDetector;->setLaunch(Lcom/android/server/wm/ActivityRecord;)V

    .line 1248
    :cond_3b
    :goto_3b
    return-void
.end method

.method private setTaskBounds(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 3318
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$VIuWlCdKwIo4qqRlevMLniedZ7o;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$VIuWlCdKwIo4qqRlevMLniedZ7o;

    const-class v1, Lcom/android/server/wm/Task;

    .line 3319
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 3318
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 3320
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityStack;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 3321
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 3322
    return-void
.end method

.method private static setTaskBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 3
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 3325
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 3326
    return-void
.end method

.method private setWindowingModeInSurfaceTransaction(IZZ)V
    .registers 20
    .param p1, "preferredWindowingMode"    # I
    .param p2, "creating"    # Z
    .param p3, "deferEnsuringVisibility"    # Z

    .line 768
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 769
    .local v2, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-nez v2, :cond_11

    .line 770
    const-string v0, "ActivityTaskManager"

    const-string/jumbo v3, "taskDisplayArea is null, bail early"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    return-void

    .line 773
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    .line 774
    .local v3, "currentMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideWindowingMode()I

    move-result v4

    .line 775
    .local v4, "currentOverrideMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 776
    .local v5, "topTask":Lcom/android/server/wm/Task;
    move/from16 v0, p1

    .line 780
    .local v0, "windowingMode":I
    const/4 v6, 0x0

    if-nez p2, :cond_30

    .line 781
    nop

    .line 782
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v7

    .line 781
    invoke-virtual {v2, v0, v6, v5, v7}, Lcom/android/server/wm/TaskDisplayArea;->isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)Z

    move-result v7

    if-nez v7, :cond_30

    .line 783
    const/4 v0, 0x0

    move v7, v0

    goto :goto_31

    .line 787
    :cond_30
    move v7, v0

    .end local v0    # "windowingMode":I
    .local v7, "windowingMode":I
    :goto_31
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v8

    .line 789
    .local v8, "alreadyInSplitScreenMode":Z
    const/4 v0, 0x1

    if-eqz p2, :cond_4e

    if-eqz v8, :cond_4e

    if-ne v7, v0, :cond_4e

    .line 790
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v9

    if-eqz v9, :cond_4e

    .line 793
    iget-object v9, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v9

    .line 794
    invoke-virtual {v9}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityDismissingDockedStack()V

    .line 795
    invoke-virtual {v2, v1}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed(Lcom/android/server/wm/ActivityStack;)V

    .line 799
    :cond_4e
    move/from16 v9, p3

    .line 800
    .local v9, "deferEnsureVisible":Z
    const/4 v10, 0x2

    const/4 v11, 0x0

    if-eqz v8, :cond_66

    if-ne v3, v10, :cond_66

    if-nez v7, :cond_66

    .line 802
    invoke-virtual {v5, v11}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v12

    if-eqz v12, :cond_63

    .line 803
    invoke-virtual {v5, v0}, Lcom/android/server/wm/Task;->setChangePinnedToSplitSceen(Z)V

    .line 804
    const/4 v9, 0x1

    goto :goto_66

    .line 806
    :cond_63
    invoke-virtual {v2, v1}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed(Lcom/android/server/wm/ActivityStack;)V

    .line 811
    :cond_66
    :goto_66
    if-ne v3, v7, :cond_72

    .line 815
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v7}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 816
    return-void

    .line 819
    :cond_72
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    .line 824
    .local v12, "topActivity":Lcom/android/server/wm/ActivityRecord;
    move v13, v7

    .line 825
    .local v13, "likelyResolvedMode":I
    if-nez v7, :cond_86

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v14

    .line 827
    .local v14, "parent":Lcom/android/server/wm/ConfigurationContainer;
    if-eqz v14, :cond_84

    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v15

    goto :goto_85

    .line 828
    :cond_84
    move v15, v0

    :goto_85
    move v13, v15

    .line 830
    .end local v14    # "parent":Lcom/android/server/wm/ConfigurationContainer;
    :cond_86
    if-ne v3, v10, :cond_91

    .line 831
    iget-object v14, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v14}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityUnpinned()V

    .line 833
    :cond_91
    if-ne v13, v10, :cond_a0

    .line 834
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v14

    if-eqz v14, :cond_a0

    .line 836
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/ActivityStack;->dismissPip()V

    .line 838
    :cond_a0
    const/4 v14, 0x5

    if-eq v13, v0, :cond_c3

    if-eqz v12, :cond_c3

    iget-boolean v15, v12, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v15, :cond_c3

    .line 840
    invoke-virtual {v12, v13}, Lcom/android/server/wm/ActivityRecord;->isNonResizableOrForcedResizable(I)Z

    move-result v15

    if-eqz v15, :cond_c3

    .line 842
    if-ne v13, v14, :cond_b2

    goto :goto_c3

    .line 848
    :cond_b2
    iget-object v15, v12, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 849
    .local v15, "packageName":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v10

    iget v6, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v10, v6, v0, v15}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 854
    .end local v15    # "packageName":Ljava/lang/String;
    :cond_c3
    :goto_c3
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 856
    if-eqz v12, :cond_e4

    .line 858
    :try_start_ca
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isNonOrganizedHomeOrRecentsTask()Z

    move-result v6

    if-eqz v6, :cond_dd

    .line 859
    invoke-static {v3}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v6

    if-nez v6, :cond_dd

    .line 860
    invoke-static {v7}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v6

    if-nez v6, :cond_dd

    goto :goto_e4

    .line 866
    :cond_dd
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    :cond_e4
    :goto_e4
    nop

    .line 871
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    .line 870
    invoke-static {v7, v6}, Lcom/android/server/wm/FreeformController;->useAlwaysOnTopFreeform(ILcom/android/server/wm/DisplayContent;)Z

    move-result v6

    if-eqz v6, :cond_f8

    .line 872
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6, v0}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(Z)V

    .line 875
    :cond_f8
    invoke-super {v1, v7}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 878
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v6

    move v7, v6

    .line 880
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    if-eqz v6, :cond_130

    .line 881
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v6, :cond_130

    .line 882
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_124

    .line 883
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    if-eqz p2, :cond_11d

    .line 884
    const-string v10, "freeform stack attached"

    goto :goto_120

    :cond_11d
    const-string/jumbo v10, "windowing mode change:freeform"

    .line 883
    :goto_120
    invoke-virtual {v6, v10}, Lcom/android/server/wm/FreeformController;->scheduleBindMinimizeContainerService(Ljava/lang/String;)V

    goto :goto_130

    .line 885
    :cond_124
    if-nez p2, :cond_130

    .line 886
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    const-string/jumbo v10, "windowing mode change:non-freeform"

    invoke-virtual {v6, v10}, Lcom/android/server/wm/FreeformController;->scheduleUnbindMinimizeContainerService(Ljava/lang/String;)V
    :try_end_130
    .catchall {:try_start_ca .. :try_end_130} :catchall_21a

    .line 892
    :cond_130
    :goto_130
    if-eqz p2, :cond_138

    .line 931
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 894
    return-void

    .line 900
    :cond_138
    const/4 v6, 0x3

    if-ne v7, v6, :cond_146

    if-nez v8, :cond_13e

    goto :goto_146

    .line 904
    :cond_13e
    :try_start_13e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "Setting primary split-screen windowing mode while there is already one isn\'t currently supported"

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v3    # "currentMode":I
    .end local v4    # "currentOverrideMode":I
    .end local v5    # "topTask":Lcom/android/server/wm/Task;
    .end local v7    # "windowingMode":I
    .end local v8    # "alreadyInSplitScreenMode":Z
    .end local v9    # "deferEnsureVisible":Z
    .end local v12    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v13    # "likelyResolvedMode":I
    .end local p0    # "this":Lcom/android/server/wm/ActivityStack;
    .end local p1    # "preferredWindowingMode":I
    .end local p2    # "creating":Z
    .end local p3    # "deferEnsuringVisibility":Z
    throw v0

    .line 909
    .restart local v2    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v3    # "currentMode":I
    .restart local v4    # "currentOverrideMode":I
    .restart local v5    # "topTask":Lcom/android/server/wm/Task;
    .restart local v7    # "windowingMode":I
    .restart local v8    # "alreadyInSplitScreenMode":Z
    .restart local v9    # "deferEnsureVisible":Z
    .restart local v12    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v13    # "likelyResolvedMode":I
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStack;
    .restart local p1    # "preferredWindowingMode":I
    .restart local p2    # "creating":Z
    .restart local p3    # "deferEnsuringVisibility":Z
    :cond_146
    :goto_146
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 910
    if-eq v7, v0, :cond_189

    .line 912
    if-ne v7, v14, :cond_178

    .line 913
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_178

    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v6, :cond_161

    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 914
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_178

    .line 915
    :cond_161
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 916
    .local v6, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v10, v1, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v10, v10, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v10

    .line 917
    if-eqz v6, :cond_174

    iget-object v14, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    goto :goto_175

    :cond_174
    const/4 v14, 0x0

    .line 916
    :goto_175
    invoke-virtual {v10, v1, v14}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    .line 920
    .end local v6    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_178
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->matchParentBounds()Z

    move-result v6

    if-eqz v6, :cond_184

    .line 921
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_189

    .line 923
    :cond_184
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityStack;->getRawBounds(Landroid/graphics/Rect;)V

    .line 927
    :cond_189
    :goto_189
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v10, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-static {v6, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19a

    .line 928
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v6, v11, v0}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;ZZ)V
    :try_end_19a
    .catchall {:try_start_13e .. :try_end_19a} :catchall_21a

    .line 931
    :cond_19a
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 932
    nop

    .line 935
    if-nez v9, :cond_1e1

    .line 937
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v10, 0x0

    invoke-virtual {v6, v10, v11, v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 938
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 940
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v10, v1, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 941
    invoke-virtual {v10}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    if-eq v6, v10, :cond_1de

    .line 942
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v1, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v10}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setWindowingModeInSurfaceTransaction("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    goto :goto_1e3

    .line 941
    :cond_1de
    move/from16 v15, p1

    goto :goto_1e3

    .line 935
    :cond_1e1
    move/from16 v15, p1

    .line 948
    :goto_1e3
    const/4 v6, 0x2

    if-ne v3, v6, :cond_1ea

    if-ne v7, v0, :cond_1ea

    move v6, v0

    goto :goto_1eb

    :cond_1ea
    const/4 v6, 0x0

    .line 950
    .local v6, "pinnedToFullscreen":Z
    :goto_1eb
    if-eqz v6, :cond_219

    if-eqz v12, :cond_219

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isForceHidden()Z

    move-result v10

    if-nez v10, :cond_219

    .line 951
    iget-object v10, v1, Lcom/android/server/wm/ActivityStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/android/server/wm/PinnedStackController;->setPipWindowingModeChanging(Z)V

    .line 958
    :try_start_1fe
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->reportDescendantOrientationChangeIfNeeded()V
    :try_end_201
    .catchall {:try_start_1fe .. :try_end_201} :catchall_20c

    .line 960
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/android/server/wm/PinnedStackController;->setPipWindowingModeChanging(Z)V

    .line 961
    goto :goto_219

    .line 960
    :catchall_20c
    move-exception v0

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/wm/PinnedStackController;->setPipWindowingModeChanging(Z)V

    .line 961
    throw v11

    .line 963
    :cond_219
    :goto_219
    return-void

    .line 931
    .end local v6    # "pinnedToFullscreen":Z
    :catchall_21a
    move-exception v0

    move/from16 v15, p1

    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 932
    throw v0
.end method

.method private shouldUnsetWindowingMode()Z
    .registers 3

    .line 4209
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->isWindowingModeSupportedInCover(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private spegDisplayChecker()V
    .registers 9

    .line 1019
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1020
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_7

    .line 1021
    return-void

    .line 1023
    :cond_7
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1025
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 1026
    .local v2, "dm":Landroid/hardware/display/DisplayManager;
    const-string v3, "SPEG"

    if-nez v2, :cond_1f

    .line 1027
    const-string v4, "Can\'t get DisplayManager"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    return-void

    .line 1030
    :cond_1f
    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->getHiddenDisplayId(Ljava/lang/String;)I

    move-result v4

    .line 1032
    .local v4, "hiddenDisplayId":I
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v5

    .line 1034
    .local v5, "appDisplayId":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_77

    if-eq v4, v5, :cond_77

    .line 1035
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "There is speg display "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", but "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " moveToFront on other display "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Backtrace: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_77
    return-void
.end method

.method private updateSurfaceBounds()V
    .registers 2

    .line 3933
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 3934
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->updateSurfacePosition()V

    .line 3935
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->scheduleAnimation()V

    .line 3936
    return-void
.end method

.method private updateTransitLocked(ILandroid/app/ActivityOptions;Z)V
    .registers 6
    .param p1, "transit"    # I
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "forceOverride"    # Z

    .line 2965
    if-eqz p2, :cond_17

    .line 2966
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2967
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_14

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 2968
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    goto :goto_17

    .line 2970
    :cond_14
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2973
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, p3}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 2975
    return-void
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/WindowContainer;ZZ)V
    .registers 7
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "toTop"    # Z
    .param p3, "showForAllUsers"    # Z

    .line 3584
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isSingleTaskInstance()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->hasChild()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_24

    .line 3585
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can only have one child on stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3588
    :cond_24
    :goto_24
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3591
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 3592
    :try_start_2b
    invoke-virtual {v0, p3}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    goto :goto_31

    .line 3598
    :catchall_2f
    move-exception v2

    goto :goto_41

    .line 3596
    :cond_31
    :goto_31
    if-eqz p2, :cond_37

    const v2, 0x7fffffff

    goto :goto_38

    :cond_37
    move v2, v1

    :goto_38
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/wm/ActivityStack;->addChild(Lcom/android/server/wm/WindowContainer;IZ)V
    :try_end_3b
    .catchall {:try_start_2b .. :try_end_3b} :catchall_2f

    .line 3598
    if-eqz v0, :cond_40

    .line 3599
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    .line 3602
    :cond_40
    return-void

    .line 3598
    :goto_41
    if-eqz v0, :cond_46

    .line 3599
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    .line 3601
    :cond_46
    throw v2
.end method

.method awakeFromSleepingLocked()V
    .registers 3

    .line 1267
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$-GJgeCihIbtgRoLHZV1sBcllaUU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$-GJgeCihIbtgRoLHZV1sBcllaUU;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1268
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_16

    .line 1269
    const-string v0, "ActivityTaskManager"

    const-string v1, "awakeFromSleepingLocked: previously pausing activity didn\'t pause"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->activityPaused(Z)V

    .line 1272
    :cond_16
    return-void
.end method

.method canShowWithInsecureKeyguard()Z
    .registers 5

    .line 1748
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1749
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_14

    .line 1754
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getFlags()I

    move-result v1

    .line 1755
    .local v1, "flags":I
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return v2

    .line 1750
    .end local v1    # "flags":I
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack is not attached to any display, stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1751
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method cancelInitializingActivities()V
    .registers 3

    .line 1823
    sget-object v0, Lcom/android/server/wm/-$$Lambda$_-mEZ6EASUAbbjgZj87dfvxRN64;->INSTANCE:Lcom/android/server/wm/-$$Lambda$_-mEZ6EASUAbbjgZj87dfvxRN64;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/ActivityStack;->checkBehindFullscreenActivity(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Consumer;)Z

    .line 1824
    return-void
.end method

.method checkBehindFullscreenActivity(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Consumer;)Z
    .registers 4
    .param p1, "toCheck"    # Lcom/android/server/wm/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 1834
    .local p2, "handleBehindFullscreenActivity":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mCheckBehindFullscreenActivityHelper:Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->process(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;ZZ)Z
    .registers 12
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "shouldBeVisible"    # Z
    .param p3, "isTop"    # Z

    .line 1705
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v0

    .line 1706
    .local v0, "displayId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    .line 1708
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    .line 1709
    invoke-virtual {v1, v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v1

    .line 1710
    .local v1, "keyguardOrAodShowing":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v2

    .line 1711
    .local v2, "keyguardLocked":Z
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v3

    .line 1712
    .local v3, "showWhenLocked":Z
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    move-result v4

    .line 1713
    .local v4, "dismissKeyguard":Z
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p2, :cond_4f

    .line 1714
    if-eqz v4, :cond_30

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v7, :cond_30

    .line 1715
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1720
    :cond_30
    if-eqz p3, :cond_37

    .line 1721
    iget-boolean v7, p0, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    or-int/2addr v7, v3

    iput-boolean v7, p0, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    .line 1724
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->canShowWithInsecureKeyguard()Z

    move-result v7

    if-eqz v7, :cond_4b

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 1725
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result v7

    if-eqz v7, :cond_4b

    move v7, v6

    goto :goto_4c

    :cond_4b
    move v7, v5

    .line 1726
    .local v7, "canShowWithKeyguard":Z
    :goto_4c
    if-eqz v7, :cond_4f

    .line 1727
    return v6

    .line 1730
    .end local v7    # "canShowWithKeyguard":Z
    :cond_4f
    if-eqz v1, :cond_63

    .line 1733
    if-eqz p2, :cond_61

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v7

    .line 1734
    invoke-virtual {v7, p1, v4}, Lcom/android/server/wm/KeyguardController;->canShowActivityWhileKeyguardShowing(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v7

    if-eqz v7, :cond_61

    move v5, v6

    goto :goto_62

    :cond_61
    nop

    .line 1733
    :goto_62
    return v5

    .line 1735
    :cond_63
    if-eqz v2, :cond_75

    .line 1736
    if-eqz p2, :cond_74

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v7

    invoke-virtual {v7, v4, v3}, Lcom/android/server/wm/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result v7

    if-eqz v7, :cond_74

    move v5, v6

    :cond_74
    return v5

    .line 1739
    :cond_75
    return p2
.end method

.method checkReadyForSleep()V
    .registers 3

    .line 1275
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->goToSleepIfPossible(Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1276
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 1278
    :cond_13
    return-void
.end method

.method checkTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "top"    # Lcom/android/server/wm/ActivityRecord;

    .line 1759
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, p1, :cond_1a

    .line 1760
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1761
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_13

    .line 1763
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1764
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 1766
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1768
    :cond_1a
    return-void
.end method

.method completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V
    .registers 14
    .param p1, "resumeNext"    # Z
    .param p2, "resuming"    # Lcom/android/server/wm/ActivityRecord;

    .line 1508
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1509
    .local v0, "prev":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Complete pause: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    :cond_1c
    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_e0

    .line 1512
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    .line 1513
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    .line 1514
    .local v4, "wasStopping":Z
    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v6, "completePausedLocked"

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1515
    iget-boolean v5, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v7, 0x1

    if-eqz v5, :cond_53

    .line 1516
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v5, :cond_4d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Executing finish of activity: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    :cond_4d
    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityRecord;->completeFinishing(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto/16 :goto_d9

    .line 1518
    :cond_53
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v5

    if-eqz v5, :cond_c0

    .line 1519
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v5, :cond_83

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Enqueue pending stop if needed: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " wasStopping="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " visibleRequested="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :cond_83
    iget-boolean v5, v0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v5, :cond_a5

    .line 1524
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v5, :cond_9f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Re-launching after pause: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :cond_9f
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->relaunchActivityLocked(Z)V

    goto :goto_d9

    .line 1526
    :cond_a5
    if-eqz v4, :cond_ad

    .line 1530
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v2, v6}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    goto :goto_d9

    .line 1531
    :cond_ad
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v2, :cond_b7

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v2

    if-eqz v2, :cond_d9

    .line 1533
    :cond_b7
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->setDeferHidingClient(Z)V

    .line 1536
    const-string v2, "completePauseLocked"

    invoke-virtual {v0, v7, v3, v2}, Lcom/android/server/wm/ActivityRecord;->addToStopping(ZZLjava/lang/String;)V

    goto :goto_d9

    .line 1540
    :cond_c0
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v5, :cond_d8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App died during pause, not stopping: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    :cond_d8
    const/4 v0, 0x0

    .line 1546
    :cond_d9
    :goto_d9
    if-eqz v0, :cond_de

    .line 1547
    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 1549
    :cond_de
    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1552
    .end local v4    # "wasStopping":Z
    :cond_e0
    if-eqz p1, :cond_10a

    .line 1553
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1554
    .local v2, "topStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_f6

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v4

    if-nez v4, :cond_f6

    .line 1555
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v2, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_10a

    .line 1557
    :cond_f6
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->checkReadyForSleep()V

    .line 1558
    if-eqz v2, :cond_ff

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1559
    .local v1, "top":Lcom/android/server/wm/ActivityRecord;
    :cond_ff
    if-eqz v1, :cond_105

    if-eqz v0, :cond_10a

    if-eq v1, v0, :cond_10a

    .line 1564
    :cond_105
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 1569
    .end local v1    # "top":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "topStack":Lcom/android/server/wm/ActivityStack;
    :cond_10a
    :goto_10a
    if-eqz v0, :cond_14f

    .line 1570
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1572
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_14d

    iget-wide v1, v0, Lcom/android/server/wm/ActivityRecord;->cpuTimeAtResume:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_14d

    .line 1573
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getCpuTime()J

    move-result-wide v1

    iget-wide v6, v0, Lcom/android/server/wm/ActivityRecord;->cpuTimeAtResume:J

    sub-long/2addr v1, v6

    .line 1574
    .local v1, "diff":J
    cmp-long v6, v1, v4

    if-lez v6, :cond_14d

    .line 1575
    sget-object v6, Lcom/android/server/wm/-$$Lambda$1636dquQO0UvkFayOGf_gceB4iw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$1636dquQO0UvkFayOGf_gceB4iw;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1578
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1579
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 1575
    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v6

    .line 1580
    .local v6, "r":Ljava/lang/Runnable;
    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v7, v6}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 1583
    .end local v1    # "diff":J
    .end local v6    # "r":Ljava/lang/Runnable;
    :cond_14d
    iput-wide v4, v0, Lcom/android/server/wm/ActivityRecord;->cpuTimeAtResume:J

    .line 1586
    :cond_14f
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2, v3, v3}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1591
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    if-nez v1, :cond_16a

    .line 1592
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eqz v1, :cond_177

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    move-result v1

    if-eqz v1, :cond_177

    .line 1593
    :cond_16a
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1594
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-boolean v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    .line 1596
    :cond_177
    return-void
.end method

.method convertActivityToTranslucent(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1771
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 1772
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1773
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1774
    return-void
.end method

.method dismissPip()V
    .registers 3

    .line 3700
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3704
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 3709
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityStack$W67sd8AeAGx32tFIatx3GYvaD8c;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$ActivityStack$W67sd8AeAGx32tFIatx3GYvaD8c;-><init>(Lcom/android/server/wm/ActivityStack;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 3719
    return-void

    .line 3705
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t exit pinned mode if it\'s not pinned already."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3701
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can\'t move tasks from non-standard stacks."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 3968
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3969
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_72

    .line 3970
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Exiting application tokens:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3973
    .local v0, "doublePrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_3b
    if-ltz v1, :cond_6f

    .line 3974
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 3975
    .local v2, "token":Lcom/android/server/wm/WindowToken;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Exiting App #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3976
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3977
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 3978
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3973
    .end local v2    # "token":Lcom/android/server/wm/WindowToken;
    add-int/lit8 v1, v1, -0x1

    goto :goto_3b

    .line 3980
    .end local v1    # "i":I
    :cond_6f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3982
    .end local v0    # "doublePrefix":Ljava/lang/String;
    :cond_72
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    const-string v1, "AnimatingApps:"

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/AnimatingActivityRegistry;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 3983
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z
    .registers 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;
    .param p6, "needSep"    # Z

    .line 3384
    move-object v8, p0

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$2aojtQCazA_OjhqkesohZhDlVY0;

    move-object v9, p2

    move/from16 v10, p6

    .local v0, "headerPrinter":Ljava/lang/Runnable;
    invoke-direct {v0, p0, v10, p2}, Lcom/android/server/wm/-$$Lambda$ActivityStack$2aojtQCazA_OjhqkesohZhDlVY0;-><init>(Lcom/android/server/wm/ActivityStack;ZLjava/io/PrintWriter;)V

    .line 3403
    const/4 v1, 0x0

    .line 3405
    .local v1, "printed":Z
    if-nez p5, :cond_14

    .line 3408
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3409
    const/4 v0, 0x0

    .line 3410
    const/4 v1, 0x1

    move-object v11, v0

    move v0, v1

    goto :goto_16

    .line 3405
    :cond_14
    move-object v11, v0

    move v0, v1

    .line 3413
    .end local v1    # "printed":Z
    .local v0, "printed":Z
    .local v11, "headerPrinter":Ljava/lang/Runnable;
    :goto_16
    iget-object v2, v8, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, "    mPausingActivity: "

    move-object v1, p2

    move-object/from16 v3, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3415
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    const-string v5, "    mResumedActivity: "

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3417
    if-eqz p3, :cond_4c

    .line 3418
    iget-object v2, v8, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, "    mLastPausedActivity: "

    move-object v1, p2

    move-object/from16 v3, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3420
    iget-object v2, v8, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v5, "    mLastNoHistoryActivity: "

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v1

    or-int/2addr v0, v1

    move v12, v0

    goto :goto_4d

    .line 3417
    :cond_4c
    move v12, v0

    .line 3424
    .end local v0    # "printed":Z
    .local v12, "printed":Z
    :goto_4d
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/ActivityStack;->dumpActivities(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/Runnable;)Z

    move-result v0

    or-int/2addr v0, v12

    .line 3426
    .end local v12    # "printed":Z
    .restart local v0    # "printed":Z
    return v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 4095
    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    .line 4096
    return-void

    .line 4099
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4100
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/Task;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 4102
    const-wide v2, 0x10500000002L

    iget v4, p0, Lcom/android/server/wm/ActivityStack;->mTaskId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4103
    const-wide v2, 0x1050000000fL

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4104
    const-wide v2, 0x10500000010L

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4106
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_46

    .line 4107
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-wide v3, 0x10b0000000cL

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4109
    :cond_46
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_58

    .line 4110
    const-wide v2, 0x1090000000dL

    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4112
    :cond_58
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->origActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_6a

    .line 4113
    const-wide v2, 0x1090000000eL

    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4115
    :cond_6a
    const-wide v2, 0x10500000011L

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4116
    const-wide v2, 0x10500000012L

    iget v4, p0, Lcom/android/server/wm/ActivityStack;->mResizeMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4117
    const-wide v2, 0x10500000013L

    iget v4, p0, Lcom/android/server/wm/ActivityStack;->mMinWidth:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4118
    const-wide v2, 0x10500000014L

    iget v4, p0, Lcom/android/server/wm/ActivityStack;->mMinHeight:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4120
    const-wide v2, 0x10800000004L

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->matchParentBounds()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4121
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4123
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_ba

    .line 4124
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000016L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4127
    :cond_ba
    const-wide v2, 0x1080000001aL

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimating:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4129
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_e4

    .line 4130
    const-wide v2, 0x10500000008L

    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4131
    const-wide v2, 0x10500000009L

    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4134
    :cond_e4
    const-wide v2, 0x1080000001cL

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStack;->mCreatedByOrganizer:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4136
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4137
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V
    .registers 5
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z

    .line 1627
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 1628
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .registers 7
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z

    .line 1648
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    .line 1649
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1650
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->beginActivityVisibilityUpdate()V

    .line 1652
    :try_start_b
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->process(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 1655
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 1656
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1658
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_26

    .line 1661
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->endActivityVisibilityUpdate()V

    .line 1662
    nop

    .line 1663
    return-void

    .line 1661
    :catchall_26
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->endActivityVisibilityUpdate()V

    .line 1662
    throw v0
.end method

.method ensureVisibleActivitiesConfiguration(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 4
    .param p1, "start"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "preserveWindow"    # Z

    .line 3273
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;->process(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 3274
    return-void
.end method

.method executeAppTransition(Landroid/app/ActivityOptions;)V
    .registers 3
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 4054
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 4055
    invoke-static {p1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 4056
    return-void
.end method

.method finishAllActivitiesImmediately()V
    .registers 2

    .line 2793
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->hasChild()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2794
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->removeIfPossible()V

    .line 2795
    return-void

    .line 2797
    :cond_a
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$YIUBC0Vum7KZ2D2K8E2QiIjsRcU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$YIUBC0Vum7KZ2D2K8E2QiIjsRcU;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2801
    return-void
.end method

.method final finishTopCrashedActivityLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)Lcom/android/server/wm/Task;
    .registers 13
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2719
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2720
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_ad

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v2, p1, :cond_d

    goto/16 :goto_ad

    .line 2723
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    const-string v3, "ActivityTaskManager"

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v2, p1, :cond_3a

    .line 2726
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Not force finishing home activity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2727
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2726
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    return-object v1

    .line 2730
    :cond_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Force finishing activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2731
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2730
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2733
    .local v1, "finishedTask":Lcom/android/server/wm/Task;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v5, 0x1a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 2735
    invoke-virtual {v0, p2, v6}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 2739
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2740
    .local v4, "activityBelow":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_ac

    .line 2741
    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->STARTED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v4, v5, v7, v8, v9}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 2742
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v5

    if-eqz v5, :cond_8d

    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object v7, v4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v5, v7, :cond_ac

    .line 2744
    :cond_8d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2745
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2744
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    invoke-virtual {v4, p2, v6}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 2751
    :cond_ac
    return-object v1

    .line 2721
    .end local v1    # "finishedTask":Lcom/android/server/wm/Task;
    .end local v4    # "activityBelow":Lcom/android/server/wm/ActivityRecord;
    :cond_ad
    :goto_ad
    return-object v1
.end method

.method finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 5
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 2755
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$YAQEcQUrLqR06xiJJApMvOPIxhg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$YAQEcQUrLqR06xiJJApMvOPIxhg;

    const-class v1, Lcom/android/server/wm/Task;

    .line 2756
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2755
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 2757
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityStack;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 2758
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2759
    return-void
.end method

.method getAnimatingActivityRegistry()Lcom/android/server/wm/AnimatingActivityRegistry;
    .registers 2

    .line 4050
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    return-object v0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 3761
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3762
    return-void
.end method

.method getDimBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 3781
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3782
    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    goto :goto_d

    .line 3785
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->getBounds(Landroid/graphics/Rect;)V

    .line 3787
    :goto_d
    return-void
.end method

.method getDisplay()Lcom/android/server/wm/DisplayContent;
    .registers 2

    .line 988
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    .line 4046
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 3479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3481
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const-string v1, "all"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3482
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$hD1GQddqK6sJaBtwVBGHwmleilc;

    invoke-direct {v1, v0}, Lcom/android/server/wm/-$$Lambda$hD1GQddqK6sJaBtwVBGHwmleilc;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_3c

    .line 3483
    :cond_19
    const-string/jumbo v1, "top"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 3484
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3485
    .local v1, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_2b

    .line 3486
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3488
    .end local v1    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_2b
    goto :goto_3c

    .line 3489
    :cond_2c
    new-instance v1, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 3490
    .local v1, "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    .line 3492
    new-instance v2, Lcom/android/server/wm/-$$Lambda$ActivityStack$BqE10FCv9how7gdM55red1ApUGs;

    invoke-direct {v2, v1, v0}, Lcom/android/server/wm/-$$Lambda$ActivityStack$BqE10FCv9how7gdM55red1ApUGs;-><init>(Lcom/android/server/am/ActivityManagerService$ItemMatcher;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3499
    .end local v1    # "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    :goto_3c
    return-object v0
.end method

.method getFinalAnimationBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 3768
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3769
    return-void
.end method

.method getFinalAnimationSourceHintBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 3775
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3776
    return-void
.end method

.method getRawBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 3752
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3753
    return-void
.end method

.method getRelativePosition(Landroid/graphics/Point;)V
    .registers 4
    .param p1, "outPos"    # Landroid/graphics/Point;

    .line 3940
    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->getRelativePosition(Landroid/graphics/Point;)V

    .line 3941
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskOutset()I

    move-result v0

    .line 3942
    .local v0, "outset":I
    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 3943
    iget v1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 3944
    return-void
.end method

.method getTopDismissingKeyguardActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 1694
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method goToSleep()V
    .registers 3

    .line 1332
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$dvqNyQj0eAzBSAZyddlfQEcg3To;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$dvqNyQj0eAzBSAZyddlfQEcg3To;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1340
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1342
    return-void
.end method

.method goToSleepIfPossible(Z)Z
    .registers 8
    .param p1, "shuttingDown"    # Z

    .line 1292
    const/4 v0, 0x1

    .line 1294
    .local v0, "shouldSleep":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_35

    .line 1296
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sleep needs to pause "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :cond_21
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v1, :cond_2a

    const-string v1, "Sleep => pause with userLeaving=false"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :cond_2a
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v5, "goToSleepIfPossible"

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    .line 1304
    const/4 v0, 0x0

    goto :goto_54

    .line 1305
    :cond_35
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_54

    .line 1307
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_53

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sleep still waiting to pause "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :cond_53
    const/4 v0, 0x0

    .line 1311
    :cond_54
    :goto_54
    if-nez p1, :cond_8b

    .line 1312
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityStack;->containsActivityFromStack(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 1314
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_85

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sleep still need to stop "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 1315
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " activities"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1314
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :cond_85
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdle()V

    .line 1318
    const/4 v0, 0x0

    .line 1322
    :cond_8b
    if-eqz v0, :cond_90

    .line 1323
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->goToSleep()V

    .line 1326
    :cond_90
    return v0
.end method

.method handleAppDied(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 5
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 3368
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v0, p1, :cond_2d

    .line 3369
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-nez v0, :cond_13

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v0, :cond_2b

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App died while pausing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3371
    :cond_2b
    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3373
    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v0, p1, :cond_3b

    .line 3374
    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3375
    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3378
    :cond_3b
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeHistoryRecords(Lcom/android/server/wm/WindowProcessController;)V

    .line 3379
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRemoveHistoryRecordsForApp:Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->process(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0

    return v0
.end method

.method handleCompleteDeferredRemoval()Z
    .registers 2

    .line 4038
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4039
    const/4 v0, 0x1

    return v0

    .line 4042
    :cond_9
    invoke-super {p0}, Lcom/android/server/wm/Task;->handleCompleteDeferredRemoval()Z

    move-result v0

    return v0
.end method

.method public isCompatible(II)Z
    .registers 4
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 968
    if-nez p2, :cond_3

    .line 971
    const/4 p2, 0x1

    .line 973
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/Task;->isCompatible(II)Z

    move-result v0

    return v0
.end method

.method isFocusedStackOnDisplay()Z
    .registers 3

    .line 1608
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1609
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-ne p0, v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public isForceScaled()Z
    .registers 2

    .line 4033
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimating:Z

    return v0
.end method

.method final isHomeOrRecentsStack()Z
    .registers 2

    .line 998
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method final isOnHomeDisplay()Z
    .registers 2

    .line 1002
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isSingleTaskInstance()Z
    .registers 3

    .line 993
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 994
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSingleTaskInstance()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method isTopSplitScreenStack()Z
    .registers 3

    .line 1686
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1687
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne p0, v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 1686
    :goto_17
    return v0
.end method

.method isTopStackInDisplayArea()Z
    .registers 3

    .line 1599
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 1600
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method isUnderHomeStack()Z
    .registers 5

    .line 4082
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 4083
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 4084
    return v1

    .line 4087
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v2

    .line 4088
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v3

    if-le v2, v3, :cond_17

    const/4 v1, 0x1

    .line 4087
    :cond_17
    return v1
.end method

.method public synthetic lambda$dismissPip$15$ActivityStack()V
    .registers 5

    .line 3710
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3711
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 3713
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;Z)V

    .line 3715
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityStack;)V

    .line 3716
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget v2, v0, Lcom/android/server/wm/Task;->effectiveUid:I

    iget-object v3, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 3717
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 3716
    invoke-static {v1, v2, v3}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logPictureInPictureFullScreen(Landroid/content/Context;ILjava/lang/String;)V

    .line 3718
    return-void
.end method

.method public synthetic lambda$dump$11$ActivityStack(ZLjava/io/PrintWriter;)V
    .registers 5
    .param p1, "needSep"    # Z
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 3385
    if-eqz p1, :cond_5

    .line 3386
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3388
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Stack #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3389
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3390
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3388
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isSleeping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3394
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTopFreeform()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 3395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isAlwaysOnTopFreeform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTopFreeform()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3397
    :cond_8b
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->supportsMinimizeState()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 3398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isMinimized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isMinimized()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3401
    :cond_a9
    return-void
.end method

.method public synthetic lambda$dumpActivities$12$ActivityStack(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Lcom/android/server/wm/Task;)V
    .registers 9
    .param p1, "printed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p2, "printedHeader"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p3, "needSep"    # Z
    .param p4, "pw"    # Ljava/io/PrintWriter;
    .param p5, "header"    # Ljava/lang/Runnable;
    .param p6, "task"    # Lcom/android/server/wm/Task;

    .line 3439
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3440
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_19

    .line 3441
    if-eqz p3, :cond_11

    .line 3442
    const-string v1, ""

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3444
    :cond_11
    if-eqz p5, :cond_16

    .line 3445
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 3447
    :cond_16
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3449
    :cond_19
    const-string v0, "    "

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "* "

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4, p6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3450
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  mBounds="

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3451
    invoke-virtual {p6}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3452
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  mMinWidth="

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p6, Lcom/android/server/wm/Task;->mMinWidth:I

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3453
    const-string v1, " mMinHeight="

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p6, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3454
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_5d

    .line 3455
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3456
    const-string v0, "  mLastNonFullscreenBounds="

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3457
    iget-object v0, p6, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3459
    :cond_5d
    const-string v0, "      "

    invoke-virtual {p6, p4, v0}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3460
    return-void
.end method

.method public synthetic lambda$dumpActivities$13$ActivityStack(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Ljava/lang/String;Ljava/io/FileDescriptor;ZZLcom/android/server/wm/Task;)V
    .registers 33
    .param p1, "printed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p2, "printedHeader"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p3, "needSep"    # Z
    .param p4, "pw"    # Ljava/io/PrintWriter;
    .param p5, "header"    # Ljava/lang/Runnable;
    .param p6, "dumpPackage"    # Ljava/lang/String;
    .param p7, "fd"    # Ljava/io/FileDescriptor;
    .param p8, "dumpAll"    # Z
    .param p9, "dumpClient"    # Z
    .param p10, "task"    # Lcom/android/server/wm/Task;

    .line 3437
    const-string v0, "    "

    .line 3438
    .local v0, "prefix":Ljava/lang/String;
    new-instance v9, Lcom/android/server/wm/-$$Lambda$ActivityStack$mznSw1QiZcRlo5VuagZRPi0cm84;

    .local v9, "headerPrinter":Ljava/lang/Runnable;
    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p10

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/-$$Lambda$ActivityStack$mznSw1QiZcRlo5VuagZRPi0cm84;-><init>(Lcom/android/server/wm/ActivityStack;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Lcom/android/server/wm/Task;)V

    .line 3461
    if-nez p6, :cond_1c

    .line 3464
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 3465
    const/4 v9, 0x0

    .line 3467
    :cond_1c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3470
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$hD1GQddqK6sJaBtwVBGHwmleilc;

    invoke-direct {v2, v1}, Lcom/android/server/wm/-$$Lambda$hD1GQddqK6sJaBtwVBGHwmleilc;-><init>(Ljava/util/ArrayList;)V

    const/4 v3, 0x0

    move-object/from16 v4, p10

    invoke-virtual {v4, v2, v3}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;Z)V

    .line 3472
    const/4 v15, 0x1

    xor-int/lit8 v16, p8, 0x1

    const/16 v19, 0x0

    const-string v13, "    "

    const-string v14, "Hist"

    move-object/from16 v10, p7

    move-object/from16 v11, p4

    move-object v12, v1

    move/from16 v17, p9

    move-object/from16 v18, p6

    move-object/from16 v20, v9

    move-object/from16 v21, p10

    invoke-static/range {v10 .. v21}, Lcom/android/server/wm/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z

    .line 3474
    return-void
.end method

.method public synthetic lambda$resumeTopActivityInnerLocked$5$ActivityStack(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "next"    # Lcom/android/server/wm/ActivityRecord;

    .line 2460
    if-eqz p1, :cond_b

    .line 2461
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationFocusGain(Landroid/content/Context;Ljava/lang/String;)V

    .line 2463
    :cond_b
    return-void
.end method

.method public synthetic lambda$setWindowingMode$0$ActivityStack(IZZ)V
    .registers 4
    .param p1, "preferredWindowingMode"    # I
    .param p2, "creating"    # Z
    .param p3, "deferEnsuringVisibility"    # Z

    .line 756
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityStack;->setWindowingModeInSurfaceTransaction(IZZ)V

    return-void
.end method

.method public synthetic lambda$switchUser$1$ActivityStack(Ljava/util/ArrayList;)V
    .registers 7
    .param p1, "activities"    # Ljava/util/ArrayList;

    .line 1198
    const/4 v0, 0x0

    .line 1199
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    .line 1200
    .local v1, "isfocusGain":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1201
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_10
    if-ltz v3, :cond_28

    .line 1202
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    move-object v0, v4

    .line 1203
    iget-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v4, :cond_25

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1206
    const/4 v1, 0x1

    .line 1207
    goto :goto_28

    .line 1201
    :cond_25
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    .line 1210
    .end local v3    # "j":I
    :cond_28
    :goto_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1211
    if-eqz v1, :cond_37

    .line 1212
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationFocusGain(Landroid/content/Context;Ljava/lang/String;)V

    .line 1213
    :cond_37
    return-void

    .line 1210
    :catchall_38
    move-exception v3

    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public synthetic lambda$switchUser$2$ActivityStack(Lcom/android/server/wm/Task;)V
    .registers 5
    .param p1, "t"    # Lcom/android/server/wm/Task;

    .line 1190
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->showToCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_2c

    if-eq p1, p0, :cond_2c

    .line 1191
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 1192
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    .line 1194
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MNO_TMO_DEVICE_REPORTING:Z

    if-eqz v0, :cond_2c

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1195
    iget-object v0, p1, Lcom/android/server/wm/Task;->mExitingActivities:Ljava/util/ArrayList;

    .line 1196
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    sget-object v1, Lcom/android/server/am/AppStateBroadcaster;->mObjHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2c

    .line 1197
    sget-object v1, Lcom/android/server/am/AppStateBroadcaster;->mObjHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$ActivityStack$ShpKL8sgMBCM_CkQeiESu8gNeck;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/-$$Lambda$ActivityStack$ShpKL8sgMBCM_CkQeiESu8gNeck;-><init>(Lcom/android/server/wm/ActivityStack;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1218
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    :cond_2c
    return-void
.end method

.method minimalResumeActivityLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1222
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Moving to RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (starting new instance) callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    .line 1223
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1222
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_27
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string/jumbo v1, "minimalResumeActivityLocked"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1225
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    .line 1228
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v0, :cond_3d

    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_3d

    .line 1229
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->setLaunchTime(Lcom/android/server/wm/ActivityRecord;)V

    .line 1232
    :cond_3d
    return-void
.end method

.method moveTaskToBack(Lcom/android/server/wm/Task;)Z
    .registers 3
    .param p1, "tr"    # Lcom/android/server/wm/Task;

    .line 3126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "tr"    # Lcom/android/server/wm/Task;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 3133
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/ActivityStack;->moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;ZZ)Z

    move-result v0

    return v0
.end method

.method final moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;ZZ)Z
    .registers 14
    .param p1, "tr"    # Lcom/android/server/wm/Task;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "minimize"    # Z
    .param p4, "animate"    # Z

    .line 3138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "moveTaskToBack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LockTaskController;->canMoveTaskToBack(Lcom/android/server/wm/Task;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_25

    .line 3143
    return v2

    .line 3149
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isTopStackInDisplayArea()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_5d

    .line 3150
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3151
    .local v0, "next":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_3f

    .line 3152
    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/ActivityStack;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3154
    :cond_3f
    if-eqz v0, :cond_5d

    .line 3156
    const/4 v4, 0x1

    .line 3158
    .local v4, "moveOK":Z
    :try_start_42
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v5
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_4c} :catch_4e

    move v4, v5

    .line 3162
    goto :goto_5a

    .line 3159
    :catch_4e
    move-exception v5

    .line 3160
    .local v5, "e":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v3, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 3161
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 3163
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_5a
    if-nez v4, :cond_5d

    .line 3164
    return v2

    .line 3169
    .end local v0    # "next":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "moveOK":Z
    :cond_5d
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v0, :cond_77

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prepare to back transition: task="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    :cond_77
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_7e

    .line 3175
    return v2

    .line 3177
    :cond_7e
    nop

    .line 3178
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRemoteAppController:Lcom/android/server/wm/RemoteAppController;

    iget v4, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 3179
    invoke-virtual {v0, v4}, Lcom/android/server/wm/RemoteAppController;->interceptMoveTaskToBackLocked(I)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 3180
    return v1

    .line 3183
    :cond_97
    const/4 v0, 0x0

    .line 3184
    .local v0, "wasFocusedStackOnDisplay":Z
    nop

    .line 3185
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 3184
    invoke-static {v4, v5}, Lcom/android/server/wm/FreeformController;->useAlwaysOnTopFreeform(ILcom/android/server/wm/DisplayContent;)Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 3186
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->setBoostStackLayerForAppTransition(Z)V

    .line 3187
    invoke-super {p0, v2}, Lcom/android/server/wm/Task;->setAlwaysOnTop(Z)V

    .line 3188
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v0

    .line 3191
    :cond_b1
    if-eqz p3, :cond_bf

    if-nez p4, :cond_bf

    .line 3192
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, v2, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    goto :goto_e3

    .line 3193
    :cond_bf
    nop

    .line 3194
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_d8

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->isClosingSplitApp(Lcom/android/server/wm/Task;)Z

    move-result v4

    if-eqz v4, :cond_d8

    .line 3196
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz v4, :cond_e3

    .line 3197
    const-string v4, "1005"

    const-string v5, "Tap \'Back\' button"

    invoke-static {v4, v5}, Lcom/samsung/android/core/CoreSALogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e3

    .line 3202
    :cond_d8
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v5, 0xb

    invoke-virtual {v4, v5, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 3205
    :cond_e3
    :goto_e3
    const-string/jumbo v4, "moveTaskToBackLocked"

    invoke-virtual {p0, v4, p1}, Lcom/android/server/wm/ActivityStack;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 3208
    if-eqz p2, :cond_109

    .line 3210
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v5

    if-lez v5, :cond_109

    .line 3211
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 3212
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_109

    .line 3213
    invoke-static {p2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 3214
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->applyOptionsLocked()V

    .line 3217
    .end local v5    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_109
    if-eqz p3, :cond_10e

    .line 3218
    invoke-virtual {p0, p4}, Lcom/android/server/wm/ActivityStack;->setMinimized(Z)V

    .line 3222
    :cond_10e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_11a

    .line 3223
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V

    .line 3224
    return v1

    .line 3227
    :cond_11a
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 3229
    .local v5, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-nez v5, :cond_126

    move-object v6, v3

    goto :goto_12a

    :cond_126
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 3230
    .local v6, "topStack":Lcom/android/server/wm/ActivityStack;
    :goto_12a
    if-eqz v6, :cond_15b

    if-eq v6, p0, :cond_15b

    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v5, v7}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v7

    if-eqz v7, :cond_15b

    .line 3232
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v7

    if-eqz v7, :cond_13f

    .line 3234
    invoke-virtual {p0, v2, v2, v5}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;)Z

    .line 3240
    :cond_13f
    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 3241
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    iget v8, v8, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 3240
    invoke-virtual {v7, v3, v8, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 3244
    if-eqz v0, :cond_151

    .line 3245
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v5, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 3251
    :cond_151
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    goto :goto_17f

    .line 3254
    :cond_15b
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 3255
    invoke-virtual {v4}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_17a

    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 3256
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v4

    if-eqz v4, :cond_17a

    .line 3260
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v2}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 3263
    :cond_17a
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 3266
    :goto_17f
    return v1
.end method

.method final moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V
    .registers 13
    .param p1, "tr"    # Lcom/android/server/wm/Task;
    .param p2, "noAnimation"    # Z
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "timeTracker"    # Lcom/android/server/am/AppTimeTracker;
    .param p5, "reason"    # Ljava/lang/String;

    .line 2979
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityStack;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V

    .line 2980
    return-void
.end method

.method final moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V
    .registers 25
    .param p1, "tr"    # Lcom/android/server/wm/Task;
    .param p2, "noAnimation"    # Z
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "timeTracker"    # Lcom/android/server/am/AppTimeTracker;
    .param p5, "deferResume"    # Z
    .param p6, "reason"    # Ljava/lang/String;

    .line 2984
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, " prevDisplay="

    const-string v6, " parent="

    const-string/jumbo v7, "moveTaskToFront: display is null abnormally. this="

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    const-string v8, "ActivityTaskManager"

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "moveTaskToFront: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v9

    .line 2992
    .local v9, "topStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v9, :cond_39

    .line 2993
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    goto :goto_3a

    :cond_39
    const/4 v10, 0x0

    .line 2995
    .local v10, "topActivity":Lcom/android/server/wm/ActivityRecord;
    :goto_3a
    const/16 v11, 0x1c

    const/16 v12, 0xa

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eq v2, v1, :cond_5c

    invoke-virtual {v2, v1}, Lcom/android/server/wm/Task;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v15

    if-nez v15, :cond_5c

    .line 2997
    if-eqz p2, :cond_4e

    .line 2998
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_5b

    .line 2999
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isSingleTaskInstance()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 3006
    invoke-direct {v1, v11, v3, v13}, Lcom/android/server/wm/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;Z)V

    goto :goto_5b

    .line 3009
    :cond_58
    invoke-direct {v1, v12, v3, v14}, Lcom/android/server/wm/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;Z)V

    .line 3011
    :goto_5b
    return-void

    .line 3014
    :cond_5c
    if-eqz v4, :cond_70

    .line 3016
    sget-object v15, Lcom/android/server/wm/-$$Lambda$Q7nS26dC0McEbKsdlJZMFVXDNKY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Q7nS26dC0McEbKsdlJZMFVXDNKY;

    const-class v16, Lcom/android/server/wm/ActivityRecord;

    .line 3017
    invoke-static/range {v16 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v0

    .line 3016
    invoke-static {v15, v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 3018
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {v2, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3019
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 3023
    .end local v0    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_70
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    .line 3027
    .local v15, "prevDisplay":Lcom/android/server/wm/DisplayContent;
    nop

    .line 3028
    :try_start_75
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    .line 3027
    invoke-static {v0, v12}, Lcom/android/server/wm/FreeformController;->useAlwaysOnTopFreeform(ILcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 3029
    invoke-super {v1, v13}, Lcom/android/server/wm/Task;->setAlwaysOnTop(Z)V

    .line 3036
    :cond_86
    if-nez p2, :cond_8a

    move v0, v13

    goto :goto_8b

    :cond_8a
    move v0, v14

    :goto_8b
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStack;->setUnminimizedWhenRestored(Z)V

    .line 3043
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->deferUpdateImeTarget()V

    .line 3047
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityStack;->positionChildAtTop(Lcom/android/server/wm/Task;)V

    .line 3050
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3051
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_154

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v12

    if-nez v12, :cond_a8

    move-object/from16 v11, p6

    goto/16 :goto_156

    .line 3060
    :cond_a8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12
    :try_end_ac
    .catchall {:try_start_75 .. :try_end_ac} :catchall_19c

    .line 3061
    .local v12, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v12, :cond_b4

    .line 3062
    move-object/from16 v11, p6

    :try_start_b0
    invoke-virtual {v12, v11}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    goto :goto_b6

    .line 3061
    :cond_b4
    move-object/from16 v11, p6

    .line 3071
    :goto_b6
    sget-boolean v17, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v17, :cond_ce

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Prepare to front transition: task="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    :cond_ce
    if-eqz p2, :cond_e7

    .line 3073
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v14}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 3074
    if-eqz v12, :cond_e3

    .line 3075
    iget-object v13, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3077
    :cond_e3
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_fa

    .line 3078
    :cond_e7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isSingleTaskInstance()Z

    move-result v13

    if-eqz v13, :cond_f4

    .line 3079
    const/16 v13, 0x1c

    const/4 v14, 0x1

    invoke-direct {v1, v13, v3, v14}, Lcom/android/server/wm/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;Z)V

    goto :goto_fa

    .line 3082
    :cond_f4
    const/16 v13, 0xa

    const/4 v14, 0x0

    invoke-direct {v1, v13, v3, v14}, Lcom/android/server/wm/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;Z)V

    .line 3091
    :goto_fa
    const/4 v13, 0x0

    invoke-direct {v1, v10, v2, v13, v3}, Lcom/android/server/wm/ActivityStack;->canEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v13

    if-eqz v13, :cond_104

    .line 3093
    const/4 v13, 0x1

    iput-boolean v13, v10, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 3096
    :cond_104
    if-nez p5, :cond_10b

    .line 3097
    iget-object v13, v1, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v13}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 3099
    :cond_10b
    iget v13, v2, Lcom/android/server/wm/Task;->mUserId:I

    iget v14, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v13, v14}, Lcom/android/server/wm/EventLogTags;->writeWmTaskToFront(II)V

    .line 3100
    iget-object v13, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v13

    .line 3101
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToFront(Landroid/app/TaskInfo;)V
    :try_end_11f
    .catchall {:try_start_b0 .. :try_end_11f} :catchall_19a

    .line 3104
    .end local v0    # "top":Lcom/android/server/wm/ActivityRecord;
    .end local v12    # "r":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEBUG_LOG:Z

    if-eqz v0, :cond_14b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_14b

    .line 3105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3106
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3105
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    :cond_14b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    .line 3110
    nop

    .line 3111
    return-void

    .line 3051
    .restart local v0    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_154
    move-object/from16 v11, p6

    .line 3052
    :goto_156
    if-eqz v0, :cond_163

    .line 3053
    :try_start_158
    iget-object v12, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v12, v12, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 3055
    :cond_163
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V
    :try_end_166
    .catchall {:try_start_158 .. :try_end_166} :catchall_19a

    .line 3104
    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->MD_DEBUG_LOG:Z

    if-eqz v12, :cond_192

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    if-nez v12, :cond_192

    .line 3105
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3106
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3105
    invoke-static {v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    :cond_192
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    .line 3056
    return-void

    .line 3104
    .end local v0    # "top":Lcom/android/server/wm/ActivityRecord;
    :catchall_19a
    move-exception v0

    goto :goto_19f

    :catchall_19c
    move-exception v0

    move-object/from16 v11, p6

    :goto_19f
    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->MD_DEBUG_LOG:Z

    if-eqz v12, :cond_1cb

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    if-nez v12, :cond_1cb

    .line 3105
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3106
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3105
    invoke-static {v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    :cond_1cb
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    .line 3110
    throw v0
.end method

.method moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 1136
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1137
    return-void

    .line 1139
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 1140
    .local v0, "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStack;->mCreatedByOrganizer:Z

    if-nez v1, :cond_2f

    .line 1143
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 1144
    .local v1, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    .line 1145
    .local v2, "parentTask":Lcom/android/server/wm/Task;
    :goto_1b
    if-eqz v2, :cond_24

    .line 1146
    move-object v3, v2

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, p1, p0}, Lcom/android/server/wm/ActivityStack;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    goto :goto_27

    .line 1148
    :cond_24
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtBottom(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    .line 1150
    :goto_27
    if-eqz p2, :cond_2e

    if-eq p2, p0, :cond_2e

    .line 1151
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityStack;->positionChildAtBottom(Lcom/android/server/wm/Task;)V

    .line 1168
    :cond_2e
    return-void

    .line 1170
    .end local v1    # "parent":Lcom/android/server/wm/WindowContainer;
    .end local v2    # "parentTask":Lcom/android/server/wm/Task;
    :cond_2f
    if-eqz p2, :cond_3b

    if-ne p2, p0, :cond_34

    goto :goto_3b

    .line 1177
    :cond_34
    move-object v1, p2

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionTaskBehindHome(Lcom/android/server/wm/ActivityStack;)V

    .line 1178
    return-void

    .line 1171
    :cond_3b
    :goto_3b
    return-void
.end method

.method moveToFront(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 1006
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 1007
    return-void
.end method

.method moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .registers 9
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 1049
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DISABLE_SPEG:Z

    if-nez v0, :cond_7

    .line 1050
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->spegDisplayChecker()V

    .line 1053
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1054
    return-void

    .line 1058
    :cond_e
    nop

    .line 1059
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/FreeformController;->useAlwaysOnTopFreeform(ILcom/android/server/wm/DisplayContent;)Z

    move-result v0

    .line 1060
    .local v0, "alwaysOnTop":Z
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v1

    if-eq v0, v1, :cond_24

    .line 1061
    invoke-super {p0, v0}, Lcom/android/server/wm/Task;->setAlwaysOnTop(Z)V

    .line 1071
    .end local v0    # "alwaysOnTop":Z
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 1073
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5b

    .line 1079
    nop

    .line 1080
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1081
    .local v1, "topFullScreenStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_5b

    .line 1082
    nop

    .line 1083
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenPrimaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1084
    .local v3, "primarySplitScreenStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_5b

    .line 1085
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v4

    .line 1086
    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskDisplayArea;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v5

    if-le v4, v5, :cond_5b

    .line 1087
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " splitScreenToTop"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1092
    .end local v1    # "topFullScreenStack":Lcom/android/server/wm/ActivityStack;
    .end local v3    # "primarySplitScreenStack":Lcom/android/server/wm/ActivityStack;
    :cond_5b
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_7b

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->returnsToHomeStack()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 1095
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " returnToHome"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 1104
    :cond_7b
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_86

    .line 1105
    invoke-virtual {v0, p0, v3, p1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;ZLjava/lang/String;)V

    goto :goto_97

    .line 1107
    :cond_86
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    if-eq v1, v4, :cond_97

    .line 1108
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;ZLjava/lang/String;)V

    .line 1111
    :cond_97
    :goto_97
    if-nez p2, :cond_9a

    .line 1112
    move-object p2, p0

    .line 1116
    :cond_9a
    invoke-virtual {p2, v2}, Lcom/android/server/wm/Task;->setUnminimizedWhenRestored(Z)V

    .line 1119
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    const v3, 0x7fffffff

    invoke-virtual {v1, v3, p2, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1123
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToFront(Landroid/app/TaskInfo;)V

    .line 1126
    return-void
.end method

.method moveToFrontAndResumeStateIfNeeded(Lcom/android/server/wm/ActivityRecord;ZZZLjava/lang/String;)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "moveToFront"    # Z
    .param p3, "setResume"    # Z
    .param p4, "setPause"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 3666
    if-nez p2, :cond_3

    .line 3667
    return-void

    .line 3670
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v0

    .line 3674
    .local v0, "origState":Lcom/android/server/wm/ActivityStack$ActivityState;
    if-eqz p3, :cond_11

    .line 3675
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string/jumbo v2, "moveToFrontAndResumeStateIfNeeded"

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3678
    :cond_11
    if-eqz p4, :cond_31

    .line 3680
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandard()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 3681
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3682
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_2c

    iget-object v2, v1, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_2c

    iget v2, v1, Lcom/android/server/wm/Task;->mTaskId:I

    iget v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskId:I

    if-eq v2, v3, :cond_2c

    .line 3683
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3687
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :cond_2c
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3688
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->schedulePauseTimeout()V

    .line 3691
    :cond_31
    invoke-virtual {p0, p5}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 3694
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_45

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-ne p1, v1, :cond_45

    .line 3695
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p1, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 3697
    :cond_45
    return-void
.end method

.method navigateUpTo(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)Z
    .registers 33
    .param p1, "srec"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "destIntent"    # Landroid/content/Intent;
    .param p3, "destGrants"    # Lcom/android/server/uri/NeededUriGrants;
    .param p4, "resultCode"    # I
    .param p5, "resultData"    # Landroid/content/Intent;
    .param p6, "resultGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 2854
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_e

    .line 2857
    return v4

    .line 2859
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 2860
    .local v5, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 2861
    return v4

    .line 2864
    :cond_19
    invoke-virtual {v5, v2}, Lcom/android/server/wm/Task;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2865
    .local v0, "parent":Lcom/android/server/wm/ActivityRecord;
    const/4 v6, 0x0

    .line 2866
    .local v6, "foundParentInTask":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 2867
    .local v7, "dest":Landroid/content/ComponentName;
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    const/4 v9, 0x1

    if-eq v8, v2, :cond_3b

    if-eqz v7, :cond_3b

    .line 2868
    new-instance v8, Lcom/android/server/wm/-$$Lambda$ActivityStack$n6lnB087ZFxNYV3rhtRTHATdcS8;

    invoke-direct {v8, v7}, Lcom/android/server/wm/-$$Lambda$ActivityStack$n6lnB087ZFxNYV3rhtRTHATdcS8;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {v5, v8, v2, v4, v9}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 2872
    .local v8, "candidate":Lcom/android/server/wm/ActivityRecord;
    if-eqz v8, :cond_3b

    .line 2873
    move-object v0, v8

    .line 2874
    const/4 v6, 0x1

    move v8, v6

    move-object v6, v0

    goto :goto_3d

    .line 2880
    .end local v8    # "candidate":Lcom/android/server/wm/ActivityRecord;
    :cond_3b
    move v8, v6

    move-object v6, v0

    .end local v0    # "parent":Lcom/android/server/wm/ActivityRecord;
    .local v6, "parent":Lcom/android/server/wm/ActivityRecord;
    .local v8, "foundParentInTask":Z
    :goto_3d
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 2881
    .local v15, "controller":Landroid/app/IActivityController;
    const/4 v10, -0x1

    if-eqz v15, :cond_65

    .line 2882
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v1, v0, v10}, Lcom/android/server/wm/ActivityStack;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    .line 2883
    .local v11, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v11, :cond_65

    .line 2885
    const/4 v12, 0x1

    .line 2887
    .local v12, "resumeOK":Z
    :try_start_4d
    iget-object v0, v11, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v15, v0}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v0
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_53} :catch_55

    move v12, v0

    .line 2891
    goto :goto_62

    .line 2888
    :catch_55
    move-exception v0

    .line 2889
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v13, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 2890
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v13

    invoke-virtual {v13, v14}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 2893
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_62
    if-nez v12, :cond_65

    .line 2894
    return v4

    .line 2898
    .end local v11    # "next":Lcom/android/server/wm/ActivityRecord;
    .end local v12    # "resumeOK":Z
    :cond_65
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2900
    .local v16, "origId":J
    new-array v14, v9, [I

    .line 2901
    .local v14, "resultCodeHolder":[I
    aput p4, v14, v4

    .line 2902
    new-array v13, v9, [Landroid/content/Intent;

    .line 2903
    .local v13, "resultDataHolder":[Landroid/content/Intent;
    aput-object p5, v13, v4

    .line 2904
    new-array v12, v9, [Lcom/android/server/uri/NeededUriGrants;

    .line 2905
    .local v12, "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    aput-object p6, v12, v4

    .line 2906
    move-object v11, v6

    .line 2907
    .local v11, "finalParent":Lcom/android/server/wm/ActivityRecord;
    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$qxokA34gFnmG0y9ltDQ2QXAQoA0;

    invoke-direct {v0, v11, v14, v13, v12}, Lcom/android/server/wm/-$$Lambda$ActivityStack$qxokA34gFnmG0y9ltDQ2QXAQoA0;-><init>(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;)V

    invoke-virtual {v5, v0, v2, v9, v9}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;Lcom/android/server/wm/WindowContainer;ZZ)Z

    .line 2917
    aget v18, v14, v4

    .line 2918
    .end local p4    # "resultCode":I
    .local v18, "resultCode":I
    aget-object v19, v13, v4

    .line 2920
    .end local p5    # "resultData":Landroid/content/Intent;
    .local v19, "resultData":Landroid/content/Intent;
    if-eqz v6, :cond_14e

    if-eqz v8, :cond_14e

    .line 2921
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2922
    .local v4, "callingUid":I
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v15

    .end local v15    # "controller":Landroid/app/IActivityController;
    .local v21, "controller":Landroid/app/IActivityController;
    iget v15, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 2923
    .local v15, "parentLaunchMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v22

    .line 2924
    .local v22, "destIntentFlags":I
    const/4 v0, 0x3

    if-eq v15, v0, :cond_139

    const/4 v0, 0x2

    if-eq v15, v0, :cond_139

    if-eq v15, v9, :cond_139

    const/high16 v0, 0x4000000

    and-int v0, v22, v0

    if-eqz v0, :cond_b3

    move-object/from16 v25, v5

    move-object v9, v11

    move-object/from16 v20, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object/from16 v5, v21

    move/from16 v21, v15

    goto/16 :goto_146

    .line 2931
    :cond_b3
    :try_start_b3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 2932
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    iget v10, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_b3 .. :try_end_bd} :catch_116

    .line 2931
    move-object/from16 v25, v5

    const/16 v5, 0x400

    .end local v5    # "task":Lcom/android/server/wm/Task;
    .local v25, "task":Lcom/android/server/wm/Task;
    :try_start_c1
    invoke-interface {v0, v9, v5, v10}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2935
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v5

    const-string/jumbo v9, "navigateUpTo"

    .line 2936
    invoke-virtual {v5, v3, v9}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 2937
    invoke-virtual {v9}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 2938
    invoke-virtual {v5, v0}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    .line 2939
    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 2940
    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 2941
    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 2942
    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    .line 2943
    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 2944
    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 2945
    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 2946
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 2947
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v5
    :try_end_10d
    .catch Landroid/os/RemoteException; {:try_start_c1 .. :try_end_10d} :catch_114

    .line 2948
    .local v5, "res":I
    if-nez v5, :cond_110

    goto :goto_111

    :cond_110
    const/4 v9, 0x0

    :goto_111
    move v0, v9

    .line 2951
    .end local v5    # "res":I
    .end local v8    # "foundParentInTask":Z
    .local v0, "foundParentInTask":Z
    move v8, v0

    goto :goto_11b

    .line 2949
    .end local v0    # "foundParentInTask":Z
    .restart local v8    # "foundParentInTask":Z
    :catch_114
    move-exception v0

    goto :goto_119

    .end local v25    # "task":Lcom/android/server/wm/Task;
    .local v5, "task":Lcom/android/server/wm/Task;
    :catch_116
    move-exception v0

    move-object/from16 v25, v5

    .line 2950
    .end local v5    # "task":Lcom/android/server/wm/Task;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v25    # "task":Lcom/android/server/wm/Task;
    :goto_119
    const/4 v5, 0x0

    move v8, v5

    .line 2952
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11b
    const/4 v0, 0x1

    const-string/jumbo v5, "navigate-top"

    move-object v10, v6

    move-object v9, v11

    .end local v11    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .local v9, "finalParent":Lcom/android/server/wm/ActivityRecord;
    move/from16 v11, v18

    move-object/from16 v20, v12

    .end local v12    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .local v20, "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    move-object/from16 v12, v19

    move-object/from16 v23, v13

    .end local v13    # "resultDataHolder":[Landroid/content/Intent;
    .local v23, "resultDataHolder":[Landroid/content/Intent;
    move-object/from16 v13, p6

    move-object/from16 v24, v14

    .end local v14    # "resultCodeHolder":[I
    .local v24, "resultCodeHolder":[I
    move-object v14, v5

    move-object/from16 v5, v21

    move/from16 v21, v15

    .end local v15    # "parentLaunchMode":I
    .local v5, "controller":Landroid/app/IActivityController;
    .local v21, "parentLaunchMode":I
    move v15, v0

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    move-object/from16 v10, p3

    goto :goto_15a

    .line 2924
    .end local v9    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .end local v20    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .end local v23    # "resultDataHolder":[Landroid/content/Intent;
    .end local v24    # "resultCodeHolder":[I
    .end local v25    # "task":Lcom/android/server/wm/Task;
    .local v5, "task":Lcom/android/server/wm/Task;
    .restart local v11    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .restart local v12    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .restart local v13    # "resultDataHolder":[Landroid/content/Intent;
    .restart local v14    # "resultCodeHolder":[I
    .restart local v15    # "parentLaunchMode":I
    .local v21, "controller":Landroid/app/IActivityController;
    :cond_139
    move-object/from16 v25, v5

    move-object v9, v11

    move-object/from16 v20, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object/from16 v5, v21

    move/from16 v21, v15

    .line 2928
    .end local v11    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .end local v12    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .end local v13    # "resultDataHolder":[Landroid/content/Intent;
    .end local v14    # "resultCodeHolder":[I
    .end local v15    # "parentLaunchMode":I
    .local v5, "controller":Landroid/app/IActivityController;
    .restart local v9    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .restart local v20    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .local v21, "parentLaunchMode":I
    .restart local v23    # "resultDataHolder":[Landroid/content/Intent;
    .restart local v24    # "resultCodeHolder":[I
    .restart local v25    # "task":Lcom/android/server/wm/Task;
    :goto_146
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v10, p3

    invoke-virtual {v6, v4, v3, v10, v0}, Lcom/android/server/wm/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;)V

    goto :goto_15a

    .line 2920
    .end local v4    # "callingUid":I
    .end local v9    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .end local v20    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .end local v21    # "parentLaunchMode":I
    .end local v22    # "destIntentFlags":I
    .end local v23    # "resultDataHolder":[Landroid/content/Intent;
    .end local v24    # "resultCodeHolder":[I
    .end local v25    # "task":Lcom/android/server/wm/Task;
    .local v5, "task":Lcom/android/server/wm/Task;
    .restart local v11    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .restart local v12    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .restart local v13    # "resultDataHolder":[Landroid/content/Intent;
    .restart local v14    # "resultCodeHolder":[I
    .local v15, "controller":Landroid/app/IActivityController;
    :cond_14e
    move-object/from16 v10, p3

    move-object/from16 v25, v5

    move-object v9, v11

    move-object/from16 v20, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object v5, v15

    .line 2956
    .end local v11    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .end local v12    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .end local v13    # "resultDataHolder":[Landroid/content/Intent;
    .end local v14    # "resultCodeHolder":[I
    .end local v15    # "controller":Landroid/app/IActivityController;
    .local v5, "controller":Landroid/app/IActivityController;
    .restart local v9    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .restart local v20    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .restart local v23    # "resultDataHolder":[Landroid/content/Intent;
    .restart local v24    # "resultCodeHolder":[I
    .restart local v25    # "task":Lcom/android/server/wm/Task;
    :goto_15a
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2957
    return v8
.end method

.method notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1786
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 1787
    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 4149
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/Task;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 4152
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mDimAnimInfo:Lcom/android/server/wm/WindowContainer$DimAnimInfo;

    if-eqz v0, :cond_c

    .line 4154
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mDimAnimInfo:Lcom/android/server/wm/WindowContainer$DimAnimInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->startDimAnimation(Landroid/view/SurfaceControl$Transaction;)V

    .line 4157
    :cond_c
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 4161
    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    .line 4164
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mDimAnimInfo:Lcom/android/server/wm/WindowContainer$DimAnimInfo;

    if-eqz v0, :cond_c

    .line 4166
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mDimAnimInfo:Lcom/android/server/wm/WindowContainer$DimAnimInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->clearDimAnimation(Landroid/view/SurfaceControl$Transaction;)V

    .line 4169
    :cond_c
    return-void
.end method

.method onAppTransitionDone()V
    .registers 2

    .line 4192
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->setBoostStackLayerForAppTransition(Z)V

    .line 4194
    invoke-super {p0}, Lcom/android/server/wm/Task;->onAppTransitionDone()V

    .line 4195
    return-void
.end method

.method onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .registers 7
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 3846
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isOrganized()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_69

    .line 3848
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 3849
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eq v0, p1, :cond_62

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 3850
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 3851
    .local v0, "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3852
    .local v3, "childTask":Lcom/android/server/wm/Task;
    iget-boolean v4, v3, Lcom/android/server/wm/Task;->mTaskSwitchingInSplitMode:Z

    if-eqz v4, :cond_2a

    .line 3853
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->startSplitChangeTransitionIfPossible()V

    goto :goto_62

    .line 3854
    :cond_2a
    if-eqz v0, :cond_62

    iget-boolean v4, v0, Lcom/android/server/wm/TaskDisplayArea;->mSkipSplitScreenChangeTransition:Z

    if-nez v4, :cond_62

    .line 3856
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_62

    .line 3857
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 3858
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->hasChild()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitSecondaryTopTaskHomeOrRecents()Z

    move-result v4

    if-eqz v4, :cond_49

    goto :goto_4b

    :cond_49
    move v4, v2

    goto :goto_5c

    :cond_4b
    :goto_4b
    move v4, v1

    goto :goto_5c

    .line 3859
    :cond_4d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->hasChild()Z

    move-result v4

    if-nez v4, :cond_5b

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitSecondaryTopTaskHomeOrRecents()Z

    move-result v4

    if-nez v4, :cond_5b

    move v4, v1

    goto :goto_5c

    :cond_5b
    move v4, v2

    :goto_5c
    nop

    .line 3860
    .local v4, "willBeDismissed":Z
    if-eqz v4, :cond_62

    .line 3870
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->startSplitChangeTransitionIfPossible()V

    .line 3875
    .end local v0    # "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v3    # "childTask":Lcom/android/server/wm/Task;
    .end local v4    # "willBeDismissed":Z
    :cond_62
    :goto_62
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0, p0, v2}, Lcom/android/server/wm/TaskOrganizerController;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    .line 3878
    :cond_69
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 3879
    return-void

    .line 3882
    :cond_72
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-ne v0, p1, :cond_79

    goto :goto_7a

    :cond_79
    move v1, v2

    :goto_7a
    move v0, v1

    .line 3884
    .local v0, "isTop":Z
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3885
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_84

    .line 3886
    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->updateTaskMovement(Z)V

    .line 3889
    :cond_84
    if-eqz v0, :cond_a7

    .line 3890
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 3892
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v2, :cond_a4

    .line 3893
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onChildPositionChanged: cannot find displayContent, this="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7

    .line 3896
    :cond_a4
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 3899
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_a7
    :goto_a7
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 18
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 657
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v1

    if-nez v1, :cond_c

    .line 658
    invoke-super/range {p0 .. p1}, Lcom/android/server/wm/Task;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 659
    return-void

    .line 662
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    .line 663
    .local v1, "prevWindowingMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v2

    .line 664
    .local v2, "prevIsAlwaysOnTop":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    .line 665
    .local v3, "prevRotation":I
    iget-object v4, v0, Lcom/android/server/wm/ActivityStack;->mTmpRect:Landroid/graphics/Rect;

    .line 668
    .local v4, "newBounds":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityStack;->getBounds(Landroid/graphics/Rect;)V

    .line 670
    invoke-super/range {p0 .. p1}, Lcom/android/server/wm/Task;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 672
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    .line 673
    .local v5, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-nez v5, :cond_2b

    .line 674
    return-void

    .line 677
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v6

    if-eq v1, v6, :cond_34

    .line 678
    invoke-virtual {v5, v0}, Lcom/android/server/wm/TaskDisplayArea;->onStackWindowingModeChanged(Lcom/android/server/wm/ActivityStack;)V

    .line 681
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    .line 682
    .local v6, "display":Lcom/android/server/wm/DisplayContent;
    if-nez v6, :cond_3b

    .line 683
    return-void

    .line 686
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v7

    if-eq v1, v7, :cond_43

    const/4 v7, 0x1

    goto :goto_44

    :cond_43
    const/4 v7, 0x0

    .line 687
    .local v7, "windowingModeChanged":Z
    :goto_44
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideWindowingMode()I

    move-result v10

    .line 689
    .local v10, "overrideWindowingMode":I
    const/4 v11, 0x0

    .line 691
    .local v11, "hasNewOverrideBounds":Z
    const/4 v12, 0x2

    if-eq v10, v12, :cond_73

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->matchParentBounds()Z

    move-result v13

    if-nez v13, :cond_73

    .line 694
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v13

    .line 695
    .local v13, "newRotation":I
    if-eq v3, v13, :cond_5e

    const/4 v14, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v14, 0x0

    .line 696
    .local v14, "rotationChanged":Z
    :goto_5f
    if-eqz v14, :cond_70

    .line 697
    iget-object v15, v6, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v8, p1

    iget-object v9, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 698
    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 697
    invoke-virtual {v15, v9, v3, v13, v4}, Lcom/android/server/wm/DisplayContent;->rotateBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 700
    const/4 v11, 0x1

    goto :goto_75

    .line 696
    :cond_70
    move-object/from16 v8, p1

    goto :goto_75

    .line 691
    .end local v13    # "newRotation":I
    .end local v14    # "rotationChanged":Z
    :cond_73
    move-object/from16 v8, p1

    .line 704
    :goto_75
    if-eqz v7, :cond_7a

    .line 705
    invoke-virtual {v5, v0}, Lcom/android/server/wm/TaskDisplayArea;->onStackWindowingModeChanged(Lcom/android/server/wm/ActivityStack;)V

    .line 707
    :cond_7a
    if-eqz v11, :cond_97

    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v9

    if-eqz v9, :cond_86

    .line 709
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    goto :goto_97

    .line 710
    :cond_86
    if-eq v10, v12, :cond_97

    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v9

    if-nez v9, :cond_97

    .line 715
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v12, 0x1

    invoke-virtual {v0, v9, v12, v12}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;ZZ)V

    .line 718
    :cond_97
    :goto_97
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v9

    if-eq v2, v9, :cond_a1

    .line 722
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;Z)V

    .line 724
    :cond_a1
    return-void
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 3
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 3948
    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 3949
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3950
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->updateSurfaceBounds()V

    .line 3952
    :cond_c
    return-void
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .registers 8
    .param p1, "newParent"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "oldParent"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 3903
    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 3904
    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_c

    :cond_b
    move-object v1, v0

    .line 3905
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    :goto_c
    if-eqz p2, :cond_16

    .line 3906
    move-object v0, p2

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    goto :goto_17

    :cond_16
    nop

    .line 3907
    .local v0, "oldDisplay":Lcom/android/server/wm/DisplayContent;
    :goto_17
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/Task;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 3911
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isRemoving()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 3912
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->postReparent()V

    goto :goto_4b

    .line 3917
    :cond_26
    if-eqz p2, :cond_4b

    .line 3918
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-nez v2, :cond_4b

    if-eqz p1, :cond_4b

    .line 3919
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 3920
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 3921
    .local v2, "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_4b

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v2, v3, :cond_4b

    .line 3922
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 3926
    .end local v2    # "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_4b
    :goto_4b
    return-void
.end method

.method positionChildAt(Lcom/android/server/wm/Task;I)V
    .registers 11
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "position"    # I

    .line 3605
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne v0, p0, :cond_a9

    .line 3610
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->updateOverrideConfigurationForStack(Lcom/android/server/wm/ActivityStack;)V

    .line 3612
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3613
    .local v0, "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    move v1, v3

    .line 3615
    .local v1, "wasResumed":Z
    :goto_1a
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v4

    if-lt p2, v4, :cond_22

    move v4, v2

    goto :goto_23

    :cond_22
    move v4, v3

    .line 3616
    .local v4, "toTop":Z
    :goto_23
    if-nez v4, :cond_31

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    invoke-virtual {v5, p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    if-nez v5, :cond_30

    goto :goto_31

    :cond_30
    move v2, v3

    .line 3618
    .local v2, "includingParents":Z
    :cond_31
    :goto_31
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v5, :cond_54

    .line 3619
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "positionChildAt: positioning task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WindowManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3621
    :cond_54
    invoke-virtual {p0, p2, p1, v2}, Lcom/android/server/wm/ActivityStack;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3622
    invoke-virtual {p1, v4}, Lcom/android/server/wm/Task;->updateTaskMovement(Z)V

    .line 3623
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 3627
    iget-object v5, p1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v5, :cond_70

    .line 3629
    :try_start_65
    iget-object v5, p1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v6, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v7, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v5, v6, v7}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_6e} :catch_6f

    .line 3631
    goto :goto_70

    .line 3630
    :catch_6f
    move-exception v5

    .line 3634
    :cond_70
    :goto_70
    if-eqz v1, :cond_9f

    .line 3635
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_97

    .line 3636
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mResumedActivity was already set when moving mResumedActivity from other stack to this stack mResumedActivity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " other mResumedActivity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityTaskManager"

    invoke-static {v6, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3640
    :cond_97
    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string/jumbo v6, "positionChildAt"

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3645
    :cond_9f
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v3, v3}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 3646
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 3647
    return-void

    .line 3606
    .end local v0    # "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v1    # "wasResumed":Z
    .end local v2    # "includingParents":Z
    .end local v4    # "toTop":Z
    :cond_a9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AS.positionChildAt: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a child of stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " current parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3607
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method positionChildAtBottom(Lcom/android/server/wm/Task;)V
    .registers 5
    .param p1, "child"    # Lcom/android/server/wm/Task;

    .line 3827
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 3828
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 3827
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 3829
    .local v0, "nextFocusableStack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_11

    move v1, v2

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityStack;->positionChildAtBottom(Lcom/android/server/wm/Task;Z)V

    .line 3830
    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->updateTaskMovement(Z)V

    .line 3831
    return-void
.end method

.method positionChildAtBottom(Lcom/android/server/wm/Task;Z)V
    .registers 4
    .param p1, "child"    # Lcom/android/server/wm/Task;
    .param p2, "includingParents"    # Z

    .line 3835
    if-nez p1, :cond_3

    .line 3837
    return-void

    .line 3840
    :cond_3
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/ActivityStack;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3841
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 3842
    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "child"    # Lcom/android/server/wm/Task;

    .line 3805
    if-nez p1, :cond_3

    .line 3807
    return-void

    .line 3810
    :cond_3
    if-ne p1, p0, :cond_c

    .line 3812
    const-string/jumbo v0, "positionChildAtTop"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 3813
    return-void

    .line 3816
    :cond_c
    const v0, 0x7fffffff

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/ActivityStack;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3817
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->updateTaskMovement(Z)V

    .line 3819
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3820
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 3821
    return-void
.end method

.method postReparent()V
    .registers 4

    .line 978
    const-string/jumbo v0, "reparent"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/ActivityStack;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/ActivityStack;

    .line 980
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 983
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 985
    return-void
.end method

.method prepareFreezingTaskBounds()V
    .registers 3

    .line 3722
    sget-object v0, Lcom/android/server/wm/-$$Lambda$x6Ib5GIrsWZg48HsPUVGxKBQJS4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$x6Ib5GIrsWZg48HsPUVGxKBQJS4;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityStack;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 3723
    return-void
.end method

.method removeLaunchTickMessages()V
    .registers 2

    .line 2961
    sget-object v0, Lcom/android/server/wm/-$$Lambda$B16jdo1lKUkQ4B7iWXwPKs2MAdg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$B16jdo1lKUkQ4B7iWXwPKs2MAdg;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2962
    return-void
.end method

.method reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V
    .registers 4
    .param p1, "newParent"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p2, "onTop"    # Z

    .line 3929
    if-eqz p2, :cond_6

    const v0, 0x7fffffff

    goto :goto_8

    :cond_6
    const/high16 v0, -0x80000000

    :goto_8
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 3930
    return-void
.end method

.method resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 7
    .param p1, "taskTop"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 2687
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 2689
    .local v0, "forceReset":Z
    :goto_b
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2692
    .local v1, "task":Lcom/android/server/wm/Task;
    sget-object v2, Lcom/android/server/wm/ActivityStack;->sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/wm/ResetTargetTaskHelper;->process(Lcom/android/server/wm/Task;Z)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 2694
    .local v2, "topOptions":Landroid/app/ActivityOptions;
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2695
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2696
    .local v3, "newTop":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_24

    .line 2697
    move-object p1, v3

    .line 2701
    .end local v3    # "newTop":Lcom/android/server/wm/ActivityRecord;
    :cond_24
    if-eqz v2, :cond_29

    .line 2704
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2707
    :cond_29
    return-object p1
.end method

.method resize(Landroid/graphics/Rect;ZZ)V
    .registers 8
    .param p1, "displayedBounds"    # Landroid/graphics/Rect;
    .param p2, "preserveWindows"    # Z
    .param p3, "deferResume"    # Z

    .line 3279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stack.resize_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3280
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 3284
    :try_start_20
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$QjNtYzBoevRHPhQzwu5fh58MK0E;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$QjNtYzBoevRHPhQzwu5fh58MK0E;

    const-class v3, Lcom/android/server/wm/Task;

    .line 3285
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 3284
    invoke-static {v0, v3, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 3287
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/ActivityStack;->forAllTasks(Ljava/util/function/Consumer;Z)V

    .line 3288
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 3290
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimating:Z

    if-eqz v3, :cond_46

    .line 3293
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->updateSurfaceBounds()V

    .line 3294
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3295
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 3298
    :cond_46
    if-nez p3, :cond_4f

    .line 3299
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/android/server/wm/ActivityStack;->ensureVisibleActivitiesConfiguration(Lcom/android/server/wm/ActivityRecord;Z)V
    :try_end_4f
    .catchall {:try_start_20 .. :try_end_4f} :catchall_59

    .line 3302
    .end local v0    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_4f
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 3303
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3304
    nop

    .line 3305
    return-void

    .line 3302
    :catchall_59
    move-exception v0

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 3303
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3304
    throw v0
.end method

.method restartPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3503
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3507
    .local v0, "starting":Lcom/android/server/wm/ActivityRecord;
    sget-object v1, Lcom/android/server/wm/-$$Lambda$ActivityStack$xHrv17CG5tAkxdutHyfCFt4-Iec;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$xHrv17CG5tAkxdutHyfCFt4-Iec;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 3508
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 3507
    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v1

    .line 3509
    .local v1, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3510
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 3512
    return-object v0
.end method

.method resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 14
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 1855
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1857
    return v1

    .line 1860
    :cond_6
    const/4 v0, 0x0

    .line 1863
    .local v0, "result":Z
    const/4 v2, 0x1

    :try_start_8
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    .line 1867
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isPrepareOccluding()Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1868
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->setOccluding(Z)V

    .line 1873
    :cond_1f
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v3

    move v0, v3

    .line 1882
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityStack;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1883
    .local v3, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_30

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v4

    if-nez v4, :cond_33

    .line 1884
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->checkReadyForSleep()V

    .line 1888
    :cond_33
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING_FOR_HALF_OPEN_MODE:Z

    if-eqz v4, :cond_c3

    .line 1889
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->shouldBeLoggingHalfOpenMode()I

    move-result v4

    .line 1890
    .local v4, "foldState":I
    const/4 v5, 0x2

    if-eq v4, v2, :cond_4a

    if-ne v4, v5, :cond_45

    goto :goto_4a

    .line 1930
    :cond_45
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/ActivityStack;->mPrevPairPackageNames:Ljava/lang/String;

    goto/16 :goto_c3

    .line 1891
    :cond_4a
    :goto_4a
    iget-object v6, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    .line 1892
    invoke-virtual {v6}, Lcom/android/server/wm/AppPairController;->getTopPairPackageNamesLocked()Ljava/lang/String;

    move-result-object v6

    .line 1893
    .local v6, "topPairPackageNames":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6f

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mPrevPairPackageNames:Ljava/lang/String;

    .line 1894
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6f

    .line 1895
    if-ne v4, v5, :cond_68

    .line 1896
    const-string v7, "W012"

    invoke-static {v7, v6}, Lcom/samsung/android/core/CoreSALogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f

    .line 1899
    :cond_68
    if-ne v4, v2, :cond_6f

    .line 1900
    const-string v7, "W013"

    invoke-static {v7, v6}, Lcom/samsung/android/core/CoreSALogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    :cond_6f
    :goto_6f
    iput-object v6, p0, Lcom/android/server/wm/ActivityStack;->mPrevPairPackageNames:Ljava/lang/String;

    .line 1907
    if-eqz v3, :cond_c3

    .line 1908
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    .line 1909
    .local v7, "currentTask":Lcom/android/server/wm/Task;
    if-eqz v7, :cond_c3

    iget-object v8, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget v8, v8, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCurrentTaskRecordId:I

    iget v9, v7, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v8, v9, :cond_c3

    .line 1911
    iget-object v8, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget v9, v7, Lcom/android/server/wm/Task;->mTaskId:I

    iput v9, v8, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCurrentTaskRecordId:I

    .line 1912
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v8, :cond_b0

    .line 1913
    const-string v8, "ActivityTaskManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "resumeTopActivityUncheckedLocked: insertLogForFoldable="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " foldState="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    :cond_b0
    if-ne v4, v5, :cond_ba

    .line 1918
    const-string v2, "W010"

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/samsung/android/core/CoreSALogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c3

    .line 1921
    :cond_ba
    if-ne v4, v2, :cond_c3

    .line 1922
    const-string v2, "W011"

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/samsung/android/core/CoreSALogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c3
    .catchall {:try_start_8 .. :try_end_c3} :catchall_d4

    .line 1937
    .end local v3    # "next":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "foldState":I
    .end local v6    # "topPairPackageNames":Ljava/lang/String;
    .end local v7    # "currentTask":Lcom/android/server/wm/Task;
    :cond_c3
    :goto_c3
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isPrepareOccluding()Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 1938
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->setPrepareOccluding(Z)V

    .line 1942
    :cond_d0
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    .line 1943
    nop

    .line 1952
    return v0

    .line 1936
    :catchall_d4
    move-exception v2

    .line 1937
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isPrepareOccluding()Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 1938
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->setPrepareOccluding(Z)V

    .line 1942
    :cond_e2
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    .line 1943
    throw v2
.end method

.method reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;
    .registers 22
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "toTop"    # Z
    .param p6, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p7, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p8, "options"    # Landroid/app/ActivityOptions;

    .line 3536
    move-object v9, p0

    move-object v10, p1

    move-object/from16 v11, p6

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayContent;->alwaysCreateStack(II)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3539
    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object v3, p2

    move-object v4, p1

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStack;->reuseAsLeafTask(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Task;

    move-result-object v0

    move/from16 v6, p5

    move-object v7, v0

    .local v0, "task":Lcom/android/server/wm/Task;
    goto :goto_5d

    .line 3542
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_23
    if-eqz v11, :cond_2f

    .line 3543
    iget-object v0, v9, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v1, v11, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getNextTaskIdForUser(I)I

    move-result v0

    move v2, v0

    goto :goto_36

    .line 3544
    :cond_2f
    iget-object v0, v9, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getNextTaskIdForUser()I

    move-result v0

    move v2, v0

    :goto_36
    nop

    .line 3545
    .local v2, "taskId":I
    new-instance v12, Lcom/android/server/wm/ActivityStack;

    iget-object v1, v9, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v7, 0x0

    move-object v0, v12

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/ActivityStack;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/app/ActivityManager$TaskDescription;Lcom/android/server/wm/ActivityStack;)V

    .line 3550
    .restart local v0    # "task":Lcom/android/server/wm/Task;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setFirstAddChild(Z)V

    .line 3554
    iget v3, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x400

    const/4 v4, 0x0

    if-eqz v3, :cond_53

    goto :goto_54

    :cond_53
    move v1, v4

    :goto_54
    move/from16 v6, p5

    invoke-virtual {p0, v0, v6, v1}, Lcom/android/server/wm/ActivityStack;->addChild(Lcom/android/server/wm/WindowContainer;ZZ)V

    .line 3557
    invoke-virtual {v0, v4}, Lcom/android/server/wm/Task;->setFirstAddChild(Z)V

    move-object v7, v0

    .line 3570
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "taskId":I
    .local v7, "task":Lcom/android/server/wm/Task;
    :goto_5d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v0

    .line 3571
    .local v0, "displayId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_65

    const/4 v0, 0x0

    :cond_65
    move v8, v0

    .line 3572
    .end local v0    # "displayId":I
    .local v8, "displayId":I
    iget-object v0, v9, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    .line 3573
    invoke-virtual {v0, v8}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v12

    .line 3574
    .local v12, "isLockscreenShown":Z
    iget-object v0, v9, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v0

    iget-object v2, v10, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 3575
    move-object v1, v7

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    if-nez v0, :cond_9c

    .line 3576
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->matchParentBounds()Z

    move-result v0

    if-nez v0, :cond_9c

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_9c

    if-nez v12, :cond_9c

    .line 3577
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 3580
    :cond_9c
    return-object v7
.end method

.method reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/Task;
    .registers 13
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "toTop"    # Z

    .line 3526
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityStack;->reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method public setAlwaysOnTop(Z)V
    .registers 4
    .param p1, "alwaysOnTop"    # Z

    .line 3650
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v0

    if-ne v0, p1, :cond_7

    .line 3651
    return-void

    .line 3653
    :cond_7
    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->setAlwaysOnTop(Z)V

    .line 3654
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 3660
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;Z)V

    .line 3661
    return-void
.end method

.method setBoostStackLayerForAppTransition(Z)V
    .registers 3
    .param p1, "boostStakLayer"    # Z

    .line 4184
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mBoostStackLayerForAppTransition:Z

    if-eq v0, p1, :cond_6

    .line 4185
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityStack;->mBoostStackLayerForAppTransition:Z

    .line 4187
    :cond_6
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 3729
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3730
    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    return v0

    .line 3732
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/ActivityStack;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method setPictureInPictureActions(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 4021
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-nez v0, :cond_9

    .line 4022
    return-void

    .line 4025
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_10

    .line 4026
    return-void

    .line 4029
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PinnedStackController;->setActions(Ljava/util/List;)V

    .line 4030
    return-void
.end method

.method setPictureInPictureAspectRatio(F)V
    .registers 5
    .param p1, "aspectRatio"    # F

    .line 3989
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-nez v0, :cond_9

    .line 3990
    return-void

    .line 3993
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3994
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_10

    .line 3995
    return-void

    .line 3998
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_17

    .line 3999
    return-void

    .line 4002
    :cond_17
    nop

    .line 4003
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    .line 4005
    .local v1, "pinnedStackController":Lcom/android/server/wm/PinnedStackController;
    invoke-virtual {v1}, Lcom/android/server/wm/PinnedStackController;->getAspectRatio()F

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2b

    .line 4006
    return-void

    .line 4012
    :cond_2b
    nop

    .line 4013
    invoke-virtual {v1, p1}, Lcom/android/server/wm/PinnedStackController;->isValidPictureInPictureAspectRatio(F)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 4014
    move v2, p1

    goto :goto_36

    :cond_34
    const/high16 v2, -0x40800000    # -1.0f

    .line 4012
    :goto_36
    invoke-virtual {v1, v2}, Lcom/android/server/wm/PinnedStackController;->setAspectRatio(F)V

    .line 4015
    return-void
.end method

.method public setWindowingMode(I)V
    .registers 3
    .param p1, "windowingMode"    # I

    .line 729
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->stringName:Ljava/lang/String;

    .line 733
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_d

    .line 734
    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 735
    return-void

    .line 738
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZ)V

    .line 739
    return-void
.end method

.method setWindowingMode(IZ)V
    .registers 4
    .param p1, "preferredWindowingMode"    # I
    .param p2, "creating"    # Z

    .line 751
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZZ)V

    .line 752
    return-void
.end method

.method setWindowingMode(IZZ)V
    .registers 6
    .param p1, "preferredWindowingMode"    # I
    .param p2, "creating"    # Z
    .param p3, "deferEnsuringVisibility"    # Z

    .line 756
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityStack$FqnivnIqI6RvlcPSSeHQgLGK-Zs;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wm/-$$Lambda$ActivityStack$FqnivnIqI6RvlcPSSeHQgLGK-Zs;-><init>(Lcom/android/server/wm/ActivityStack;IZZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 761
    return-void
.end method

.method shouldIgnoreInput()Z
    .registers 3

    .line 3955
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_e

    .line 3956
    return v1

    .line 3958
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasLeanbackFeature:Z

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3959
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v0

    if-nez v0, :cond_21

    .line 3961
    return v1

    .line 3963
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method shouldResizeStackWithLaunchBounds()Z
    .registers 2

    .line 1677
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    return v0
.end method

.method shouldSleepActivities()Z
    .registers 4

    .line 4059
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 4063
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 4064
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardController;->isKeyguardGoingAway()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4065
    return v2

    .line 4068
    :cond_18
    if-eqz v0, :cond_2c

    .line 4070
    nop

    .line 4068
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4070
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isOccluding()Z

    move-result v1

    if-nez v1, :cond_2b

    const/4 v2, 0x1

    goto :goto_32

    :cond_2b
    goto :goto_32

    .line 4072
    :cond_2c
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result v2

    .line 4068
    :goto_32
    return v2
.end method

.method shouldSleepOrShutDownActivities()Z
    .registers 2

    .line 4076
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method shouldUpRecreateTaskLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .registers 10
    .param p1, "srec"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "destAffinity"    # Ljava/lang/String;

    .line 2821
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/wm/ActivityRecord;->getTaskAffinityWithUid(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2822
    .local v0, "affinity":Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz p1, :cond_6c

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v2, :cond_6c

    .line 2823
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_6c

    .line 2830
    :cond_20
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 2831
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6b

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_6b

    .line 2832
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 2834
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->inFrontOfStandardStack()Z

    move-result v3

    if-nez v3, :cond_42

    .line 2836
    return v1

    .line 2839
    :cond_42
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityStack;->getTaskBelow(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2840
    .local v3, "prevTask":Lcom/android/server/wm/Task;
    if-nez v3, :cond_60

    .line 2841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldUpRecreateTask: task not in history for "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    return v4

    .line 2844
    :cond_60
    iget-object v5, v2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6b

    .line 2846
    return v1

    .line 2849
    .end local v3    # "prevTask":Lcom/android/server/wm/Task;
    :cond_6b
    return v4

    .line 2824
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_6c
    :goto_6c
    return v1
.end method

.method startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLandroid/app/ActivityOptions;)V
    .registers 23
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "focusedTopActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "newTask"    # Z
    .param p4, "keepCurTransition"    # Z
    .param p5, "options"    # Landroid/app/ActivityOptions;

    .line 2503
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 2504
    .local v5, "rTask":Lcom/android/server/wm/Task;
    const/4 v7, 0x1

    if-eqz v4, :cond_1a

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v8

    if-nez v8, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v8, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    move v8, v7

    .line 2505
    .local v8, "allowMoveToFront":Z
    :goto_1b
    if-eq v5, v0, :cond_26

    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityStack;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v9

    if-eqz v9, :cond_24

    goto :goto_26

    :cond_24
    const/4 v9, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    move v9, v7

    .line 2507
    .local v9, "isOrhasTask":Z
    :goto_27
    iget-boolean v10, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v10, :cond_34

    if-eqz v8, :cond_34

    if-eqz v9, :cond_31

    if-eqz v3, :cond_34

    .line 2511
    :cond_31
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityStack;->positionChildAtTop(Lcom/android/server/wm/Task;)V

    .line 2513
    :cond_34
    const/4 v10, 0x0

    .line 2514
    .local v10, "task":Lcom/android/server/wm/Task;
    const-string/jumbo v11, "here"

    const-string v12, "Adding activity "

    const-string v13, "ActivityTaskManager"

    if-nez v3, :cond_74

    if-eqz v9, :cond_74

    .line 2517
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/ActivityStack;->getOccludingActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    .line 2518
    .local v14, "occludingActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v14, :cond_74

    .line 2522
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v6, :cond_6d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to task "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2523
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v7

    .line 2522
    invoke-static {v13, v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2524
    :cond_6d
    invoke-virtual {v5, v1}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/ActivityRecord;)V

    .line 2525
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2526
    return-void

    .line 2534
    .end local v14    # "occludingActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_74
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v14

    .line 2535
    .local v14, "activityTask":Lcom/android/server/wm/Task;
    if-ne v10, v14, :cond_97

    iget-object v15, v0, Lcom/android/server/wm/ActivityStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v15, v10}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v16

    add-int/lit8 v6, v16, -0x1

    if-eq v15, v6, :cond_97

    .line 2536
    iget-object v6, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v15, 0x0

    iput-boolean v15, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2537
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v6, :cond_97

    const-string/jumbo v6, "startActivity() behind front, mUserLeaving=false"

    invoke-static {v13, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    :cond_97
    move-object v6, v14

    .line 2544
    .end local v10    # "task":Lcom/android/server/wm/Task;
    .local v6, "task":Lcom/android/server/wm/Task;
    sget-boolean v10, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v10, :cond_bf

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " to stack to task "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2545
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v11

    .line 2544
    invoke-static {v13, v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2546
    :cond_bf
    invoke-virtual {v6, v1}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/ActivityRecord;)V

    .line 2548
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v10

    if-eqz v10, :cond_cb

    .line 2549
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->updateMinMaxSizeIfNeeded()V

    .line 2558
    :cond_cb
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v10

    if-eqz v10, :cond_dc

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->hasActivity()Z

    move-result v10

    if-eqz v10, :cond_d8

    goto :goto_dc

    :cond_d8
    move/from16 v11, p4

    goto/16 :goto_1ac

    :cond_dc
    :goto_dc
    if-eqz v8, :cond_1aa

    .line 2559
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2560
    .local v10, "dc":Lcom/android/server/wm/DisplayContent;
    sget-boolean v11, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v11, :cond_fc

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Prepare open transition: starting "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    :cond_fc
    iget-object v11, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v11

    const/high16 v12, 0x10000

    and-int/2addr v11, v12

    const/4 v12, 0x0

    if-eqz v11, :cond_11e

    .line 2563
    move/from16 v11, p4

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v11}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 2564
    iget-object v13, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2566
    invoke-direct {v0, v2, v12, v1, v4}, Lcom/android/server/wm/ActivityStack;->canEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v13

    if-eqz v13, :cond_14c

    .line 2568
    iput-boolean v7, v2, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    goto :goto_14c

    .line 2572
    :cond_11e
    move/from16 v11, p4

    const/4 v13, 0x6

    .line 2573
    .local v13, "transit":I
    if-eqz v3, :cond_142

    .line 2574
    iget-boolean v15, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v15, :cond_12a

    .line 2575
    const/16 v13, 0x10

    goto :goto_142

    .line 2576
    :cond_12a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->isSingleTaskInstance()Z

    move-result v15

    if-eqz v15, :cond_138

    .line 2581
    const/16 v13, 0x1c

    .line 2582
    const/4 v11, 0x0

    .end local p4    # "keepCurTransition":Z
    .local v11, "keepCurTransition":Z
    goto :goto_142

    .line 2588
    .end local v11    # "keepCurTransition":Z
    .restart local p4    # "keepCurTransition":Z
    :cond_138
    invoke-direct {v0, v2, v12, v1, v4}, Lcom/android/server/wm/ActivityStack;->canEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v15

    if-eqz v15, :cond_140

    .line 2590
    iput-boolean v7, v2, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 2592
    :cond_140
    const/16 v13, 0x8

    .line 2595
    .end local p4    # "keepCurTransition":Z
    .restart local v11    # "keepCurTransition":Z
    :cond_142
    :goto_142
    invoke-virtual {v10, v13, v11}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 2596
    iget-object v15, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v15, v15, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2598
    .end local v13    # "transit":I
    :cond_14c
    :goto_14c
    const/4 v13, 0x1

    .line 2599
    .local v13, "doShow":Z
    if-eqz v3, :cond_169

    .line 2605
    iget-object v15, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getFlags()I

    move-result v15

    const/high16 v16, 0x200000

    and-int v15, v15, v16

    if-eqz v15, :cond_173

    .line 2606
    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/ActivityStack;->resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 2607
    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    if-ne v15, v1, :cond_166

    move v15, v7

    goto :goto_167

    :cond_166
    const/4 v15, 0x0

    :goto_167
    move v13, v15

    goto :goto_173

    .line 2609
    :cond_169
    if-eqz v4, :cond_173

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v15

    const/4 v12, 0x5

    if-ne v15, v12, :cond_173

    .line 2611
    const/4 v13, 0x0

    .line 2613
    :cond_173
    :goto_173
    iget-boolean v12, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v12, :cond_189

    .line 2616
    invoke-virtual {v1, v7}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 2617
    const/4 v7, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v7, v12, v12}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2620
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    goto :goto_1a9

    .line 2621
    :cond_189
    if-eqz v13, :cond_1a9

    .line 2626
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    .line 2627
    .local v7, "prevTask":Lcom/android/server/wm/Task;
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->topActivityWithStartingWindow()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    .line 2628
    .local v12, "prev":Lcom/android/server/wm/ActivityRecord;
    if-eqz v12, :cond_1a2

    .line 2631
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v15

    if-eq v15, v7, :cond_19d

    .line 2632
    const/4 v12, 0x0

    goto :goto_1a2

    .line 2635
    :cond_19d
    iget-boolean v15, v12, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v15, :cond_1a2

    .line 2636
    const/4 v12, 0x0

    .line 2639
    :cond_1a2
    :goto_1a2
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wm/ActivityStack;->isTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v15

    invoke-virtual {v1, v12, v3, v15}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 2641
    .end local v7    # "prevTask":Lcom/android/server/wm/Task;
    .end local v10    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v12    # "prev":Lcom/android/server/wm/ActivityRecord;
    .end local v13    # "doShow":Z
    :cond_1a9
    :goto_1a9
    goto :goto_1af

    .line 2558
    .end local v11    # "keepCurTransition":Z
    .restart local p4    # "keepCurTransition":Z
    :cond_1aa
    move/from16 v11, p4

    .line 2644
    :goto_1ac
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2646
    .end local p4    # "keepCurTransition":Z
    .restart local v11    # "keepCurTransition":Z
    :goto_1af
    return-void
.end method

.method final startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;)Z
    .registers 5
    .param p1, "userLeaving"    # Z
    .param p2, "uiSleeping"    # Z
    .param p3, "resuming"    # Lcom/android/server/wm/ActivityRecord;

    .line 1369
    const-string v0, "-"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .registers 16
    .param p1, "userLeaving"    # Z
    .param p2, "uiSleeping"    # Z
    .param p3, "resuming"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "reason"    # Ljava/lang/String;

    .line 1375
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const-string v2, "ActivityTaskManager"

    if-eqz v0, :cond_34

    .line 1376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to pause when pause is already pending for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1377
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1376
    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1382
    invoke-virtual {p0, v1, p3}, Lcom/android/server/wm/ActivityStack;->completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1385
    :cond_34
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1387
    .local v0, "prev":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_45

    .line 1388
    if-nez p3, :cond_44

    .line 1389
    const-string v3, "Trying to pause when nothing is resumed"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 1392
    :cond_44
    return v1

    .line 1395
    :cond_45
    if-ne v0, p3, :cond_4d

    .line 1396
    const-string v3, "Trying to pause activity that is in process of being resumed"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    return v1

    .line 1400
    :cond_4d
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_66

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving to PAUSING: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 1401
    :cond_66
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v3, :cond_7e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start pausing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :cond_7e
    :goto_7e
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1403
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1404
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isNoHistory()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8b

    move-object v3, v0

    goto :goto_8c

    :cond_8b
    move-object v3, v4

    :goto_8c
    iput-object v3, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1406
    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 1407
    invoke-virtual {v0, v3, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 1408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startPausing after request to Destroy.. Caller="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xd

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    :cond_b3
    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string/jumbo v5, "startPausingLocked"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1412
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->touchActiveTime()V

    .line 1413
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStack;->clearLaunchTime(Lcom/android/server/wm/ActivityRecord;)V

    .line 1415
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateCpuStats()V

    .line 1417
    const/4 v3, 0x0

    .line 1418
    .local v3, "pauseImmediately":Z
    const/4 v5, 0x1

    if-eqz p3, :cond_d6

    iget-object v6, p3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v6, v6, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v6, v6, 0x4000

    if-nez v6, :cond_e8

    .line 1420
    :cond_d6
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v6

    if-eqz v6, :cond_f9

    iget-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_f9

    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1421
    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->isCrashing()Z

    move-result v6

    if-eqz v6, :cond_f9

    .line 1427
    :cond_e8
    if-eqz v0, :cond_f5

    const-string/jumbo v6, "shouldResumeWhilePausing"

    invoke-virtual {v0, v6, p1}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_f5

    move v6, v5

    goto :goto_f6

    :cond_f5
    move v6, v1

    .line 1429
    .local v6, "lastResumedCanPip":Z
    :goto_f6
    if-nez v6, :cond_f9

    .line 1430
    const/4 v3, 0x1

    .line 1434
    .end local v6    # "lastResumedCanPip":Z
    :cond_f9
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v6

    if-eqz v6, :cond_16e

    .line 1435
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v6, :cond_117

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enqueueing pending pause: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :cond_117
    :try_start_117
    iget v6, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "userLeaving="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9, p4}, Lcom/android/server/wm/EventLogTags;->writeWmPauseActivity(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    iget-object v6, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1447
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v9

    iget v10, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 1446
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/app/ActivityManagerInternal;->onPackagePausedBG(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1451
    iget-object v6, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    iget-boolean v9, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    iget v10, v0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 1452
    invoke-static {v9, p1, v10, v3}, Landroid/app/servertransaction/PauseActivityItem;->obtain(ZZIZ)Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v9

    .line 1451
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_160} :catch_161

    goto :goto_16d

    .line 1454
    :catch_161
    move-exception v6

    .line 1456
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "Exception thrown during pause"

    invoke-static {v2, v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1457
    iput-object v4, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1458
    iput-object v4, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1459
    iput-object v4, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1460
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_16d
    goto :goto_174

    .line 1462
    :cond_16e
    iput-object v4, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1463
    iput-object v4, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1464
    iput-object v4, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1469
    :goto_174
    if-nez p2, :cond_183

    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v4

    if-nez v4, :cond_183

    .line 1470
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStackSupervisor;->acquireLaunchWakelock()V

    .line 1473
    :cond_183
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_1a0

    .line 1478
    if-nez p2, :cond_18d

    .line 1479
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->pauseKeyDispatchingLocked()V

    goto :goto_196

    .line 1480
    :cond_18d
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v4, :cond_196

    .line 1481
    const-string v4, "Key dispatch not paused for screen off"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :cond_196
    :goto_196
    if-eqz v3, :cond_19c

    .line 1487
    invoke-virtual {p0, v1, p3}, Lcom/android/server/wm/ActivityStack;->completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1488
    return v1

    .line 1491
    :cond_19c
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->schedulePauseTimeout()V

    .line 1492
    return v5

    .line 1498
    :cond_1a0
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v4, :cond_1a9

    const-string v4, "Activity not running, resuming next."

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :cond_1a9
    if-nez p3, :cond_1b0

    .line 1500
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 1502
    :cond_1b0
    return v1
.end method

.method switchUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 1183
    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mCurrentUser:I

    if-ne v0, p1, :cond_5

    .line 1184
    return-void

    .line 1186
    :cond_5
    iput p1, p0, Lcom/android/server/wm/ActivityStack;->mCurrentUser:I

    .line 1188
    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->switchUser(I)V

    .line 1189
    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$JQMonqJW6GIeB5raoSYCuMnK3zg;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$ActivityStack$JQMonqJW6GIeB5raoSYCuMnK3zg;-><init>(Lcom/android/server/wm/ActivityStack;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityStack;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 1219
    return-void
.end method

.method topActivityOccludesKeyguard()Z
    .registers 2

    .line 1669
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    return v0
.end method

.method unhandledBackLocked()V
    .registers 4

    .line 3354
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3355
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performing unhandledBack(): top activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    :cond_1e
    if-eqz v0, :cond_27

    .line 3358
    const/4 v1, 0x1

    const-string/jumbo v2, "unhandled-back"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 3360
    :cond_27
    return-void
.end method

.method willActivityBeVisible(Landroid/os/IBinder;)Z
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3339
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3340
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3341
    return v1

    .line 3345
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStack;->getOccludingActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 3346
    .local v2, "occludingActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_f

    return v1

    .line 3348
    :cond_f
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_2a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "willActivityBeVisible: Returning false, would have returned true for r="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3350
    :cond_2a
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method
